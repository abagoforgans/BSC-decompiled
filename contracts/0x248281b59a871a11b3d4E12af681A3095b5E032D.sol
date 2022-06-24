contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'MetaTools', 0

const totalSupply = 10^18

const decimals = 9

const getTime = block.timestamp

const symbol = '', 0


address owner;
address stor1;
uint256 unlockTime;
address marketingAddress;
address developmentAddress;
address charityAddress;
address sub_4df181ccAddress;
address liquidityWalletAddress;
address deadAddress;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of struct allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 stor15;
array of address stor16;
uint256 stor17;
uint256 totalFees;
uint256 _taxFee;
uint256 sub_46c3a2fd;
uint256 _liquidityFee;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 _buyTaxFee;
uint256 sub_50ec2812;
uint256 _buyLiquidityFee;
uint256 _sellTaxFee;
uint256 sub_764aeb2c;
uint256 _sellLiquidityFee;
uint256 _startTimeForSwap;
uint256 _intervalMinutesForSwap;
uint256 _buyBackRangeRate;
mapping of struct _addressFees;
uint256 marketingDivisor;
uint256 sub_f12d91b0;
uint256 charityDivisor;
uint256 sub_9c530337;
uint256 sub_1e562f0c;
uint256 stor40;
uint256 minimumTokensBeforeSwapAmount;
uint256 buyBackSellLimitAmount;
uint8 stor43;
uint256 stor43; offset 8
uint256 _buyBackDivisor;
uint256 _buyBackTimeInterval;
uint8 tradingOpen;
address stor46;
address uniswapV2RouterAddress; offset 8
uint8 stor47; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint8 buyBackEnabled; offset 176
uint8 _isEnabledBuyBackAndBurn; offset 184
uint128 stor47; offset 176
uint128 stor47; offset 168
address uniswapV2PairAddress;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function buyBackSellLimit() {
    return buyBackSellLimitAmount
}

function sub_1e562f0c(?) {
    return sub_1e562f0c
}

function _sellTaxFee() {
    return _sellTaxFee
}

function deadAddress() {
    return deadAddress
}

function checkIfOnBotList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor14[address(arg1)])
}

function _taxFee() {
    return _taxFee
}

function sub_46c3a2fd(?) {
    return sub_46c3a2fd
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_4df181cc(?) {
    return sub_4df181ccAddress
}

function sub_50ec2812(?) {
    return sub_50ec2812
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function _intervalMinutesForSwap() {
    return _intervalMinutesForSwap
}

function getUnlockTime() {
    return unlockTime
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function developmentAddress() {
    return developmentAddress
}

function _buyBackRangeRate() {
    return _buyBackRangeRate
}

function _startTimeForSwap() {
    return _startTimeForSwap
}

function _liquidityFee() {
    return _liquidityFee
}

function sub_764aeb2c(?) {
    return sub_764aeb2c
}

function buyBackSellLimitAmount() {
    return buyBackSellLimitAmount
}

function _addressFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(_addressFees[arg1].field_0), 
           _addressFees[arg1].field_256,
           _addressFees[arg1].field_512,
           _addressFees[arg1].field_768,
           _addressFees[arg1].field_1024,
           _addressFees[arg1].field_1280,
           _addressFees[arg1].field_1536,
           _addressFees[arg1].field_1792,
           _addressFees[arg1].field_2048,
           _addressFees[arg1].field_2304
}

function _buyBackTimeInterval() {
    return _buyBackTimeInterval
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function owner() {
    return owner
}

function sub_9c530337(?) {
    return sub_9c530337
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwapAmount
}

function marketingAddress() {
    return marketingAddress
}

function charityAddress() {
    return charityAddress
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function _isEnabledBuyBackAndBurn() {
    return bool(_isEnabledBuyBackAndBurn)
}

function marketingDivisor() {
    return marketingDivisor
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function charityDivisor() {
    return charityDivisor
}

function _buyTaxFee() {
    return _buyTaxFee
}

function sub_f12d91b0(?) {
    return sub_f12d91b0
}

function _buyBackDivisor() {
    return _buyBackDivisor
}

function tradingOpen() {
    return bool(tradingOpen)
}

function GetSwapMinutes() {
    return (_intervalMinutesForSwap / 60)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function setTriggerAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor40 = arg1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setBuyMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9c530337 = arg1
}

function setSellMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1e562f0c = arg1
}

function setVaultFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_46c3a2fd = arg1
}

function setCharityDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    charityDivisor = arg1
}

function SetBuyBackDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _buyBackDivisor = arg1
}

function setDevelopmentDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f12d91b0 = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function setMarketingDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingDivisor = arg1
}

function setBuyBackSellLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyBackSellLimitAmount = arg1
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function setTradingOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingOpen = uint8(arg1)
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 1
}

function setPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function setNumTokensSellToAddToBuyBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumTokensBeforeSwapAmount = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = arg1
}

function setABMode(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor43.field_0) = uint8(arg1)
    emit ABMode(arg1);
}

function setCharityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    charityAddress = arg1
    stor12[address(arg1)] = 1
}

function setVaultAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4df181ccAddress = arg1
    stor12[address(arg1)] = 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingAddress = arg1
    stor12[address(arg1)] = 1
}

function setDevelopmentAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    developmentAddress = arg1
    stor12[address(arg1)] = 1
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityWalletAddress = arg1
    stor12[address(arg1)] = 1
}

function setBuyFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _buyTaxFee = arg1
    sub_50ec2812 = arg2
    _buyLiquidityFee = arg3
}

function setSellFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _sellTaxFee = arg1
    sub_764aeb2c = arg2
    _sellLiquidityFee = arg3
}

function setCooldownMode(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor43.field_8) = Mask(248, 0, arg1)
    emit CooldownMode(arg1);
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor47.field_176) = Mask(80, 0, arg1)
    emit BuyBackEnabledUpdated(arg1);
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor47.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function SetSwapMinutes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    _intervalMinutesForSwap = 60 * arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function SweepStuck(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function SetBuyBackRangeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The value must not be larger than 100.'
    _buyBackRangeRate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function setSellAddressFee(address arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _addressFees[address(arg1)].field_0 = uint8(arg2)
    _addressFees[address(arg1)].field_1792 = arg4
    _addressFees[address(arg1)].field_2304 = arg5
}

function prepareForPreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor47.field_168) = 0
    emit SwapAndLiquifyEnabledUpdated(0);
    uint8(stor43.field_0) = 0
    emit ABMode(0);
    Mask(248, 0, stor43.field_8) = 0
    emit CooldownMode(0);
    tradingOpen = 0
    _taxFee = 0
    sub_46c3a2fd = 0
    _liquidityFee = 0
    sub_9c530337 = 10^18
    sub_1e562f0c = 10^18
}

function afterPreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor47.field_168) = 1
    emit SwapAndLiquifyEnabledUpdated(1);
    uint8(stor43.field_0) = 1
    emit ABMode(1);
    Mask(248, 0, stor43.field_8) = 1
    emit CooldownMode(1);
    _taxFee = 1
    sub_46c3a2fd = 1
    _liquidityFee = 10
    sub_9c530337 = 6 * 10^15
    sub_1e562f0c = 3 * 10^15
    tradingOpen = 1
}

function setAddressFee(address arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _addressFees[address(arg1)].field_0 = uint8(arg2)
    _addressFees[address(arg1)].field_256 = arg3
    _addressFees[address(arg1)].field_768 = arg4
    _addressFees[address(arg1)].field_512 = arg5
}

function setBuyAddressFee(address arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _addressFees[address(arg1)].field_0 = uint8(arg2)
    _addressFees[address(arg1)].field_1024 = arg3
    _addressFees[address(arg1)].field_1280 = arg4
    _addressFees[address(arg1)].field_1536 = arg5
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 32, 37, 0xe045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
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

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor13[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor16.length:
        mem[0] = 16
        if stor16[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor16.length < 1:
            revert with 0, 17
        if stor16.length - 1 >= stor16.length:
            revert with 0, 50
        if idx >= stor16.length:
            revert with 0, 50
        stor16[idx] = stor16[stor16.length]
        stor10[address(arg1)] = 0
        stor13[address(arg1)] = 0
        if not stor16.length:
            revert with 0, 49
        stor16[stor16.length] = 0
        stor16.length--
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
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
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        stor14[mem[(32 * idx) + 140 len 20]] = 1
        if 168 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]] = block.timestamp + (168 * 24 * 3600)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setRouterAddressAndCreatePair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
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
    uniswapV2RouterAddress = arg1
}

function changeRouterVersion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.WETH() with:
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
    uniswapV2RouterAddress = arg1
    return ext_call.return_data[12 len 20]
}

function manualSwapAndLiquifyTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    uint8(stor47.field_160) = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 / 2 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < arg1 / 2:
        revert with 0, 17
    mem[256] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor46].field_0 = arg1 / 2
    allowance[address(this.address)][stor46].field_255 = 0
    emit Approval((arg1 / 2), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 324] = arg1 / 2
    mem[ceil32(return_data.size) + 388] = 160
    idx = 0
    s = 256
    t = ceil32(return_data.size) + 516
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 420] = this.address
    mem[ceil32(return_data.size) + 452] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 320] = arg1 / 2
    idx = 0
    s = 256
    t = ceil32(return_data.size) + 416
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit SwapTokensForETH(Mask(255, 1, arg1), Array(len=2, data=mem[ceil32(return_data.size) + 416 len 64]));
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor46].field_0 = arg1 - (arg1 / 2)
    emit Approval((arg1 - (arg1 / 2)), this.address, uniswapV2RouterAddress);
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), arg1 - (arg1 / 2), 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit SwapAndLiquifyTokens(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
    uint8(stor47.field_160) = 0
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 10^18
    t = stor17
    while idx < stor16.length:
        mem[0] = stor16[idx]
        mem[32] = 9
        if stor9[stor16[idx]] > t:
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            if stor17 / 10^18:
                return (arg1 / stor17 / 10^18)
            _83 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _83 + 68] = mem[idx + _77 + 32]
                idx = idx + 32
                continue 
            mem[_83 + 94] = 0
            revert with memory
              from mem[64]
               len _83 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 10
        if stor10[stor16[idx]] > s:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 26
            mem[_69 + 32] = 'SafeMath: division by zero'
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = 26
            mem[_85 + 32] = 'SafeMath: division by zero'
            if stor17 / 10^18:
                return (arg1 / stor17 / 10^18)
            _89 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _89 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            mem[_89 + 94] = 0
            revert with memory
              from mem[64]
               len _89 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 9
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 30
        mem[_68 + 32] = 'SafeMath: subtraction overflow'
        if stor9[stor16[idx]] > t:
            _70 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _70 + 68] = mem[idx + _68 + 32]
                idx = idx + 32
                continue 
            mem[_70 + 98] = 0
            revert with memory
              from mem[64]
               len _70 + -mem[64] + 100
        if t < stor9[stor16[idx]]:
            revert with 0, 17
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 10
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 30
        mem[_84 + 32] = 'SafeMath: subtraction overflow'
        if stor10[stor16[idx]] <= s:
            if s < stor10[stor16[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor10[stor16[idx]]
            t = t - stor9[stor16[idx]]
            continue 
        _88 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _88 + 68] = mem[idx + _84 + 32]
            idx = idx + 32
            continue 
        mem[_88 + 98] = 0
        revert with memory
          from mem[64]
           len _88 + -mem[64] + 100
    if t < stor17 / 10^18:
        if not stor17 / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / stor17 / 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / t / s)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13[address(arg1)]:
        return stor10[address(arg1)]
    mem[0] = arg1
    mem[32] = 9
    if stor9[address(arg1)] > stor17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 10^18
    t = stor17
    while idx < stor16.length:
        mem[0] = stor16[idx]
        mem[32] = 9
        if stor9[stor16[idx]] > t:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 26
            mem[_70 + 32] = 'SafeMath: division by zero'
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            if stor17 / 10^18:
                return (stor9[address(arg1)] / stor17 / 10^18)
            _88 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _88 + 68] = mem[idx + _82 + 32]
                idx = idx + 32
                continue 
            mem[_88 + 94] = 0
            revert with memory
              from mem[64]
               len _88 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 10
        if stor10[stor16[idx]] > s:
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = 26
            mem[_74 + 32] = 'SafeMath: division by zero'
            _90 = mem[64]
            mem[64] = mem[64] + 64
            mem[_90] = 26
            mem[_90 + 32] = 'SafeMath: division by zero'
            if stor17 / 10^18:
                return (stor9[address(arg1)] / stor17 / 10^18)
            _94 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _94 + 68] = mem[idx + _90 + 32]
                idx = idx + 32
                continue 
            mem[_94 + 94] = 0
            revert with memory
              from mem[64]
               len _94 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 9
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 30
        mem[_73 + 32] = 'SafeMath: subtraction overflow'
        if stor9[stor16[idx]] > t:
            _75 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _75 + 68] = mem[idx + _73 + 32]
                idx = idx + 32
                continue 
            mem[_75 + 98] = 0
            revert with memory
              from mem[64]
               len _75 + -mem[64] + 100
        if t < stor9[stor16[idx]]:
            revert with 0, 17
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 10
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if stor10[stor16[idx]] <= s:
            if s < stor10[stor16[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor10[stor16[idx]]
            t = t - stor9[stor16[idx]]
            continue 
        _93 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _93 + 68] = mem[idx + _89 + 32]
            idx = idx + 32
            continue 
        mem[_93 + 98] = 0
        revert with memory
          from mem[64]
           len _93 + -mem[64] + 100
    if t < stor17 / 10^18:
        if not stor17 / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor9[address(arg1)] / stor17 / 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor9[address(arg1)] / t / s)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor9[address(arg1)]:
        mem[0] = arg1
        mem[32] = 9
        if stor9[address(arg1)] > stor17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 10^18
        t = stor17
        while idx < stor16.length:
            mem[0] = stor16[idx]
            mem[32] = 9
            if stor9[stor16[idx]] > t:
                _73 = mem[64]
                mem[64] = mem[64] + 64
                mem[_73] = 26
                mem[_73 + 32] = 'SafeMath: division by zero'
                _85 = mem[64]
                mem[64] = mem[64] + 64
                mem[_85] = 26
                mem[_85 + 32] = 'SafeMath: division by zero'
                if stor17 / 10^18:
                    stor10[address(arg1)] = stor9[address(arg1)] / stor17 / 10^18
                    stor13[address(arg1)] = 1
                    stor16.length++
                    stor16[stor16.length] = arg1
                _91 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _91 + 68] = mem[idx + _85 + 32]
                    idx = idx + 32
                    continue 
                mem[_91 + 94] = 0
                revert with memory
                  from mem[64]
                   len _91 + -mem[64] + 100
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 10
            if stor10[stor16[idx]] > s:
                _77 = mem[64]
                mem[64] = mem[64] + 64
                mem[_77] = 26
                mem[_77 + 32] = 'SafeMath: division by zero'
                _93 = mem[64]
                mem[64] = mem[64] + 64
                mem[_93] = 26
                mem[_93 + 32] = 'SafeMath: division by zero'
                if stor17 / 10^18:
                    stor10[address(arg1)] = stor9[address(arg1)] / stor17 / 10^18
                    stor13[address(arg1)] = 1
                    stor16.length++
                    stor16[stor16.length] = arg1
                _97 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _97 + 68] = mem[idx + _93 + 32]
                    idx = idx + 32
                    continue 
                mem[_97 + 94] = 0
                revert with memory
                  from mem[64]
                   len _97 + -mem[64] + 100
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 9
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 30
            mem[_76 + 32] = 'SafeMath: subtraction overflow'
            if stor9[stor16[idx]] > t:
                _78 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _78 + 68] = mem[idx + _76 + 32]
                    idx = idx + 32
                    continue 
                mem[_78 + 98] = 0
                revert with memory
                  from mem[64]
                   len _78 + -mem[64] + 100
            if t < stor9[stor16[idx]]:
                revert with 0, 17
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 10
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 30
            mem[_92 + 32] = 'SafeMath: subtraction overflow'
            if stor10[stor16[idx]] <= s:
                if s < stor10[stor16[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor10[stor16[idx]]
                t = t - stor9[stor16[idx]]
                continue 
            _96 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _96 + 68] = mem[idx + _92 + 32]
                idx = idx + 32
                continue 
            mem[_96 + 98] = 0
            revert with memory
              from mem[64]
               len _96 + -mem[64] + 100
        if t < stor17 / 10^18:
            if not stor17 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor10[address(arg1)] = stor9[address(arg1)] / stor17 / 10^18
        else:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor10[address(arg1)] = stor9[address(arg1)] / t / s
    stor13[address(arg1)] = 1
    stor16.length++
    stor16[stor16.length] = arg1
}

function manualSwapAndLiquifyBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    uint8(stor47.field_160) = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[64] = 224
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if arg1 / 2 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < arg1 / 2:
        revert with 0, 17
    if stor13[address(this.address)]:
        mem[224] = 2
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[256] = ext_call.return_data[12 len 20]
        mem[288] = this.address
        if block.timestamp > -301:
            revert with 0, 17
        if block.timestamp + 300 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 324] = 0
        mem[ceil32(return_data.size) + 452] = 2
        idx = 0
        s = 256
        t = ceil32(return_data.size) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 388] = this.address
        mem[ceil32(return_data.size) + 420] = block.timestamp + 300
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg1 / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 320] = arg1 / 2
        mem[ceil32(return_data.size) + 352] = 64
        mem[ceil32(return_data.size) + 384] = 2
        idx = 0
        s = 256
        t = ceil32(return_data.size) + 416
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit SwapETHForTokens(Mask(255, 1, arg1), Array(len=2, data=mem[ceil32(return_data.size) + 416 len 64]));
        if stor13[address(this.address)]:
            if stor10[address(this.address)] > stor10[address(this.address)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor10[address(this.address)] < stor10[address(this.address)]:
                revert with 0, 17
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor46].field_0 = 0
            emit Approval(0, this.address, uniswapV2RouterAddress);
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value arg1 - (arg1 / 2) wei
                 gas gas_remaining wei
                args address(this.address), 0, 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
        else:
            mem[0] = this.address
            mem[32] = 9
            if stor9[address(this.address)] > stor17:
                revert with 0, 'Amount must be less than total reflections'
            idx = 0
            s = 10^18
            t = stor17
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 9
                if stor9[stor16[idx]] > t:
                    _2815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2815] = 26
                    mem[_2815 + 32] = 'SafeMath: division by zero'
                    _2875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2875] = 26
                    mem[_2875 + 32] = 'SafeMath: division by zero'
                    if not stor17 / 10^18:
                        _2889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2889 + 68] = mem[idx + _2875 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2889 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2889 + -mem[64] + 100
                    _3004 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3004] = 30
                    mem[_3004 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[address(this.address)] > stor9[address(this.address)] / stor17 / 10^18:
                        _3033 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3033 + 68] = mem[idx + _3004 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3033 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3033 + -mem[64] + 100
                else:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _2826 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2826] = 30
                        mem[_2826 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _2836 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2836 + 68] = mem[idx + _2826 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2836 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2836 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _2890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2890] = 30
                        mem[_2890 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _2938 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2938 + 68] = mem[idx + _2890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2938 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2938 + -mem[64] + 100
                    _2827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2827] = 26
                    mem[_2827 + 32] = 'SafeMath: division by zero'
                    _2891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2891] = 26
                    mem[_2891 + 32] = 'SafeMath: division by zero'
                    if not stor17 / 10^18:
                        _2939 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2939 + 68] = mem[idx + _2891 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2939 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2939 + -mem[64] + 100
                    _3034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3034] = 30
                    mem[_3034 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[address(this.address)] > stor9[address(this.address)] / stor17 / 10^18:
                        _3060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3060 + 68] = mem[idx + _3034 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3060 + -mem[64] + 100
                ('le', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor10', 10))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)))
                if stor9[address(this.address)] / stor17 / 10^18 < stor10[address(this.address)]:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)]
                emit Approval(((stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)]), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg1 - (arg1 / 2) wei
                     gas gas_remaining wei
                    args address(this.address), (stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)], 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)], arg1 - (arg1 / 2));
                uint8(stor47.field_160) = 0
            if t < stor17 / 10^18:
                if not stor17 / 10^18:
                    idx = 32
                    revert with 0, 'SafeMath: division by zero', 0
                if stor10[address(this.address)] > stor9[address(this.address)] / stor17 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor9[address(this.address)] / stor17 / 10^18 < stor10[address(this.address)]:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)]
                emit Approval(((stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)]), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg1 - (arg1 / 2) wei
                     gas gas_remaining wei
                    args address(this.address), (stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)], 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / stor17 / 10^18) - stor10[address(this.address)], arg1 - (arg1 / 2));
            else:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    idx = 32
                    revert with 0, 'SafeMath: division by zero', 0
                if stor10[address(this.address)] > stor9[address(this.address)] / t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor9[address(this.address)] / t / s < stor10[address(this.address)]:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / t / s) - stor10[address(this.address)]
                emit Approval(((stor9[address(this.address)] / t / s) - stor10[address(this.address)]), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg1 - (arg1 / 2) wei
                     gas gas_remaining wei
                    args address(this.address), (stor9[address(this.address)] / t / s) - stor10[address(this.address)], 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / t / s) - stor10[address(this.address)], arg1 - (arg1 / 2));
    else:
        mem[0] = this.address
        mem[32] = 9
        if stor9[address(this.address)] > stor17:
            revert with 0, 'Amount must be less than total reflections'
        idx = 0
        s = 10^18
        t = stor17
        while idx < stor16.length:
            mem[0] = stor16[idx]
            mem[32] = 9
            if stor9[stor16[idx]] > t:
                _980 = mem[64]
                mem[64] = mem[64] + 64
                mem[_980] = 26
                mem[_980 + 32] = 'SafeMath: division by zero'
                _998 = mem[64]
                mem[64] = mem[64] + 64
                mem[_998] = 26
                mem[_998 + 32] = 'SafeMath: division by zero'
                if not stor17 / 10^18:
                    _1006 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1006 + 68] = mem[idx + _998 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1006 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1006 + -mem[64] + 100
                _1040 = mem[64]
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_1040]:
                    revert with 0, 50
                mem[_1040 + 32] = ext_call.return_data[12 len 20]
                if 1 >= mem[_1040]:
                    revert with 0, 50
                mem[_1040 + 64] = this.address
                if block.timestamp > -301:
                    revert with 0, 17
                if block.timestamp + 300 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1040 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[_1040 + ceil32(return_data.size) + 100] = 0
                mem[_1040 + ceil32(return_data.size) + 132] = 128
                mem[_1040 + ceil32(return_data.size) + 228] = mem[_1040]
                idx = 0
                s = _1040 + 32
                t = _1040 + ceil32(return_data.size) + 260
                while idx < mem[_1040]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1040 + ceil32(return_data.size) + 164] = this.address
                mem[_1040 + ceil32(return_data.size) + 196] = block.timestamp + 300
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                   value arg1 / 2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1040 + ceil32(return_data.size) + (32 * mem[_1040]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1953 = mem[64]
                mem[mem[64]] = arg1 / 2
                mem[mem[64] + 32] = 64
                _1960 = mem[_1040]
                mem[mem[64] + 64] = mem[_1040]
                idx = 0
                s = _1040 + 32
                t = mem[64] + 96
                while idx < _1960:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                      mem[mem[64] len _1953 + (32 * _1960) + -mem[64] + 96],
                mem[0] = this.address
                if stor13[address(this.address)]:
                    mem[32] = 10
                    _2823 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2823] = 30
                    mem[_2823 + 32] = 'SafeMath: subtraction overflow'
                    if stor9[address(this.address)] / stor17 / 10^18 > stor10[address(this.address)]:
                        _2834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2834 + 68] = mem[idx + _2823 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2834 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2834 + -mem[64] + 100
                    if stor10[address(this.address)] < stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18)
                    emit Approval((stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18)), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18), 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18), arg1 - (arg1 / 2));
                else:
                    mem[32] = 9
                    if stor9[address(this.address)] > stor17:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 10^18
                    t = stor17
                    while idx < stor16.length:
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        if stor9[stor16[idx]] > t:
                            _3663 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3663] = 26
                            mem[_3663 + 32] = 'SafeMath: division by zero'
                            _3712 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3712] = 26
                            mem[_3712 + 32] = 'SafeMath: division by zero'
                            if not stor17 / 10^18:
                                _3738 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3738 + 68] = mem[idx + _3712 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3738 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _3738 + -mem[64] + 100
                            _3831 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3831] = 30
                            mem[_3831 + 32] = 'SafeMath: subtraction overflow'
                            if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                                _3849 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3849 + 68] = mem[idx + _3831 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3849 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3849 + -mem[64] + 100
                        else:
                            if idx >= stor16.length:
                                revert with 0, 50
                            mem[0] = stor16[idx]
                            mem[32] = 10
                            if stor10[stor16[idx]] <= s:
                                if idx >= stor16.length:
                                    revert with 0, 50
                                mem[0] = stor16[idx]
                                mem[32] = 9
                                _3677 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3677] = 30
                                mem[_3677 + 32] = 'SafeMath: subtraction overflow'
                                if stor9[stor16[idx]] > t:
                                    _3683 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3683 + 68] = mem[idx + _3677 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3683 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3683 + -mem[64] + 100
                                if t < stor9[stor16[idx]]:
                                    revert with 0, 17
                                if idx >= stor16.length:
                                    revert with 0, 50
                                mem[0] = stor16[idx]
                                mem[32] = 10
                                _3739 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3739] = 30
                                mem[_3739 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[stor16[idx]] <= s:
                                    if s < stor10[stor16[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor10[stor16[idx]]
                                    t = t - stor9[stor16[idx]]
                                    continue 
                                _3756 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3756 + 68] = mem[idx + _3739 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3756 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3756 + -mem[64] + 100
                            _3678 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3678] = 26
                            mem[_3678 + 32] = 'SafeMath: division by zero'
                            _3740 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3740] = 26
                            mem[_3740 + 32] = 'SafeMath: division by zero'
                            if not stor17 / 10^18:
                                _3757 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3757 + 68] = mem[idx + _3740 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3757 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _3757 + -mem[64] + 100
                            _3850 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3850] = 30
                            mem[_3850 + 32] = 'SafeMath: subtraction overflow'
                            if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                                _3873 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3873 + 68] = mem[idx + _3850 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3873 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3873 + -mem[64] + 100
                        ('le', ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)))
                        if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / stor17 / 10^18:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor46].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value arg1 - (arg1 / 2) wei
                             gas gas_remaining wei
                            args address(this.address), 0, 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
                        uint8(stor47.field_160) = 0
                    _3617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3617] = 26
                    mem[_3617 + 32] = 'SafeMath: division by zero'
                    if t < stor17 / 10^18:
                        _3694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3694] = 26
                        mem[_3694 + 32] = 'SafeMath: division by zero'
                        _3782 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3782] = 26
                        mem[_3782 + 32] = 'SafeMath: division by zero'
                        if not stor17 / 10^18:
                            _3804 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _3804 + 68] = mem[s + _3782 + 32]
                                s = s + 32
                                continue 
                            mem[_3804 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3804 + -mem[64] + 100
                        _3890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3890] = 30
                        mem[_3890 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                            _3908 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3908 + 68] = mem[idx + _3890 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3908 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3908 + -mem[64] + 100
                        if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / stor17 / 10^18:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor46].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value arg1 - (arg1 / 2) wei
                             gas gas_remaining wei
                            args address(this.address), 0, 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
                    else:
                        _3693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3693] = 26
                        mem[_3693 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _3703 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3703 + 68] = mem[idx + _3693 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3703 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3703 + -mem[64] + 100
                        _3781 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3781] = 26
                        mem[_3781 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _3803 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _3803 + 68] = mem[s + _3781 + 32]
                                s = s + 32
                                continue 
                            mem[_3803 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3803 + -mem[64] + 100
                        _3889 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3889] = 30
                        mem[_3889 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / t / s:
                            _3907 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3907 + 68] = mem[idx + _3889 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3907 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3907 + -mem[64] + 100
                        if stor9[address(this.address)] / t / s < stor9[address(this.address)] / stor17 / 10^18:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18)
                        emit Approval(((stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value arg1 - (arg1 / 2) wei
                             gas gas_remaining wei
                            args address(this.address), (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18), 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18), arg1 - (arg1 / 2));
            else:
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 10
                if stor10[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    _984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_984] = 30
                    mem[_984 + 32] = 'SafeMath: subtraction overflow'
                    if stor9[stor16[idx]] > t:
                        _987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _987 + 68] = mem[idx + _984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_987 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _987 + -mem[64] + 100
                    if t < stor9[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    _1007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1007] = 30
                    mem[_1007 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[stor16[idx]] <= s:
                        if s < stor10[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor10[stor16[idx]]
                        t = t - stor9[stor16[idx]]
                        continue 
                    _1013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1013 + 68] = mem[idx + _1007 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1013 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1013 + -mem[64] + 100
                _985 = mem[64]
                mem[64] = mem[64] + 64
                mem[_985] = 26
                mem[_985 + 32] = 'SafeMath: division by zero'
                _1008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1008] = 26
                mem[_1008 + 32] = 'SafeMath: division by zero'
                if not stor17 / 10^18:
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1014 + 68] = mem[idx + _1008 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                _1052 = mem[64]
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_1052]:
                    revert with 0, 50
                mem[_1052 + 32] = ext_call.return_data[12 len 20]
                if 1 >= mem[_1052]:
                    revert with 0, 50
                mem[_1052 + 64] = this.address
                if block.timestamp > -301:
                    revert with 0, 17
                if block.timestamp + 300 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1052 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[_1052 + ceil32(return_data.size) + 100] = 0
                mem[_1052 + ceil32(return_data.size) + 132] = 128
                mem[_1052 + ceil32(return_data.size) + 228] = mem[_1052]
                idx = 0
                s = _1052 + 32
                t = _1052 + ceil32(return_data.size) + 260
                while idx < mem[_1052]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1052 + ceil32(return_data.size) + 164] = this.address
                mem[_1052 + ceil32(return_data.size) + 196] = block.timestamp + 300
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg1 / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 300, mem[_1052 + ceil32(return_data.size) + 228 len (32 * mem[_1052]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1052 + ceil32(return_data.size) + 96] = arg1 / 2
                mem[_1052 + ceil32(return_data.size) + 128] = 64
                mem[_1052 + ceil32(return_data.size) + 160] = mem[_1052]
                idx = 0
                s = _1052 + 32
                t = _1052 + ceil32(return_data.size) + 192
                while idx < mem[_1052]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                      mem[mem[64] len _1052 + ceil32(return_data.size) + (32 * mem[_1052]) + -mem[64] + 192],
                mem[0] = this.address
                if stor13[address(this.address)]:
                    mem[32] = 10
                    _2825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2825] = 30
                    mem[_2825 + 32] = 'SafeMath: subtraction overflow'
                    if stor9[address(this.address)] / stor17 / 10^18 > stor10[address(this.address)]:
                        _2835 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2835 + 68] = mem[idx + _2825 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2835 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2835 + -mem[64] + 100
                    if stor10[address(this.address)] < stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18)
                    emit Approval((stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18)), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18), 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18), arg1 - (arg1 / 2));
                else:
                    mem[32] = 9
                    if stor9[address(this.address)] > stor17:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 10^18
                    t = stor17
                    while idx < stor16.length:
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        if stor9[stor16[idx]] > t:
                            _3664 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3664] = 26
                            mem[_3664 + 32] = 'SafeMath: division by zero'
                            _3715 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3715] = 26
                            mem[_3715 + 32] = 'SafeMath: division by zero'
                            if not stor17 / 10^18:
                                _3742 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3742 + 68] = mem[idx + _3715 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3742 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _3742 + -mem[64] + 100
                            _3834 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3834] = 30
                            mem[_3834 + 32] = 'SafeMath: subtraction overflow'
                            if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                                _3851 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3851 + 68] = mem[idx + _3834 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3851 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3851 + -mem[64] + 100
                        else:
                            if idx >= stor16.length:
                                revert with 0, 50
                            mem[0] = stor16[idx]
                            mem[32] = 10
                            if stor10[stor16[idx]] <= s:
                                if idx >= stor16.length:
                                    revert with 0, 50
                                mem[0] = stor16[idx]
                                mem[32] = 9
                                _3679 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3679] = 30
                                mem[_3679 + 32] = 'SafeMath: subtraction overflow'
                                if stor9[stor16[idx]] > t:
                                    _3684 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3684 + 68] = mem[idx + _3679 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3684 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3684 + -mem[64] + 100
                                if t < stor9[stor16[idx]]:
                                    revert with 0, 17
                                if idx >= stor16.length:
                                    revert with 0, 50
                                mem[0] = stor16[idx]
                                mem[32] = 10
                                _3743 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3743] = 30
                                mem[_3743 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[stor16[idx]] <= s:
                                    if s < stor10[stor16[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor10[stor16[idx]]
                                    t = t - stor9[stor16[idx]]
                                    continue 
                                _3759 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3759 + 68] = mem[idx + _3743 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3759 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3759 + -mem[64] + 100
                            _3680 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3680] = 26
                            mem[_3680 + 32] = 'SafeMath: division by zero'
                            _3744 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3744] = 26
                            mem[_3744 + 32] = 'SafeMath: division by zero'
                            if not stor17 / 10^18:
                                _3760 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3760 + 68] = mem[idx + _3744 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3760 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _3760 + -mem[64] + 100
                            _3852 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3852] = 30
                            mem[_3852 + 32] = 'SafeMath: subtraction overflow'
                            if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                                _3876 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3876 + 68] = mem[idx + _3852 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3876 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3876 + -mem[64] + 100
                        ('le', ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)))
                        if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / stor17 / 10^18:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor46].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value arg1 - (arg1 / 2) wei
                             gas gas_remaining wei
                            args address(this.address), 0, 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
                        uint8(stor47.field_160) = 0
                    _3620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3620] = 26
                    mem[_3620 + 32] = 'SafeMath: division by zero'
                    if t < stor17 / 10^18:
                        _3696 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3696] = 26
                        mem[_3696 + 32] = 'SafeMath: division by zero'
                        _3784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3784] = 26
                        mem[_3784 + 32] = 'SafeMath: division by zero'
                        if not stor17 / 10^18:
                            _3807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _3807 + 68] = mem[s + _3784 + 32]
                                s = s + 32
                                continue 
                            mem[_3807 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3807 + -mem[64] + 100
                        _3892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3892] = 30
                        mem[_3892 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                            _3911 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3911 + 68] = mem[idx + _3892 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3911 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3911 + -mem[64] + 100
                        if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / stor17 / 10^18:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor46].field_0 = 0
                        emit Approval(0, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value arg1 - (arg1 / 2) wei
                             gas gas_remaining wei
                            args address(this.address), 0, 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
                    else:
                        _3695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3695] = 26
                        mem[_3695 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _3704 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3704 + 68] = mem[idx + _3695 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3704 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3704 + -mem[64] + 100
                        _3783 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3783] = 26
                        mem[_3783 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _3806 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _3806 + 68] = mem[s + _3783 + 32]
                                s = s + 32
                                continue 
                            mem[_3806 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3806 + -mem[64] + 100
                        _3891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3891] = 30
                        mem[_3891 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / t / s:
                            _3910 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3910 + 68] = mem[idx + _3891 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3910 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3910 + -mem[64] + 100
                        if stor9[address(this.address)] / t / s < stor9[address(this.address)] / stor17 / 10^18:
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18)
                        emit Approval(((stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value arg1 - (arg1 / 2) wei
                             gas gas_remaining wei
                            args address(this.address), (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18), 0, 0, owner, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18), arg1 - (arg1 / 2));
            uint8(stor47.field_160) = 0
        _971 = mem[64]
        mem[64] = mem[64] + 64
        mem[_971] = 26
        mem[_971 + 32] = 'SafeMath: division by zero'
        if t >= stor17 / 10^18:
            _990 = mem[64]
            mem[64] = mem[64] + 64
            mem[_990] = 26
            mem[_990 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _1020 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1020] = 26
            mem[_1020 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            _1074 = mem[64]
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_1074]:
                revert with 0, 50
            mem[_1074 + 32] = ext_call.return_data[12 len 20]
            if 1 >= mem[_1074]:
                revert with 0, 50
            mem[_1074 + 64] = this.address
            if block.timestamp > -301:
                revert with 0, 17
            if block.timestamp + 300 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1074 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[_1074 + ceil32(return_data.size) + 100] = 0
            mem[_1074 + ceil32(return_data.size) + 132] = 128
            mem[_1074 + ceil32(return_data.size) + 228] = mem[_1074]
            idx = 0
            u = _1074 + 32
            v = _1074 + ceil32(return_data.size) + 260
            while idx < mem[_1074]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_1074 + ceil32(return_data.size) + 164] = this.address
            mem[_1074 + ceil32(return_data.size) + 196] = block.timestamp + 300
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 300, mem[_1074 + ceil32(return_data.size) + 228 len (32 * mem[_1074]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1074 + ceil32(return_data.size) + 96] = arg1 / 2
            mem[_1074 + ceil32(return_data.size) + 128] = 64
            mem[_1074 + ceil32(return_data.size) + 160] = mem[_1074]
            idx = 0
            u = _1074 + 32
            v = _1074 + ceil32(return_data.size) + 192
            while idx < mem[_1074]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                  mem[mem[64] len _1074 + ceil32(return_data.size) + (32 * mem[_1074]) + -mem[64] + 192],
            if stor13[address(this.address)]:
                if stor9[address(this.address)] / t / s > stor10[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor10[address(this.address)] < stor9[address(this.address)] / t / s:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor46].field_0 = stor10[address(this.address)] - (stor9[address(this.address)] / t / s)
                emit Approval((stor10[address(this.address)] - (stor9[address(this.address)] / t / s)), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg1 - (arg1 / 2) wei
                     gas gas_remaining wei
                    args address(this.address), stor10[address(this.address)] - (stor9[address(this.address)] / t / s), 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquifyBNB(Mask(255, 1, arg1), stor10[address(this.address)] - (stor9[address(this.address)] / t / s), arg1 - (arg1 / 2));
            else:
                mem[0] = this.address
                mem[32] = 9
                if stor9[address(this.address)] > stor17:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                u = 10^18
                v = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > v:
                        _3661 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3661] = 26
                        mem[_3661 + 32] = 'SafeMath: division by zero'
                        _3706 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3706] = 26
                        mem[_3706 + 32] = 'SafeMath: division by zero'
                        if not stor17 / 10^18:
                            _3730 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3730 + 68] = mem[idx + _3706 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3730 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3730 + -mem[64] + 100
                        _3825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3825] = 30
                        mem[_3825 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / t / s > stor9[address(this.address)] / stor17 / 10^18:
                            _3845 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3845 + 68] = mem[idx + _3825 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3845 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3845 + -mem[64] + 100
                    else:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        if stor10[stor16[idx]] <= u:
                            if idx >= stor16.length:
                                revert with 0, 50
                            mem[0] = stor16[idx]
                            mem[32] = 9
                            _3673 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3673] = 30
                            mem[_3673 + 32] = 'SafeMath: subtraction overflow'
                            if stor9[stor16[idx]] > v:
                                _3681 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3681 + 68] = mem[idx + _3673 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3681 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3681 + -mem[64] + 100
                            if v < stor9[stor16[idx]]:
                                revert with 0, 17
                            if idx >= stor16.length:
                                revert with 0, 50
                            mem[0] = stor16[idx]
                            mem[32] = 10
                            _3731 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3731] = 30
                            mem[_3731 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[stor16[idx]] <= u:
                                if u < stor10[stor16[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = u - stor10[stor16[idx]]
                                v = v - stor9[stor16[idx]]
                                continue 
                            _3750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3750 + 68] = mem[idx + _3731 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3750 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3750 + -mem[64] + 100
                        _3674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3674] = 26
                        mem[_3674 + 32] = 'SafeMath: division by zero'
                        _3732 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3732] = 26
                        mem[_3732 + 32] = 'SafeMath: division by zero'
                        if not stor17 / 10^18:
                            _3751 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3751 + 68] = mem[idx + _3732 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3751 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3751 + -mem[64] + 100
                        _3846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3846] = 30
                        mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / t / s > stor9[address(this.address)] / stor17 / 10^18:
                            _3867 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3867 + 68] = mem[idx + _3846 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3867 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3867 + -mem[64] + 100
                    ('le', ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('var', 2), ('var', 1))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)))
                    if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / t / s:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s)
                    emit Approval(((stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s)), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), (stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s), 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s), arg1 - (arg1 / 2));
                    uint8(stor47.field_160) = 0
                if v < stor17 / 10^18:
                    if not stor17 / 10^18:
                        idx = 32
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor9[address(this.address)] / t / s > stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / t / s:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s)
                    emit Approval(((stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s)), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), (stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s), 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / stor17 / 10^18) - (stor9[address(this.address)] / t / s), arg1 - (arg1 / 2));
                else:
                    if not u:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not v / u:
                        idx = 32
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor9[address(this.address)] / t / s > stor9[address(this.address)] / v / u:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor9[address(this.address)] / v / u < stor9[address(this.address)] / t / s:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / v / u) - (stor9[address(this.address)] / t / s)
                    emit Approval(((stor9[address(this.address)] / v / u) - (stor9[address(this.address)] / t / s)), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), (stor9[address(this.address)] / v / u) - (stor9[address(this.address)] / t / s), 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / v / u) - (stor9[address(this.address)] / t / s), arg1 - (arg1 / 2));
        else:
            _991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_991] = 26
            mem[_991 + 32] = 'SafeMath: division by zero'
            _1021 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1021] = 26
            mem[_1021 + 32] = 'SafeMath: division by zero'
            if not stor17 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            _1077 = mem[64]
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_1077]:
                revert with 0, 50
            mem[_1077 + 32] = ext_call.return_data[12 len 20]
            if 1 >= mem[_1077]:
                revert with 0, 50
            mem[_1077 + 64] = this.address
            if block.timestamp > -301:
                revert with 0, 17
            if block.timestamp + 300 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[_1077 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[_1077 + ceil32(return_data.size) + 100] = 0
            mem[_1077 + ceil32(return_data.size) + 132] = 128
            mem[_1077 + ceil32(return_data.size) + 228] = mem[_1077]
            idx = 0
            s = _1077 + 32
            t = _1077 + ceil32(return_data.size) + 260
            while idx < mem[_1077]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1077 + ceil32(return_data.size) + 164] = this.address
            mem[_1077 + ceil32(return_data.size) + 196] = block.timestamp + 300
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
               value arg1 / 2 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1077 + ceil32(return_data.size) + (32 * mem[_1077]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1952 = mem[64]
            mem[mem[64]] = arg1 / 2
            mem[mem[64] + 32] = 64
            _1959 = mem[_1077]
            mem[mem[64] + 64] = mem[_1077]
            idx = 0
            s = _1077 + 32
            t = mem[64] + 96
            while idx < _1959:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                  mem[mem[64] len _1952 + (32 * _1959) + -mem[64] + 96],
            if stor13[address(this.address)]:
                if stor9[address(this.address)] / stor17 / 10^18 > stor10[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor10[address(this.address)] < stor9[address(this.address)] / stor17 / 10^18:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor46].field_0 = stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18)
                emit Approval((stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18)), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg1 - (arg1 / 2) wei
                     gas gas_remaining wei
                    args address(this.address), stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18), 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquifyBNB(Mask(255, 1, arg1), stor10[address(this.address)] - (stor9[address(this.address)] / stor17 / 10^18), arg1 - (arg1 / 2));
            else:
                mem[0] = this.address
                mem[32] = 9
                if stor9[address(this.address)] > stor17:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _3662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3662] = 26
                        mem[_3662 + 32] = 'SafeMath: division by zero'
                        _3709 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3709] = 26
                        mem[_3709 + 32] = 'SafeMath: division by zero'
                        if not stor17 / 10^18:
                            _3734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3734 + 68] = mem[idx + _3709 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3734 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3734 + -mem[64] + 100
                        _3828 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3828] = 30
                        mem[_3828 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                            _3847 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3847 + 68] = mem[idx + _3828 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3847 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3847 + -mem[64] + 100
                    else:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        if stor10[stor16[idx]] <= s:
                            if idx >= stor16.length:
                                revert with 0, 50
                            mem[0] = stor16[idx]
                            mem[32] = 9
                            _3675 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3675] = 30
                            mem[_3675 + 32] = 'SafeMath: subtraction overflow'
                            if stor9[stor16[idx]] > t:
                                _3682 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3682 + 68] = mem[idx + _3675 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3682 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3682 + -mem[64] + 100
                            if t < stor9[stor16[idx]]:
                                revert with 0, 17
                            if idx >= stor16.length:
                                revert with 0, 50
                            mem[0] = stor16[idx]
                            mem[32] = 10
                            _3735 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3735] = 30
                            mem[_3735 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[stor16[idx]] <= s:
                                if s < stor10[stor16[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor10[stor16[idx]]
                                t = t - stor9[stor16[idx]]
                                continue 
                            _3753 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3753 + 68] = mem[idx + _3735 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3753 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3753 + -mem[64] + 100
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 26
                        mem[_3676 + 32] = 'SafeMath: division by zero'
                        _3736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3736] = 26
                        mem[_3736 + 32] = 'SafeMath: division by zero'
                        if not stor17 / 10^18:
                            _3754 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3754 + 68] = mem[idx + _3736 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3754 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3754 + -mem[64] + 100
                        _3848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3848] = 30
                        mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                            _3870 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3870 + 68] = mem[idx + _3848 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3870 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3870 + -mem[64] + 100
                    ('le', ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'address'), ('name', 'stor9', 9))), ('div', ('stor', ('name', 'stor17', 17)), 1000000000000000000)))
                    if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), 0, 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
                    uint8(stor47.field_160) = 0
                if t < stor17 / 10^18:
                    if not stor17 / 10^18:
                        idx = 32
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor9[address(this.address)] / stor17 / 10^18 < stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = 0
                    emit Approval(0, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), 0, 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t / s:
                        idx = 32
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor9[address(this.address)] / stor17 / 10^18 > stor9[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor9[address(this.address)] / t / s < stor9[address(this.address)] / stor17 / 10^18:
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor46].field_0 = (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18)
                    emit Approval(((stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18)), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg1 - (arg1 / 2) wei
                         gas gas_remaining wei
                        args address(this.address), (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18), 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquifyBNB(Mask(255, 1, arg1), (stor9[address(this.address)] / t / s) - (stor9[address(this.address)] / stor17 / 10^18), arg1 - (arg1 / 2));
    uint8(stor47.field_160) = 0
}

function airdrop(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 13
    if stor13[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7439] = 26
                        mem[_7439 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            _7723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7723] = 30
                            mem[_7723 + 32] = 'SafeMath: subtraction overflow'
                            _7908 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7908] = 30
                            mem[_7908 + 32] = 'SafeMath: subtraction overflow'
                            _8390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8390] = 30
                            mem[_8390 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 9
                            _9524 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9524] = 30
                            mem[_9524 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _9846 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9846 + 68] = mem[idx + _9524 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9846 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9846 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10753 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10753] = 30
                            mem[_10753 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _11064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11064 + 68] = mem[idx + _10753 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11064 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11064 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7837] = 30
                        mem[_7837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _7907 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7907 + 68] = mem[idx + _7837 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7907 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7907 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8244] = 30
                        mem[_8244 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8389 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8389 + 68] = mem[idx + _8244 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8389 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8389 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9042] = 30
                        mem[_9042 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9254 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9254 + 68] = mem[idx + _9042 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9254 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9254 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10406 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10406] = 30
                        mem[_10406 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _10752 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10752 + 68] = mem[idx + _10406 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10752 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10752 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _11734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11734] = 30
                        mem[_11734 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12061 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12061 + 68] = mem[idx + _11734 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12061 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12061 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7470] = 30
                        mem[_7470 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7479 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7479 + 68] = mem[idx + _7470 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7479 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7479 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7575] = 30
                        mem[_7575 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7591 + 68] = mem[idx + _7575 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7591 + -mem[64] + 100
                    _7471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7471] = 26
                    mem[_7471 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        _7751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7751] = 30
                        mem[_7751 + 32] = 'SafeMath: subtraction overflow'
                        _7971 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7971] = 30
                        mem[_7971 + 32] = 'SafeMath: subtraction overflow'
                        _8561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8561] = 30
                        mem[_8561 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 9
                        _9847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9847] = 30
                        mem[_9847 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _10105 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10105 + 68] = mem[idx + _9847 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10105 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10105 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11066 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11066] = 30
                        mem[_11066 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _11363 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11363 + 68] = mem[idx + _11066 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11363 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11363 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7909 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7909] = 30
                    mem[_7909 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _7970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7970 + 68] = mem[idx + _7909 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7970 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7970 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    _8391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8391] = 30
                    mem[_8391 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _8560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8560 + 68] = mem[idx + _8391 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8560 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8560 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    _9255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9255] = 30
                    mem[_9255 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _9525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9525 + 68] = mem[idx + _9255 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9525 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9525 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _10755 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10755] = 30
                    mem[_10755 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _11065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11065 + 68] = mem[idx + _10755 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11065 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11065 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _12063 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12063] = 30
                    mem[_12063 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _12329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _12329 + 68] = mem[idx + _12063 + 32]
                        idx = idx + 32
                        continue 
                    mem[_12329 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _12329 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor17 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor17 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
            else:
                if arg1 and stor23 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor23 / arg1 != stor23:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor23 / 100:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7438] = 26
                        mem[_7438 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor23 / 100:
                                _7722 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7722] = 30
                                mem[_7722 + 32] = 'SafeMath: subtraction overflow'
                                _7904 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7904] = 30
                                mem[_7904 + 32] = 'SafeMath: subtraction overflow'
                                _8384 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8384] = 30
                                mem[_8384 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 9
                                _9521 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9521] = 30
                                mem[_9521 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _9840 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9840 + 68] = mem[idx + _9521 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9840 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9840 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10746 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10746] = 30
                                mem[_10746 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11057 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11057 + 68] = mem[idx + _10746 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11057 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11057 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7833 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7833] = 30
                            mem[_7833 + 32] = 'SafeMath: subtraction overflow'
                            _8238 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8238] = 30
                            mem[_8238 + 32] = 'SafeMath: subtraction overflow'
                            _9035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9035] = 30
                            mem[_9035 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                _9249 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9249 + 68] = mem[idx + _9035 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9249 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9249 + -mem[64] + 100
                            if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10400 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10400] = 30
                            mem[_10400 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10745 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10745 + 68] = mem[idx + _10400 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10745 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10745 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11725 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11725] = 30
                            mem[_11725 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12052 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12052 + 68] = mem[idx + _11725 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12052 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12052 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _7832 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7832] = 30
                            mem[_7832 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _7903 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7903 + 68] = mem[idx + _7832 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7903 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7903 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8236 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8236] = 30
                            mem[_8236 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8383 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8383 + 68] = mem[idx + _8236 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8383 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8383 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9033] = 30
                            mem[_9033 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9248 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9248 + 68] = mem[idx + _9033 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9248 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9248 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10399 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10399] = 30
                            mem[_10399 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _10744 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10744 + 68] = mem[idx + _10399 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10744 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10744 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _11723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11723] = 30
                            mem[_11723 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12051 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12051 + 68] = mem[idx + _11723 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12051 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12051 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8088] = 30
                        mem[_8088 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8235 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8235 + 68] = mem[idx + _8088 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8235 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8235 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8797 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8797] = 30
                        mem[_8797 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9032 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9032 + 68] = mem[idx + _8797 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9032 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9032 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9838] = 30
                        mem[_9838 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _10096 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10096 + 68] = mem[idx + _9838 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10096 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10096 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11358] = 30
                        mem[_11358 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11722 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11722 + 68] = mem[idx + _11358 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11722 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11722 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12716] = 30
                        mem[_12716 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13033 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13033 + 68] = mem[idx + _12716 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13033 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13033 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7468 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7468] = 30
                        mem[_7468 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7478 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7478 + 68] = mem[idx + _7468 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7478 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7478 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7573] = 30
                        mem[_7573 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7589 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7589 + 68] = mem[idx + _7573 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7589 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7589 + -mem[64] + 100
                    _7469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7469] = 26
                    mem[_7469 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor23 / 100:
                            _7750 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7750] = 30
                            mem[_7750 + 32] = 'SafeMath: subtraction overflow'
                            _7969 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7969] = 30
                            mem[_7969 + 32] = 'SafeMath: subtraction overflow'
                            _8559 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8559] = 30
                            mem[_8559 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 9
                            _9841 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9841] = 30
                            mem[_9841 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10101 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10101 + 68] = mem[idx + _9841 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10101 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10101 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11060 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11060] = 30
                            mem[_11060 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _11360 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11360 + 68] = mem[idx + _11060 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11360 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11360 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7906 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7906] = 30
                        mem[_7906 + 32] = 'SafeMath: subtraction overflow'
                        _8388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8388] = 30
                        mem[_8388 + 32] = 'SafeMath: subtraction overflow'
                        _9253 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9253] = 30
                        mem[_9253 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                            _9523 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9523 + 68] = mem[idx + _9253 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9523 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9523 + -mem[64] + 100
                        if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10749] = 30
                        mem[_10749 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _11059 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11059 + 68] = mem[idx + _10749 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11059 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11059 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12057] = 30
                        mem[_12057 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12327 + 68] = mem[idx + _12057 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12327 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12327 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        _7905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7905] = 30
                        mem[_7905 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _7968 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7968 + 68] = mem[idx + _7905 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7968 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7968 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8386] = 30
                        mem[_8386 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8558 + 68] = mem[idx + _8386 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8558 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8558 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9251] = 30
                        mem[_9251 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9522 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9522 + 68] = mem[idx + _9251 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9522 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9522 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10748 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10748] = 30
                        mem[_10748 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11058 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11058 + 68] = mem[idx + _10748 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11058 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11058 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12055 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12055] = 30
                        mem[_12055 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12326 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12326 + 68] = mem[idx + _12055 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12326 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12326 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8239 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8239] = 30
                    mem[_8239 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _8385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8385 + 68] = mem[idx + _8239 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8385 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    _9036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9036] = 30
                    mem[_9036 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _9250 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9250 + 68] = mem[idx + _9036 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9250 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9250 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    _10099 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10099] = 30
                    mem[_10099 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _10401 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10401 + 68] = mem[idx + _10099 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10401 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10401 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _11727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11727] = 30
                    mem[_11727 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _12054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12054 + 68] = mem[idx + _11727 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12054 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12054 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _13036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13036] = 30
                    mem[_13036 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _13249 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13249 + 68] = mem[idx + _13036 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13249 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _13249 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if arg1 * stor23 / 100:
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * stor23 / 100:
                            if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor23 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor23 / 100 * t / s:
                                revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                                revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
        else:
            if arg1 and stor24 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor24 / arg1 != stor24:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * stor24 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor24 / 100:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * stor24 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor24 / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7437] = 26
                        mem[_7437 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor24 / 100:
                                _7721 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7721] = 30
                                mem[_7721 + 32] = 'SafeMath: subtraction overflow'
                                _7899 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7899] = 30
                                mem[_7899 + 32] = 'SafeMath: subtraction overflow'
                                _8376 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8376] = 30
                                mem[_8376 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 9
                                _9514 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9514] = 30
                                mem[_9514 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _9828 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9828 + 68] = mem[idx + _9514 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9828 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9828 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10734 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10734] = 30
                                mem[_10734 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11045 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11045 + 68] = mem[idx + _10734 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11045 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11045 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7829 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7829] = 30
                            mem[_7829 + 32] = 'SafeMath: subtraction overflow'
                            _8229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8229] = 30
                            mem[_8229 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                _8375 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8375 + 68] = mem[idx + _8229 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8375 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8375 + -mem[64] + 100
                            if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9024 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9024] = 30
                            mem[_9024 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                _9242 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9242 + 68] = mem[idx + _9024 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9242 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9242 + -mem[64] + 100
                            if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10393 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10393] = 30
                            mem[_10393 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10733 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10733 + 68] = mem[idx + _10393 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10733 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10733 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11711 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11711] = 30
                            mem[_11711 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12040 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12040 + 68] = mem[idx + _11711 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12040 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12040 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            _7828 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7828] = 30
                            mem[_7828 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _7898 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7898 + 68] = mem[idx + _7828 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7898 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7898 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8227 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8227] = 30
                            mem[_8227 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8374 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8374 + 68] = mem[idx + _8227 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8374 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8374 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9022 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9022] = 30
                            mem[_9022 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9241 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9241 + 68] = mem[idx + _9022 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9241 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9241 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10392 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10392] = 30
                            mem[_10392 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _10732 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10732 + 68] = mem[idx + _10392 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10732 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10732 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _11709 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11709] = 30
                            mem[_11709 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12039 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12039 + 68] = mem[idx + _11709 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12039 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12039 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8083 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8083] = 30
                        mem[_8083 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8226 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8226 + 68] = mem[idx + _8083 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8226 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8226 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8787 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8787] = 30
                        mem[_8787 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _9021 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9021 + 68] = mem[idx + _8787 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9021 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9021 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9826 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9826] = 30
                        mem[_9826 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _10086 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10086 + 68] = mem[idx + _9826 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10086 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10086 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11351 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11351] = 30
                        mem[_11351 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11708 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11708 + 68] = mem[idx + _11351 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11708 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11708 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12703 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12703] = 30
                        mem[_12703 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13021 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13021 + 68] = mem[idx + _12703 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13021 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13021 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7466] = 30
                        mem[_7466 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7477 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7477 + 68] = mem[idx + _7466 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7477 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7477 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7571] = 30
                        mem[_7571 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7587 + 68] = mem[idx + _7571 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7587 + -mem[64] + 100
                    _7467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7467] = 26
                    mem[_7467 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor24 / 100:
                            _7749 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7749] = 30
                            mem[_7749 + 32] = 'SafeMath: subtraction overflow'
                            _7964 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7964] = 30
                            mem[_7964 + 32] = 'SafeMath: subtraction overflow'
                            _8555 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8555] = 30
                            mem[_8555 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 9
                            _9829 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9829] = 30
                            mem[_9829 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10091 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10091 + 68] = mem[idx + _9829 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10091 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10091 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11048 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11048] = 30
                            mem[_11048 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _11353 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11353 + 68] = mem[idx + _11048 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11353 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11353 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7902] = 30
                        mem[_7902 + 32] = 'SafeMath: subtraction overflow'
                        _8380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8380] = 30
                        mem[_8380 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                            _8554 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8554 + 68] = mem[idx + _8380 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8554 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8554 + -mem[64] + 100
                        if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9246] = 30
                        mem[_9246 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                            _9516 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9516 + 68] = mem[idx + _9246 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9516 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9516 + -mem[64] + 100
                        if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10737 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10737] = 30
                        mem[_10737 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _11047 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11047 + 68] = mem[idx + _10737 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11047 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11047 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12045] = 30
                        mem[_12045 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12322 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12322 + 68] = mem[idx + _12045 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12322 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12322 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor24 / 100:
                        _7901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7901] = 30
                        mem[_7901 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _7963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7963 + 68] = mem[idx + _7901 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7963 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7963 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8378] = 30
                        mem[_8378 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8553 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8553 + 68] = mem[idx + _8378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8553 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8553 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9244] = 30
                        mem[_9244 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9515 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9515 + 68] = mem[idx + _9244 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9515 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9515 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10736] = 30
                        mem[_10736 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11046 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11046 + 68] = mem[idx + _10736 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11046 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11046 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12043] = 30
                        mem[_12043 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12321 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12321 + 68] = mem[idx + _12043 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12321 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12321 + -mem[64] + 100
                    if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                        revert with 0, 17
                    if not arg1 * stor24 / 100:
                        revert with 0, 18
                    if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8230] = 30
                    mem[_8230 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _8377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8377 + 68] = mem[idx + _8230 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8377 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8377 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    _9026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9026] = 30
                    mem[_9026 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _9243 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9243 + 68] = mem[idx + _9026 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9243 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9243 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _10089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10089] = 30
                    mem[_10089 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                        _10394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10394 + 68] = mem[idx + _10089 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10394 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10394 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _11713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11713] = 30
                    mem[_11713 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _12042 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12042 + 68] = mem[idx + _11713 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12042 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12042 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _13024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13024] = 30
                    mem[_13024 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _13246 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13246 + 68] = mem[idx + _13024 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13246 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _13246 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if arg1 * stor24 / 100:
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * stor24 / 100:
                            if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor24 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor24 / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor24 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor24 / 100 * t / s < 0:
                                revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * stor24 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor24 / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * stor24 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
            else:
                if arg1 and stor23 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor23 / arg1 != stor23:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * stor24 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor24 / 100:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 > arg1 - (arg1 * stor24 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor24 / 100) < arg1 * stor23 / 100:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7436] = 26
                        mem[_7436 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    _7719 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7719] = 30
                                    mem[_7719 + 32] = 'SafeMath: subtraction overflow'
                                    _7893 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7893] = 30
                                    mem[_7893 + 32] = 'SafeMath: subtraction overflow'
                                    _8367 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8367] = 30
                                    mem[_8367 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _9506 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9506] = 30
                                    mem[_9506 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _9812 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9812 + 68] = mem[idx + _9506 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9812 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9812 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10721 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10721] = 30
                                    mem[_10721 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _11030 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11030 + 68] = mem[idx + _10721 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11030 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11030 + -mem[64] + 100
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7821 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7821] = 30
                                mem[_7821 + 32] = 'SafeMath: subtraction overflow'
                                _8218 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8218] = 30
                                mem[_8218 + 32] = 'SafeMath: subtraction overflow'
                                _9008 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9008] = 30
                                mem[_9008 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                    _9232 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9232 + 68] = mem[idx + _9008 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9232 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9232 + -mem[64] + 100
                                if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10383 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10383] = 30
                                mem[_10383 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10720 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10720 + 68] = mem[idx + _10383 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10720 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10720 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11695 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11695] = 30
                                mem[_11695 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12024 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12024 + 68] = mem[idx + _11695 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12024 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12024 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                _7820 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7820] = 30
                                mem[_7820 + 32] = 'SafeMath: subtraction overflow'
                                _8217 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8217] = 30
                                mem[_8217 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    _8366 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8366 + 68] = mem[idx + _8217 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8366 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8366 + -mem[64] + 100
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _9006 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9006] = 30
                                mem[_9006 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    _9231 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9231 + 68] = mem[idx + _9006 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9231 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9231 + -mem[64] + 100
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10382 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10382] = 30
                                mem[_10382 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10719 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10719 + 68] = mem[idx + _10382 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10719 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10719 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11693 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11693] = 30
                                mem[_11693 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12023 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12023 + 68] = mem[idx + _11693 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12023 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12023 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8074] = 30
                            mem[_8074 + 32] = 'SafeMath: subtraction overflow'
                            _8777 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8777] = 30
                            mem[_8777 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                _9005 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9005 + 68] = mem[idx + _8777 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9005 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9005 + -mem[64] + 100
                            if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9810 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9810] = 30
                            mem[_9810 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                _10071 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10071 + 68] = mem[idx + _9810 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10071 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10071 + -mem[64] + 100
                            if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11341] = 30
                            mem[_11341 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11692 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11692 + 68] = mem[idx + _11341 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11692 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11692 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12689 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12689] = 30
                            mem[_12689 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13004 + 68] = mem[idx + _12689 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13004 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13004 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                _7819 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7819] = 30
                                mem[_7819 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _7892 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7892 + 68] = mem[idx + _7819 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7892 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7892 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8215 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8215] = 30
                                mem[_8215 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8365 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8365 + 68] = mem[idx + _8215 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8365 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8365 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _9003 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9003] = 30
                                mem[_9003 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _9230 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9230 + 68] = mem[idx + _9003 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9230 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9230 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10381 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10381] = 30
                                mem[_10381 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _10718 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10718 + 68] = mem[idx + _10381 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10718 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10718 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _11690 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11690] = 30
                                mem[_11690 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12022 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12022 + 68] = mem[idx + _11690 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12022 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12022 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8073] = 30
                            mem[_8073 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8214 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8214 + 68] = mem[idx + _8073 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8214 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8214 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8775 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8775] = 30
                            mem[_8775 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9002 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9002 + 68] = mem[idx + _8775 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9002 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9002 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9808 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9808] = 30
                            mem[_9808 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _10069 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10069 + 68] = mem[idx + _9808 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10069 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10069 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11340] = 30
                            mem[_11340 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11689 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11689 + 68] = mem[idx + _11340 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11689 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11689 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12687 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12687] = 30
                            mem[_12687 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13002 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13002 + 68] = mem[idx + _12687 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13002 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13002 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _8072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8072] = 30
                            mem[_8072 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8213 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8213 + 68] = mem[idx + _8072 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8213 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8213 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8773 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8773] = 30
                            mem[_8773 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _9001 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9001 + 68] = mem[idx + _8773 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9001 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9001 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9806 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9806] = 30
                            mem[_9806 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10068 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10068 + 68] = mem[idx + _9806 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10068 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10068 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11339 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11339] = 30
                            mem[_11339 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11688 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11688 + 68] = mem[idx + _11339 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11688 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11688 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12685] = 30
                            mem[_12685 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13001 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13001 + 68] = mem[idx + _12685 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13001 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13001 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8546] = 30
                        mem[_8546 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8772 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8772 + 68] = mem[idx + _8546 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8772 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8772 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9504] = 30
                        mem[_9504 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _9805 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9805 + 68] = mem[idx + _9504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9805 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9805 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10716] = 30
                        mem[_10716 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _11026 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11026 + 68] = mem[idx + _10716 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11026 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11026 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12313] = 30
                        mem[_12313 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12684 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12684 + 68] = mem[idx + _12313 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12684 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12684 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13539] = 30
                        mem[_13539 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13814 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13814 + 68] = mem[idx + _13539 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13814 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13814 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7464] = 30
                        mem[_7464 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7476 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7476 + 68] = mem[idx + _7464 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7476 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7476 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7569] = 30
                        mem[_7569 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7585 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7585 + 68] = mem[idx + _7569 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7585 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7585 + -mem[64] + 100
                    _7465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7465] = 26
                    mem[_7465 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                _7747 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7747] = 30
                                mem[_7747 + 32] = 'SafeMath: subtraction overflow'
                                _7962 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7962] = 30
                                mem[_7962 + 32] = 'SafeMath: subtraction overflow'
                                _8550 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8550] = 30
                                mem[_8550 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 9
                                _9815 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9815] = 30
                                mem[_9815 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10081 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10081 + 68] = mem[idx + _9815 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10081 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10081 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11036 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11036] = 30
                                mem[_11036 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11346 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11346 + 68] = mem[idx + _11036 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11346 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11346 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7897] = 30
                            mem[_7897 + 32] = 'SafeMath: subtraction overflow'
                            _8373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8373] = 30
                            mem[_8373 + 32] = 'SafeMath: subtraction overflow'
                            _9240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9240] = 30
                            mem[_9240 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                _9509 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9509 + 68] = mem[idx + _9240 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9509 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9509 + -mem[64] + 100
                            if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10725 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10725] = 30
                            mem[_10725 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11035 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11035 + 68] = mem[idx + _10725 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11035 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11035 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12033] = 30
                            mem[_12033 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12317 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12317 + 68] = mem[idx + _12033 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12317 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12317 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _7896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7896] = 30
                            mem[_7896 + 32] = 'SafeMath: subtraction overflow'
                            _8372 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8372] = 30
                            mem[_8372 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                _8549 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8549 + 68] = mem[idx + _8372 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8549 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8549 + -mem[64] + 100
                            if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9238 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9238] = 30
                            mem[_9238 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                _9508 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9508 + 68] = mem[idx + _9238 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9508 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9508 + -mem[64] + 100
                            if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10724 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10724] = 30
                            mem[_10724 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11034 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11034 + 68] = mem[idx + _10724 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11034 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11034 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12031 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12031] = 30
                            mem[_12031 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12316 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12316 + 68] = mem[idx + _12031 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12316 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12316 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8221 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8221] = 30
                        mem[_8221 + 32] = 'SafeMath: subtraction overflow'
                        _9014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9014] = 30
                        mem[_9014 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                            _9237 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9237 + 68] = mem[idx + _9014 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9237 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9237 + -mem[64] + 100
                        if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10079 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10079] = 30
                        mem[_10079 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                            _10387 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10387 + 68] = mem[idx + _10079 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10387 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10387 + -mem[64] + 100
                        if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11699] = 30
                        mem[_11699 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _12030 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12030 + 68] = mem[idx + _11699 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12030 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12030 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _13012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13012] = 30
                        mem[_13012 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13243 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13243 + 68] = mem[idx + _13012 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13243 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13243 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor24 / 100:
                        if not arg1 * stor23 / 100:
                            _7895 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7895] = 30
                            mem[_7895 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _7961 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7961 + 68] = mem[idx + _7895 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7961 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7961 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8370] = 30
                            mem[_8370 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8548 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8548 + 68] = mem[idx + _8370 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8548 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8548 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9235 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9235] = 30
                            mem[_9235 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9507 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9507 + 68] = mem[idx + _9235 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9507 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9507 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10723] = 30
                            mem[_10723 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11033 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11033 + 68] = mem[idx + _10723 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11033 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11033 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12028 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12028] = 30
                            mem[_12028 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12315 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12315 + 68] = mem[idx + _12028 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12315 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12315 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8220] = 30
                        mem[_8220 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8369 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8369 + 68] = mem[idx + _8220 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8369 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8369 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9012] = 30
                        mem[_9012 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9234 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9234 + 68] = mem[idx + _9012 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9234 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9234 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _10077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10077] = 30
                        mem[_10077 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _10385 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10385 + 68] = mem[idx + _10077 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10385 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10385 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11698 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11698] = 30
                        mem[_11698 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12027 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12027 + 68] = mem[idx + _11698 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12027 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12027 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13010] = 30
                        mem[_13010 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13241 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13241 + 68] = mem[idx + _13010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13241 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13241 + -mem[64] + 100
                    if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                        revert with 0, 17
                    if not arg1 * stor24 / 100:
                        revert with 0, 18
                    if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        _8219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8219] = 30
                        mem[_8219 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8368 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8368 + 68] = mem[idx + _8219 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8368 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8368 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9010] = 30
                        mem[_9010 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _9233 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9233 + 68] = mem[idx + _9010 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9233 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9233 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10075 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10075] = 30
                        mem[_10075 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _10384 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10384 + 68] = mem[idx + _10075 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10384 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10384 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11697 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11697] = 30
                        mem[_11697 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12026 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12026 + 68] = mem[idx + _11697 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12026 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12026 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13008] = 30
                        mem[_13008 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13240 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13240 + 68] = mem[idx + _13008 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13240 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13240 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8778] = 30
                    mem[_8778 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor17 / 10^18:
                        _9009 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9009 + 68] = mem[idx + _8778 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9009 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9009 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < 0:
                        revert with 0, 17
                    _9813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9813] = 30
                    mem[_9813 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _10074 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10074 + 68] = mem[idx + _9813 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10074 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10074 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _11031 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11031] = 30
                    mem[_11031 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                        _11342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11342 + 68] = mem[idx + _11031 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11342 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _12692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12692] = 30
                    mem[_12692 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _13007 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13007 + 68] = mem[idx + _12692 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13007 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13007 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _13818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13818] = 30
                    mem[_13818 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _13964 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13964 + 68] = mem[idx + _13818 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13964 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _13964 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if not arg1 * stor24 / 100:
                            if arg1 * stor23 / 100:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        else:
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        else:
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * stor24 / 100:
                            if arg1 * stor23 / 100:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor23 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        else:
                            if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if arg1 * stor24 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor24 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor24 / 100 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor24 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * t / s > -1 * arg1 * stor24 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor24 / 100 * t / s < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        else:
                            if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor24 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * t / s > (arg1 * t / s) - (arg1 * stor24 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor24 / 100 * t / s) < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
    else:
        if arg1 and stor22 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor22 / arg1 != stor22:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * stor22 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor22 / 100:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * stor22 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) < 0:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * stor22 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7435 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7435] = 26
                        mem[_7435 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor22 / 100:
                                _7717 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7717] = 30
                                mem[_7717 + 32] = 'SafeMath: subtraction overflow'
                                _7889 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7889] = 30
                                mem[_7889 + 32] = 'SafeMath: subtraction overflow'
                                _8354 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8354] = 30
                                mem[_8354 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 9
                                _9489 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9489] = 30
                                mem[_9489 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _9787 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9787 + 68] = mem[idx + _9489 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9787 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9787 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10696 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10696] = 30
                                mem[_10696 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11009 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11009 + 68] = mem[idx + _10696 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11009 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11009 + -mem[64] + 100
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7813 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7813] = 30
                            mem[_7813 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _7888 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7888 + 68] = mem[idx + _7813 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7888 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7888 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8206 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8206] = 30
                            mem[_8206 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _8353 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8353 + 68] = mem[idx + _8206 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8353 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8353 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8989 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8989] = 30
                            mem[_8989 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _9222 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9222 + 68] = mem[idx + _8989 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9222 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9222 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10371] = 30
                            mem[_10371 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10695 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10695 + 68] = mem[idx + _10371 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10695 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10695 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11671 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11671] = 30
                            mem[_11671 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12004 + 68] = mem[idx + _11671 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12004 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12004 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            _7812 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7812] = 30
                            mem[_7812 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _7887 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7887 + 68] = mem[idx + _7812 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7887 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7887 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8204 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8204] = 30
                            mem[_8204 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8352 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8352 + 68] = mem[idx + _8204 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8352 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8352 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8987 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8987] = 30
                            mem[_8987 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9221 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9221 + 68] = mem[idx + _8987 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9221 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9221 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10370] = 30
                            mem[_10370 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _10694 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10694 + 68] = mem[idx + _10370 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10694 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10694 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _11669 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11669] = 30
                            mem[_11669 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12003 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12003 + 68] = mem[idx + _11669 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12003 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12003 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8063 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8063] = 30
                        mem[_8063 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8203 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8203 + 68] = mem[idx + _8063 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8203 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8203 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _8758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8758] = 30
                        mem[_8758 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _8986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8986 + 68] = mem[idx + _8758 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8986 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8986 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        _9785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9785] = 30
                        mem[_9785 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _10056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10056 + 68] = mem[idx + _9785 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10056 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10056 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11330] = 30
                        mem[_11330 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11668 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11668 + 68] = mem[idx + _11330 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11668 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11668 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12663 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12663] = 30
                        mem[_12663 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12985 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12985 + 68] = mem[idx + _12663 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12985 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12985 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7462] = 30
                        mem[_7462 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7475 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7475 + 68] = mem[idx + _7462 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7475 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7475 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7567] = 30
                        mem[_7567 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7583 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7583 + 68] = mem[idx + _7567 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7583 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7583 + -mem[64] + 100
                    _7463 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7463] = 26
                    mem[_7463 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            _7745 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7745] = 30
                            mem[_7745 + 32] = 'SafeMath: subtraction overflow'
                            _7956 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7956] = 30
                            mem[_7956 + 32] = 'SafeMath: subtraction overflow'
                            _8539 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8539] = 30
                            mem[_8539 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 9
                            _9788 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9788] = 30
                            mem[_9788 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10061 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10061 + 68] = mem[idx + _9788 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10061 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10061 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11012] = 30
                            mem[_11012 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _11332 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11332 + 68] = mem[idx + _11012 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11332 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11332 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7891] = 30
                        mem[_7891 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                            _7955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7955 + 68] = mem[idx + _7891 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7955 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7955 + -mem[64] + 100
                        if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _8358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8358] = 30
                        mem[_8358 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                            _8538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8538 + 68] = mem[idx + _8358 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8538 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8538 + -mem[64] + 100
                        if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9226] = 30
                        mem[_9226 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                            _9491 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9491 + 68] = mem[idx + _9226 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9491 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9491 + -mem[64] + 100
                        if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10699] = 30
                        mem[_10699 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _11011 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11011 + 68] = mem[idx + _10699 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11011 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11011 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12009] = 30
                        mem[_12009 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12305 + 68] = mem[idx + _12009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12305 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12305 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        _7890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7890] = 30
                        mem[_7890 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _7954 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7954 + 68] = mem[idx + _7890 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7954 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7954 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8356] = 30
                        mem[_8356 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8537 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8537 + 68] = mem[idx + _8356 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8537 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8537 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9224] = 30
                        mem[_9224 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9490 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9490 + 68] = mem[idx + _9224 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9490 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9490 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _10698 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10698] = 30
                        mem[_10698 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11010 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11010 + 68] = mem[idx + _10698 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11010 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11010 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12007] = 30
                        mem[_12007 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _12304 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12304 + 68] = mem[idx + _12007 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12304 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12304 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8208] = 30
                    mem[_8208 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _8355 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8355 + 68] = mem[idx + _8208 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8355 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8355 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _8991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8991] = 30
                    mem[_8991 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                        _9223 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9223 + 68] = mem[idx + _8991 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9223 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9223 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                        revert with 0, 17
                    _10059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10059] = 30
                    mem[_10059 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                        _10372 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10372 + 68] = mem[idx + _10059 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10372 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10372 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _11673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11673] = 30
                    mem[_11673 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _12006 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12006 + 68] = mem[idx + _11673 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12006 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12006 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _12988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12988] = 30
                    mem[_12988 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _13235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13235 + 68] = mem[idx + _12988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13235 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _13235 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if arg1 * stor22 / 100:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * stor22 / 100:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor22 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor22 / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor22 / 100 * t / s < 0:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor22 / 100 * t / s < 0:
                                revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
            else:
                if arg1 and stor23 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor23 / arg1 != stor23:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * stor22 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor22 / 100:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * stor22 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) < 0:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 > arg1 - (arg1 * stor22 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) < arg1 * stor23 / 100:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7434] = 26
                        mem[_7434 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor22 / 100:
                                if not arg1 * stor23 / 100:
                                    _7716 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7716] = 30
                                    mem[_7716 + 32] = 'SafeMath: subtraction overflow'
                                    _7881 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7881] = 30
                                    mem[_7881 + 32] = 'SafeMath: subtraction overflow'
                                    _8343 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8343] = 30
                                    mem[_8343 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _9481 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9481] = 30
                                    mem[_9481 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _9771 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9771 + 68] = mem[idx + _9481 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9771 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9771 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10683 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10683] = 30
                                    mem[_10683 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _10994 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10994 + 68] = mem[idx + _10683 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10994 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10994 + -mem[64] + 100
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7808 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7808] = 30
                                mem[_7808 + 32] = 'SafeMath: subtraction overflow'
                                _8193 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8193] = 30
                                mem[_8193 + 32] = 'SafeMath: subtraction overflow'
                                _8972 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8972] = 30
                                mem[_8972 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                    _9212 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9212 + 68] = mem[idx + _8972 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9212 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9212 + -mem[64] + 100
                                if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10361 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10361] = 30
                                mem[_10361 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10682 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10682 + 68] = mem[idx + _10361 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10682 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10682 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11655 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11655] = 30
                                mem[_11655 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11988 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11988 + 68] = mem[idx + _11655 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11988 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11988 + -mem[64] + 100
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                _7807 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7807] = 30
                                mem[_7807 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    _7880 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7880 + 68] = mem[idx + _7807 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7880 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7880 + -mem[64] + 100
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8191 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8191] = 30
                                mem[_8191 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _8342 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8342 + 68] = mem[idx + _8191 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8342 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8342 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8970 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8970] = 30
                                mem[_8970 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _9211 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9211 + 68] = mem[idx + _8970 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9211 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9211 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10360 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10360] = 30
                                mem[_10360 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10681 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10681 + 68] = mem[idx + _10360 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10681 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10681 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11653 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11653] = 30
                                mem[_11653 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11987 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11987 + 68] = mem[idx + _11653 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11987 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11987 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8056 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8056] = 30
                            mem[_8056 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _8190 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8190 + 68] = mem[idx + _8056 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8190 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8190 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8745 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8745] = 30
                            mem[_8745 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _8969 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8969 + 68] = mem[idx + _8745 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8969 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8969 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9769 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9769] = 30
                            mem[_9769 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _10041 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10041 + 68] = mem[idx + _9769 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10041 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10041 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11320 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11320] = 30
                            mem[_11320 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11652 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11652 + 68] = mem[idx + _11320 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11652 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11652 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12649 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12649] = 30
                            mem[_12649 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12968 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12968 + 68] = mem[idx + _12649 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12968 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12968 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor23 / 100:
                                _7806 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7806] = 30
                                mem[_7806 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _7879 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7879 + 68] = mem[idx + _7806 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7879 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7879 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8188 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8188] = 30
                                mem[_8188 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8341 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8341 + 68] = mem[idx + _8188 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8341 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8341 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8967 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8967] = 30
                                mem[_8967 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _9210 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9210 + 68] = mem[idx + _8967 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9210 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9210 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10359 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10359] = 30
                                mem[_10359 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _10680 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10680 + 68] = mem[idx + _10359 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10680 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10680 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _11650 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11650] = 30
                                mem[_11650 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11986 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11986 + 68] = mem[idx + _11650 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11986 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11986 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8055 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8055] = 30
                            mem[_8055 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8187 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8187 + 68] = mem[idx + _8055 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8187 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8187 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8743 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8743] = 30
                            mem[_8743 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8966 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8966 + 68] = mem[idx + _8743 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8966 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8966 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9767 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9767] = 30
                            mem[_9767 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _10039 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10039 + 68] = mem[idx + _9767 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10039 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10039 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11319 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11319] = 30
                            mem[_11319 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11649 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11649 + 68] = mem[idx + _11319 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11649 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11649 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12647 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12647] = 30
                            mem[_12647 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12966 + 68] = mem[idx + _12647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12966 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12966 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _8054 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8054] = 30
                            mem[_8054 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _8186 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8186 + 68] = mem[idx + _8054 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8186 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8186 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8741 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8741] = 30
                            mem[_8741 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _8965 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8965 + 68] = mem[idx + _8741 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8965 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8965 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            _9765 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9765] = 30
                            mem[_9765 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _10038 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10038 + 68] = mem[idx + _9765 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10038 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10038 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11318 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11318] = 30
                            mem[_11318 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11648 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11648 + 68] = mem[idx + _11318 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11648 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11648 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12645 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12645] = 30
                            mem[_12645 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12965 + 68] = mem[idx + _12645 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12965 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12965 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8530] = 30
                        mem[_8530 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8740 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8740 + 68] = mem[idx + _8530 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8740 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8740 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9479] = 30
                        mem[_9479 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _9764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9764 + 68] = mem[idx + _9479 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9764 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        _10678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10678] = 30
                        mem[_10678 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _10990 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10990 + 68] = mem[idx + _10678 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10990 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10990 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12296] = 30
                        mem[_12296 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12644 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12644 + 68] = mem[idx + _12296 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12644 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12644 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13510] = 30
                        mem[_13510 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13784 + 68] = mem[idx + _13510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13784 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13784 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7460 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7460] = 30
                        mem[_7460 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7474 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7474 + 68] = mem[idx + _7460 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7474 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7474 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7565 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7565] = 30
                        mem[_7565 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7581 + 68] = mem[idx + _7565 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7581 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7581 + -mem[64] + 100
                    _7461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7461] = 26
                    mem[_7461 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor23 / 100:
                                _7741 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7741] = 30
                                mem[_7741 + 32] = 'SafeMath: subtraction overflow'
                                _7953 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7953] = 30
                                mem[_7953 + 32] = 'SafeMath: subtraction overflow'
                                _8534 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8534] = 30
                                mem[_8534 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 9
                                _9774 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9774] = 30
                                mem[_9774 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10051 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10051 + 68] = mem[idx + _9774 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10051 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10051 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11000 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11000] = 30
                                mem[_11000 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11325 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11325 + 68] = mem[idx + _11000 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11325 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11325 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7884 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7884] = 30
                            mem[_7884 + 32] = 'SafeMath: subtraction overflow'
                            _8351 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8351] = 30
                            mem[_8351 + 32] = 'SafeMath: subtraction overflow'
                            _9220 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9220] = 30
                            mem[_9220 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                _9484 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9484 + 68] = mem[idx + _9220 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9484 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9484 + -mem[64] + 100
                            if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10687 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10687] = 30
                            mem[_10687 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10999 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10999 + 68] = mem[idx + _10687 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10999 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10999 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11997 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11997] = 30
                            mem[_11997 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12300 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12300 + 68] = mem[idx + _11997 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12300 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12300 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _7883 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7883] = 30
                            mem[_7883 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _7952 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7952 + 68] = mem[idx + _7883 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7952 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7952 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8349 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8349] = 30
                            mem[_8349 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _8533 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8533 + 68] = mem[idx + _8349 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8533 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8533 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9218 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9218] = 30
                            mem[_9218 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _9483 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9483 + 68] = mem[idx + _9218 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9483 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9483 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10686 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10686] = 30
                            mem[_10686 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10998 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10998 + 68] = mem[idx + _10686 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10998 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10998 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11995 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11995] = 30
                            mem[_11995 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12299 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12299 + 68] = mem[idx + _11995 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12299 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12299 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8196] = 30
                        mem[_8196 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                            _8348 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8348 + 68] = mem[idx + _8196 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8348 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8348 + -mem[64] + 100
                        if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _8978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8978] = 30
                        mem[_8978 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                            _9217 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9217 + 68] = mem[idx + _8978 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9217 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9217 + -mem[64] + 100
                        if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _10049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10049] = 30
                        mem[_10049 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                            _10365 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10365 + 68] = mem[idx + _10049 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10365 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10365 + -mem[64] + 100
                        if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11659] = 30
                        mem[_11659 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _11994 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11994 + 68] = mem[idx + _11659 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11994 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11994 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12976] = 30
                        mem[_12976 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13232 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13232 + 68] = mem[idx + _12976 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13232 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13232 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        if not arg1 * stor23 / 100:
                            _7882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7882] = 30
                            mem[_7882 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _7951 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7951 + 68] = mem[idx + _7882 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7951 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7951 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8346 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8346] = 30
                            mem[_8346 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8532 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8532 + 68] = mem[idx + _8346 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8532 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8532 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9215 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9215] = 30
                            mem[_9215 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9482 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9482 + 68] = mem[idx + _9215 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9482 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9482 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10685] = 30
                            mem[_10685 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _10997 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10997 + 68] = mem[idx + _10685 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10997 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10997 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _11992 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11992] = 30
                            mem[_11992 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12298 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12298 + 68] = mem[idx + _11992 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12298 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12298 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8195] = 30
                        mem[_8195 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8345 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8345 + 68] = mem[idx + _8195 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8345 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8345 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8976] = 30
                        mem[_8976 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _9214 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9214 + 68] = mem[idx + _8976 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9214 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9214 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _10047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10047] = 30
                        mem[_10047 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _10363 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10363 + 68] = mem[idx + _10047 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10363 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10363 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11658 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11658] = 30
                        mem[_11658 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11991 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11991 + 68] = mem[idx + _11658 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11991 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11991 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12974] = 30
                        mem[_12974 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13230 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13230 + 68] = mem[idx + _12974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13230 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13230 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        _8194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8194] = 30
                        mem[_8194 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8344 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8344 + 68] = mem[idx + _8194 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8344 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8344 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _8974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8974] = 30
                        mem[_8974 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _9213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9213 + 68] = mem[idx + _8974 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9213 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9213 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        _10045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10045] = 30
                        mem[_10045 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _10362 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10362 + 68] = mem[idx + _10045 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10362 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10362 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11657 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11657] = 30
                        mem[_11657 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11990 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11990 + 68] = mem[idx + _11657 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11990 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11990 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12972] = 30
                        mem[_12972 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13229 + 68] = mem[idx + _12972 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13229 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13229 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8747] = 30
                    mem[_8747 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _8973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8973 + 68] = mem[idx + _8747 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8973 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8973 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _9772 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9772] = 30
                    mem[_9772 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                        _10044 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10044 + 68] = mem[idx + _9772 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10044 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10044 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                        revert with 0, 17
                    _10995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10995] = 30
                    mem[_10995 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                        _11321 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11321 + 68] = mem[idx + _10995 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11321 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11321 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _12652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12652] = 30
                    mem[_12652 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _12971 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12971 + 68] = mem[idx + _12652 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12971 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12971 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _13788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13788] = 30
                    mem[_13788 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _13959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13959 + 68] = mem[idx + _13788 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13959 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _13959 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if arg1 * stor23 / 100:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor23 / 100:
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if arg1 * stor23 / 100:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor23 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if arg1 * stor22 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < 0:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * t / s > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor23 / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                    revert with 0, 17
                                if arg1 * stor23 / 100 * t / s > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < arg1 * stor23 / 100 * t / s:
                                    revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
        else:
            if arg1 and stor24 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor24 / arg1 != stor24:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * stor22 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor22 / 100:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * stor24 / 100 > arg1 - (arg1 * stor22 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) < arg1 * stor24 / 100:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * stor22 / 100) - (arg1 * stor24 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) - (arg1 * stor24 / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7433] = 26
                        mem[_7433 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor22 / 100:
                                if not arg1 * stor24 / 100:
                                    _7715 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7715] = 30
                                    mem[_7715 + 32] = 'SafeMath: subtraction overflow'
                                    _7871 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7871] = 30
                                    mem[_7871 + 32] = 'SafeMath: subtraction overflow'
                                    _8327 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8327] = 30
                                    mem[_8327 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _9461 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9461] = 30
                                    mem[_9461 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _9744 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9744 + 68] = mem[idx + _9461 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9744 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9744 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10657 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10657] = 30
                                    mem[_10657 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _10970 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10970 + 68] = mem[idx + _10657 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10970 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10970 + -mem[64] + 100
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7803 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7803] = 30
                                mem[_7803 + 32] = 'SafeMath: subtraction overflow'
                                _8175 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8175] = 30
                                mem[_8175 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    _8326 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8326 + 68] = mem[idx + _8175 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8326 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8326 + -mem[64] + 100
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8948 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8948] = 30
                                mem[_8948 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    _9198 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9198 + 68] = mem[idx + _8948 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9198 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9198 + -mem[64] + 100
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10346 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10346] = 30
                                mem[_10346 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10656 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10656 + 68] = mem[idx + _10346 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10656 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10656 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11629 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11629] = 30
                                mem[_11629 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11964 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11964 + 68] = mem[idx + _11629 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11964 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11964 + -mem[64] + 100
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                _7802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7802] = 30
                                mem[_7802 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    _7870 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7870 + 68] = mem[idx + _7802 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7870 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7870 + -mem[64] + 100
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8173 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8173] = 30
                                mem[_8173 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _8325 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8325 + 68] = mem[idx + _8173 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8325 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8325 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8946 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8946] = 30
                                mem[_8946 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _9197 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9197 + 68] = mem[idx + _8946 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9197 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9197 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10345 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10345] = 30
                                mem[_10345 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10655 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10655 + 68] = mem[idx + _10345 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10655 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10655 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11627 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11627] = 30
                                mem[_11627 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11963 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11963 + 68] = mem[idx + _11627 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11963 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11963 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8047 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8047] = 30
                            mem[_8047 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _8172 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8172 + 68] = mem[idx + _8047 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8172 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8172 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8721] = 30
                            mem[_8721 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _8945 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8945 + 68] = mem[idx + _8721 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8945 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8945 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9742 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9742] = 30
                            mem[_9742 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10021 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10021 + 68] = mem[idx + _9742 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10021 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10021 + -mem[64] + 100
                            if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11306 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11306] = 30
                            mem[_11306 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11626 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11626 + 68] = mem[idx + _11306 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11626 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11626 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12622] = 30
                            mem[_12622 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12944 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12944 + 68] = mem[idx + _12622 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12944 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12944 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                _7800 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7800] = 30
                                mem[_7800 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _7869 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7869 + 68] = mem[idx + _7800 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7869 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7869 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8170 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8170] = 30
                                mem[_8170 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8324 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8324 + 68] = mem[idx + _8170 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8324 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8324 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8943 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8943] = 30
                                mem[_8943 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _9196 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9196 + 68] = mem[idx + _8943 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9196 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9196 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10344 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10344] = 30
                                mem[_10344 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _10654 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10654 + 68] = mem[idx + _10344 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10654 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10654 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _11624 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11624] = 30
                                mem[_11624 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11962 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11962 + 68] = mem[idx + _11624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11962 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11962 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8046 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8046] = 30
                            mem[_8046 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8169 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8169 + 68] = mem[idx + _8046 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8169 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8169 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8719 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8719] = 30
                            mem[_8719 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _8942 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8942 + 68] = mem[idx + _8719 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8942 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8942 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9740 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9740] = 30
                            mem[_9740 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10019 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10019 + 68] = mem[idx + _9740 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10019 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10019 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11305] = 30
                            mem[_11305 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11623 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11623 + 68] = mem[idx + _11305 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11623 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11623 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12620 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12620] = 30
                            mem[_12620 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12942 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12942 + 68] = mem[idx + _12620 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12942 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12942 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            _8045 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8045] = 30
                            mem[_8045 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _8168 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8168 + 68] = mem[idx + _8045 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8168 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8168 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8717 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8717] = 30
                            mem[_8717 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _8941 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8941 + 68] = mem[idx + _8717 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8941 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8941 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            _9738 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9738] = 30
                            mem[_9738 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _10018 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10018 + 68] = mem[idx + _9738 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10018 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10018 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11304 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11304] = 30
                            mem[_11304 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11622 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11622 + 68] = mem[idx + _11304 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11622 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11622 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12618] = 30
                            mem[_12618 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12941 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12941 + 68] = mem[idx + _12618 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12941 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12941 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8519] = 30
                        mem[_8519 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8716 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8716 + 68] = mem[idx + _8519 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8716 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8716 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9459 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9459] = 30
                        mem[_9459 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _9737 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9737 + 68] = mem[idx + _9459 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9737 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9737 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10652 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10652] = 30
                        mem[_10652 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _10966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10966 + 68] = mem[idx + _10652 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10966 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10966 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12284 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12284] = 30
                        mem[_12284 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12617 + 68] = mem[idx + _12284 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12617 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12617 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13489] = 30
                        mem[_13489 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13763 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13763 + 68] = mem[idx + _13489 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13763 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13763 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7458 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7458] = 30
                        mem[_7458 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7473 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7473 + 68] = mem[idx + _7458 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7473 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7473 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7563 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7563] = 30
                        mem[_7563 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7579 + 68] = mem[idx + _7563 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7579 + -mem[64] + 100
                    _7459 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7459] = 26
                    mem[_7459 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                _7737 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7737] = 30
                                mem[_7737 + 32] = 'SafeMath: subtraction overflow'
                                _7946 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7946] = 30
                                mem[_7946 + 32] = 'SafeMath: subtraction overflow'
                                _8523 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8523] = 30
                                mem[_8523 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 9
                                _9747 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9747] = 30
                                mem[_9747 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10031 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10031 + 68] = mem[idx + _9747 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10031 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10031 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10976 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10976] = 30
                                mem[_10976 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _11311 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11311 + 68] = mem[idx + _10976 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11311 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11311 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7876 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7876] = 30
                            mem[_7876 + 32] = 'SafeMath: subtraction overflow'
                            _8335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8335] = 30
                            mem[_8335 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                _8522 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8522 + 68] = mem[idx + _8335 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8522 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8522 + -mem[64] + 100
                            if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9206 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9206] = 30
                            mem[_9206 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                _9464 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9464 + 68] = mem[idx + _9206 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9464 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9464 + -mem[64] + 100
                            if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10661 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10661] = 30
                            mem[_10661 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10975 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10975 + 68] = mem[idx + _10661 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10975 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10975 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11973 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11973] = 30
                            mem[_11973 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12288 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12288 + 68] = mem[idx + _11973 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12288 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12288 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            _7875 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7875] = 30
                            mem[_7875 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _7945 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7945 + 68] = mem[idx + _7875 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7945 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7945 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8333 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8333] = 30
                            mem[_8333 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _8521 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8521 + 68] = mem[idx + _8333 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8521 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8521 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9204 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9204] = 30
                            mem[_9204 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _9463 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9463 + 68] = mem[idx + _9204 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9463 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9463 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10660] = 30
                            mem[_10660 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _10974 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10974 + 68] = mem[idx + _10660 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10974 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10974 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11971 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11971] = 30
                            mem[_11971 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12287 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12287 + 68] = mem[idx + _11971 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12287 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12287 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8179 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8179] = 30
                        mem[_8179 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                            _8332 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8332 + 68] = mem[idx + _8179 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8332 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8332 + -mem[64] + 100
                        if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _8955 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8955] = 30
                        mem[_8955 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                            _9203 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9203 + 68] = mem[idx + _8955 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9203 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9203 + -mem[64] + 100
                        if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10029 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10029] = 30
                        mem[_10029 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _10350 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10350 + 68] = mem[idx + _10029 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10350 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10350 + -mem[64] + 100
                        if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11633 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11633] = 30
                        mem[_11633 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _11970 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11970 + 68] = mem[idx + _11633 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11970 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11970 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12952] = 30
                        mem[_12952 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13224 + 68] = mem[idx + _12952 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13224 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13224 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        if not arg1 * stor24 / 100:
                            _7873 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7873] = 30
                            mem[_7873 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _7944 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7944 + 68] = mem[idx + _7873 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7944 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7944 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8330 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8330] = 30
                            mem[_8330 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8520 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8520 + 68] = mem[idx + _8330 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8520 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8520 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9201 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9201] = 30
                            mem[_9201 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9462 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9462 + 68] = mem[idx + _9201 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9462 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9462 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _10659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10659] = 30
                            mem[_10659 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _10973 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10973 + 68] = mem[idx + _10659 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10973 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10973 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _11968 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11968] = 30
                            mem[_11968 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _12286 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12286 + 68] = mem[idx + _11968 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12286 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12286 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8178] = 30
                        mem[_8178 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8329 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8329 + 68] = mem[idx + _8178 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8329 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8329 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _8953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8953] = 30
                        mem[_8953 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _9200 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9200 + 68] = mem[idx + _8953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9200 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9200 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10027 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10027] = 30
                        mem[_10027 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _10348 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10348 + 68] = mem[idx + _10027 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10348 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10348 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11632] = 30
                        mem[_11632 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11967 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11967 + 68] = mem[idx + _11632 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11967 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11967 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12950] = 30
                        mem[_12950 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13222 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13222 + 68] = mem[idx + _12950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13222 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13222 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor24 / 100:
                        _8177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8177] = 30
                        mem[_8177 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8328 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8328 + 68] = mem[idx + _8177 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8328 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8328 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _8951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8951] = 30
                        mem[_8951 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _9199 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9199 + 68] = mem[idx + _8951 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9199 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9199 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        _10025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10025] = 30
                        mem[_10025 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _10347 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10347 + 68] = mem[idx + _10025 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10347 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10347 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _11631 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11631] = 30
                        mem[_11631 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _11966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11966 + 68] = mem[idx + _11631 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11966 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11966 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _12948 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12948] = 30
                        mem[_12948 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13221 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13221 + 68] = mem[idx + _12948 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13221 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13221 + -mem[64] + 100
                    if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                        revert with 0, 17
                    if not arg1 * stor24 / 100:
                        revert with 0, 18
                    if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8723] = 30
                    mem[_8723 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _8950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8950 + 68] = mem[idx + _8723 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8950 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8950 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _9745 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9745] = 30
                    mem[_9745 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                        _10024 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10024 + 68] = mem[idx + _9745 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10024 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10024 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _10971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10971] = 30
                    mem[_10971 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                        _11307 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11307 + 68] = mem[idx + _10971 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11307 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11307 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _12625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12625] = 30
                    mem[_12625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _12947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12947 + 68] = mem[idx + _12625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12947 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12947 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _13767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13767] = 30
                    mem[_13767 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _13955 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13955 + 68] = mem[idx + _13767 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13955 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _13955 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if arg1 * stor24 / 100:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if arg1 * stor24 / 100:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor24 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor24 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor24 / 100 * t / s < 0:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if arg1 * stor22 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < 0:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * t / s > -1 * arg1 * stor22 / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * stor22 / 100 * t / s < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (-1 * arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (-1 * arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                    revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor24 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                    revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                    revert with 0, 17
                                if arg1 * stor24 / 100 * t / s > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < arg1 * stor24 / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                    revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
            else:
                if arg1 and stor23 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor23 / arg1 != stor23:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * stor22 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stor22 / 100:
                    revert with 0, 17
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * stor24 / 100 > arg1 - (arg1 * stor22 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) < arg1 * stor24 / 100:
                    revert with 0, 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 > arg1 - (arg1 * stor22 / 100) - (arg1 * stor24 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * stor22 / 100) - (arg1 * stor24 / 100) < arg1 * stor23 / 100:
                    revert with 0, 17
                idx = 0
                s = 10^18
                t = stor17
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 9
                    if stor9[stor16[idx]] > t:
                        _7432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7432] = 26
                        mem[_7432 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 * stor22 / 100:
                                if not arg1 * stor24 / 100:
                                    if not arg1 * stor23 / 100:
                                        _7713 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7713] = 30
                                        mem[_7713 + 32] = 'SafeMath: subtraction overflow'
                                        _7860 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7860] = 30
                                        mem[_7860 + 32] = 'SafeMath: subtraction overflow'
                                        _8312 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8312] = 30
                                        mem[_8312 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 9
                                        _9439 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9439] = 30
                                        mem[_9439 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor9[address(msg.sender)]:
                                            _9708 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _9708 + 68] = mem[idx + _9439 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9708 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9708 + -mem[64] + 100
                                        if stor9[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 9
                                        _10628 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10628] = 30
                                        mem[_10628 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor17:
                                            if stor17 < 0:
                                                revert with 0, 17
                                            if totalFees > !arg1:
                                                revert with 0, 17
                                            if totalFees + arg1 < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += arg1
                                        _10938 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _10938 + 68] = mem[idx + _10628 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10938 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10938 + -mem[64] + 100
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _7793 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7793] = 30
                                    mem[_7793 + 32] = 'SafeMath: subtraction overflow'
                                    _8154 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8154] = 30
                                    mem[_8154 + 32] = 'SafeMath: subtraction overflow'
                                    _8917 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8917] = 30
                                    mem[_8917 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                        _9179 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9179 + 68] = mem[idx + _8917 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9179 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9179 + -mem[64] + 100
                                    if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10327 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10327] = 30
                                    mem[_10327 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _10627 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _10627 + 68] = mem[idx + _10327 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10627 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10627 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _11600 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11600] = 30
                                    mem[_11600 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _11933 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11933 + 68] = mem[idx + _11600 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11933 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11933 + -mem[64] + 100
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    _7792 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7792] = 30
                                    mem[_7792 + 32] = 'SafeMath: subtraction overflow'
                                    _8153 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8153] = 30
                                    mem[_8153 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                        _8311 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _8311 + 68] = mem[idx + _8153 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8311 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8311 + -mem[64] + 100
                                    if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    _8915 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8915] = 30
                                    mem[_8915 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                        _9178 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9178 + 68] = mem[idx + _8915 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9178 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9178 + -mem[64] + 100
                                    if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10326 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10326] = 30
                                    mem[_10326 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _10626 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _10626 + 68] = mem[idx + _10326 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10626 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10626 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _11598 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11598] = 30
                                    mem[_11598 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _11932 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11932 + 68] = mem[idx + _11598 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11932 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11932 + -mem[64] + 100
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8030 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8030] = 30
                                mem[_8030 + 32] = 'SafeMath: subtraction overflow'
                                _8695 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8695] = 30
                                mem[_8695 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    _8914 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8914 + 68] = mem[idx + _8695 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8914 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8914 + -mem[64] + 100
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _9706 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9706] = 30
                                mem[_9706 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    _9992 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9992 + 68] = mem[idx + _9706 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9992 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9992 + -mem[64] + 100
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11286 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11286] = 30
                                mem[_11286 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _11597 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11597 + 68] = mem[idx + _11286 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11597 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11597 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _12592 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12592] = 30
                                mem[_12592 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12911 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12911 + 68] = mem[idx + _12592 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12911 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12911 + -mem[64] + 100
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    _7791 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7791] = 30
                                    mem[_7791 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                        _7859 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _7859 + 68] = mem[idx + _7791 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7859 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _7859 + -mem[64] + 100
                                    if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    _8151 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8151] = 30
                                    mem[_8151 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        _8310 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _8310 + 68] = mem[idx + _8151 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8310 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8310 + -mem[64] + 100
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    _8912 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8912] = 30
                                    mem[_8912 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        _9177 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9177 + 68] = mem[idx + _8912 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9177 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9177 + -mem[64] + 100
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10325 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10325] = 30
                                    mem[_10325 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _10625 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _10625 + 68] = mem[idx + _10325 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10625 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10625 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _11595 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11595] = 30
                                    mem[_11595 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _11931 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11931 + 68] = mem[idx + _11595 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11931 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11931 + -mem[64] + 100
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8029] = 30
                                mem[_8029 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    _8150 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8150 + 68] = mem[idx + _8029 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8150 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8150 + -mem[64] + 100
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8693 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8693] = 30
                                mem[_8693 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _8911 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8911 + 68] = mem[idx + _8693 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8911 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8911 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _9704 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9704] = 30
                                mem[_9704 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _9990 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9990 + 68] = mem[idx + _9704 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9990 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9990 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11285 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11285] = 30
                                mem[_11285 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _11594 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11594 + 68] = mem[idx + _11285 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11594 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11594 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _12590 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12590] = 30
                                mem[_12590 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12909 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12909 + 68] = mem[idx + _12590 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12909 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12909 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                _8028 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8028] = 30
                                mem[_8028 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    _8149 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8149 + 68] = mem[idx + _8028 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8149 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8149 + -mem[64] + 100
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8691 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8691] = 30
                                mem[_8691 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _8910 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8910 + 68] = mem[idx + _8691 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8910 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8910 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _9702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9702] = 30
                                mem[_9702 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    _9989 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9989 + 68] = mem[idx + _9702 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9989 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9989 + -mem[64] + 100
                                if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11284 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11284] = 30
                                mem[_11284 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _11593 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11593 + 68] = mem[idx + _11284 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11593 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11593 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _12588 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12588] = 30
                                mem[_12588 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12908 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12908 + 68] = mem[idx + _12588 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12908 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12908 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8503] = 30
                            mem[_8503 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _8690 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8690 + 68] = mem[idx + _8503 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8690 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8690 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9437 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9437] = 30
                            mem[_9437 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _9701 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9701 + 68] = mem[idx + _9437 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9701 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9701 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _10623 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10623] = 30
                            mem[_10623 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10934 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10934 + 68] = mem[idx + _10623 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10934 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10934 + -mem[64] + 100
                            if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12267 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12267] = 30
                            mem[_12267 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _12587 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12587 + 68] = mem[idx + _12267 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12587 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12587 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _13467 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13467] = 30
                            mem[_13467 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13734 + 68] = mem[idx + _13467 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13734 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13734 + -mem[64] + 100
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    _7789 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7789] = 30
                                    mem[_7789 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg1 * stor17 / 10^18:
                                        _7858 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _7858 + 68] = mem[idx + _7789 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7858 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _7858 + -mem[64] + 100
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    _8147 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8147] = 30
                                    mem[_8147 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg1 * stor17 / 10^18:
                                        _8308 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _8308 + 68] = mem[idx + _8147 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8308 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8308 + -mem[64] + 100
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    _8908 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8908] = 30
                                    mem[_8908 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg1 * stor17 / 10^18:
                                        _9176 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _9176 + 68] = mem[idx + _8908 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9176 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9176 + -mem[64] + 100
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10324 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10324] = 30
                                    mem[_10324 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                        _10622 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _10622 + 68] = mem[idx + _10324 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10622 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10622 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                    _11591 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11591] = 30
                                    mem[_11591 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * stor17 / 10^18 <= stor17:
                                        if stor17 < arg1 * stor17 / 10^18:
                                            revert with 0, 17
                                        stor17 += -1 * arg1 * stor17 / 10^18
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _11929 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11929 + 68] = mem[idx + _11591 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11929 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11929 + -mem[64] + 100
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8027 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8027] = 30
                                mem[_8027 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8146 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8146 + 68] = mem[idx + _8027 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8146 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8146 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8688 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8688] = 30
                                mem[_8688 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8907 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8907 + 68] = mem[idx + _8688 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8907 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8907 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _9699 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9699] = 30
                                mem[_9699 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    _9987 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9987 + 68] = mem[idx + _9699 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9987 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9987 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11283 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11283] = 30
                                mem[_11283 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _11590 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11590 + 68] = mem[idx + _11283 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11590 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11590 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _12585 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12585] = 30
                                mem[_12585 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12906 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12906 + 68] = mem[idx + _12585 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12906 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12906 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                _8026 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8026] = 30
                                mem[_8026 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8145 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8145 + 68] = mem[idx + _8026 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8145 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8145 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8686 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8686] = 30
                                mem[_8686 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    _8906 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8906 + 68] = mem[idx + _8686 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8906 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8906 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _9697 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9697] = 30
                                mem[_9697 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                    _9986 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9986 + 68] = mem[idx + _9697 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9986 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9986 + -mem[64] + 100
                                if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11282 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11282] = 30
                                mem[_11282 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _11589 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11589 + 68] = mem[idx + _11282 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11589 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11589 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _12583 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12583] = 30
                                mem[_12583 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12905 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12905 + 68] = mem[idx + _12583 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12905 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12905 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8502] = 30
                            mem[_8502 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8685 + 68] = mem[idx + _8502 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8685 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8685 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _9435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9435] = 30
                            mem[_9435 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _9696 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9696 + 68] = mem[idx + _9435 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9696 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9696 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _10620 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10620] = 30
                            mem[_10620 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10931 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10931 + 68] = mem[idx + _10620 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10931 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10931 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12266] = 30
                            mem[_12266 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _12582 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12582 + 68] = mem[idx + _12266 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12582 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12582 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _13464 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13464] = 30
                            mem[_13464 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13731 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13731 + 68] = mem[idx + _13464 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13731 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13731 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                _8025 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8025] = 30
                                mem[_8025 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                    _8144 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8144 + 68] = mem[idx + _8025 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8144 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8144 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8683 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8683] = 30
                                mem[_8683 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    _8905 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8905 + 68] = mem[idx + _8683 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8905 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8905 + -mem[64] + 100
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                _9694 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9694] = 30
                                mem[_9694 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                    _9985 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9985 + 68] = mem[idx + _9694 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9985 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9985 + -mem[64] + 100
                                if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11281 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11281] = 30
                                mem[_11281 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _11588 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11588 + 68] = mem[idx + _11281 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11588 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11588 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _12580 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12580] = 30
                                mem[_12580 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12904 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12904 + 68] = mem[idx + _12580 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12904 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12904 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8501 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8501] = 30
                            mem[_8501 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _8682 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8682 + 68] = mem[idx + _8501 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8682 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8682 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9433 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9433] = 30
                            mem[_9433 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _9693 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9693 + 68] = mem[idx + _9433 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9693 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9693 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            _10618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10618] = 30
                            mem[_10618 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _10929 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10929 + 68] = mem[idx + _10618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10929 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10929 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12265 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12265] = 30
                            mem[_12265 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _12579 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12579 + 68] = mem[idx + _12265 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12579 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12579 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _13462 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13462] = 30
                            mem[_13462 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13729 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13729 + 68] = mem[idx + _13462 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13729 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13729 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _8500 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8500] = 30
                            mem[_8500 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _8681 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8681 + 68] = mem[idx + _8500 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8681 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8681 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _9431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9431] = 30
                            mem[_9431 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _9692 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9692 + 68] = mem[idx + _9431 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9692 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9692 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _10616 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10616] = 30
                            mem[_10616 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10928 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10928 + 68] = mem[idx + _10616 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10928 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10928 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12264] = 30
                            mem[_12264 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _12578 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12578 + 68] = mem[idx + _12264 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12578 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12578 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _13460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13460] = 30
                            mem[_13460 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13728 + 68] = mem[idx + _13460 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13728 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13728 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9175] = 30
                        mem[_9175 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _9430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9430 + 68] = mem[idx + _9175 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9430 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9430 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10322] = 30
                        mem[_10322 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _10615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10615 + 68] = mem[idx + _10322 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10615 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10615 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _11586 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11586] = 30
                        mem[_11586 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _11925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11925 + 68] = mem[idx + _11586 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11925 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11925 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _13207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13207] = 30
                        mem[_13207 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _13459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13459 + 68] = mem[idx + _13207 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13459 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13459 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _14077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14077] = 30
                        mem[_14077 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _14273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14273 + 68] = mem[idx + _14077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14273 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _14273 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 10
                    if stor10[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 9
                        _7456 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7456] = 30
                        mem[_7456 + 32] = 'SafeMath: subtraction overflow'
                        if stor9[stor16[idx]] > t:
                            _7472 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7472 + 68] = mem[idx + _7456 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7472 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7472 + -mem[64] + 100
                        if t < stor9[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 10
                        _7561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7561] = 30
                        mem[_7561 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[stor16[idx]] <= s:
                            if s < stor10[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor10[stor16[idx]]
                            t = t - stor9[stor16[idx]]
                            continue 
                        _7577 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7577 + 68] = mem[idx + _7561 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7577 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7577 + -mem[64] + 100
                    _7457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7457] = 26
                    mem[_7457 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    _7732 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7732] = 30
                                    mem[_7732 + 32] = 'SafeMath: subtraction overflow'
                                    _7943 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7943] = 30
                                    mem[_7943 + 32] = 'SafeMath: subtraction overflow'
                                    _8510 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8510] = 30
                                    mem[_8510 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _9718 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9718] = 30
                                    mem[_9718 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor9[address(msg.sender)]:
                                        _10011 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _10011 + 68] = mem[idx + _9718 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10011 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10011 + -mem[64] + 100
                                    if stor9[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 9
                                    _10952 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10952] = 30
                                    mem[_10952 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor17:
                                        if stor17 < 0:
                                            revert with 0, 17
                                        if totalFees > !arg1:
                                            revert with 0, 17
                                        if totalFees + arg1 < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += arg1
                                    _11297 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _11297 + 68] = mem[idx + _10952 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11297 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11297 + -mem[64] + 100
                                if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                    revert with 0, 17
                                if not arg1 * stor23 / 100:
                                    revert with 0, 18
                                if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _7866 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7866] = 30
                                mem[_7866 + 32] = 'SafeMath: subtraction overflow'
                                _8323 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8323] = 30
                                mem[_8323 + 32] = 'SafeMath: subtraction overflow'
                                _9193 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9193] = 30
                                mem[_9193 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                    _9444 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9444 + 68] = mem[idx + _9193 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9444 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9444 + -mem[64] + 100
                                if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10635 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10635] = 30
                                mem[_10635 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10951 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10951 + 68] = mem[idx + _10635 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10951 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10951 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11949 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11949] = 30
                                mem[_11949 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12276 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12276 + 68] = mem[idx + _11949 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12276 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12276 + -mem[64] + 100
                            if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                revert with 0, 17
                            if not arg1 * stor24 / 100:
                                revert with 0, 18
                            if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor23 / 100:
                                _7865 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7865] = 30
                                mem[_7865 + 32] = 'SafeMath: subtraction overflow'
                                _8322 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8322] = 30
                                mem[_8322 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                    _8509 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8509 + 68] = mem[idx + _8322 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8509 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8509 + -mem[64] + 100
                                if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _9191 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9191] = 30
                                mem[_9191 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                    _9443 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9443 + 68] = mem[idx + _9191 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9443 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9443 + -mem[64] + 100
                                if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10634 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10634] = 30
                                mem[_10634 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10950 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10950 + 68] = mem[idx + _10634 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10950 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10950 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11947 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11947] = 30
                                mem[_11947 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12275 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12275 + 68] = mem[idx + _11947 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12275 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12275 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8161 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8161] = 30
                            mem[_8161 + 32] = 'SafeMath: subtraction overflow'
                            _8932 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8932] = 30
                            mem[_8932 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                _9190 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9190 + 68] = mem[idx + _8932 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9190 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9190 + -mem[64] + 100
                            if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _10009 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10009] = 30
                            mem[_10009 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                _10335 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10335 + 68] = mem[idx + _10009 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10335 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10335 + -mem[64] + 100
                            if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11607 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11607] = 30
                            mem[_11607 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11946 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11946 + 68] = mem[idx + _11607 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11946 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11946 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12928] = 30
                            mem[_12928 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13216 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13216 + 68] = mem[idx + _12928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13216 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13216 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                _7864 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7864] = 30
                                mem[_7864 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                    _7942 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7942 + 68] = mem[idx + _7864 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7942 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7942 + -mem[64] + 100
                                if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                    revert with 0, 17
                                _8320 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8320] = 30
                                mem[_8320 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _8508 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8508 + 68] = mem[idx + _8320 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8508 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8508 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _9188 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9188] = 30
                                mem[_9188 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                    _9442 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9442 + 68] = mem[idx + _9188 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9442 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9442 + -mem[64] + 100
                                if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10633 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10633] = 30
                                mem[_10633 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor9[address(msg.sender)]:
                                    _10949 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10949 + 68] = mem[idx + _10633 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10949 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10949 + -mem[64] + 100
                                if stor9[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _11944 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11944] = 30
                                mem[_11944 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor17:
                                    if stor17 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12274 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12274 + 68] = mem[idx + _11944 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12274 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12274 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8160] = 30
                            mem[_8160 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _8319 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8319 + 68] = mem[idx + _8160 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8319 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8319 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8930] = 30
                            mem[_8930 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _9187 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9187 + 68] = mem[idx + _8930 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9187 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9187 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _10007 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10007] = 30
                            mem[_10007 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _10333 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10333 + 68] = mem[idx + _10007 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10333 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10333 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11606 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11606] = 30
                            mem[_11606 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11943 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11943 + 68] = mem[idx + _11606 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11943 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11943 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12926 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12926] = 30
                            mem[_12926 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13214 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13214 + 68] = mem[idx + _12926 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13214 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13214 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _8159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8159] = 30
                            mem[_8159 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                _8318 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8318 + 68] = mem[idx + _8159 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8318 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8318 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8928] = 30
                            mem[_8928 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                _9186 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9186 + 68] = mem[idx + _8928 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9186 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9186 + -mem[64] + 100
                            if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _10005 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10005] = 30
                            mem[_10005 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10332 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10332 + 68] = mem[idx + _10005 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10332 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10332 + -mem[64] + 100
                            if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11605 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11605] = 30
                            mem[_11605 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor9[address(msg.sender)]:
                                _11942 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11942 + 68] = mem[idx + _11605 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11942 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11942 + -mem[64] + 100
                            if stor9[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _12924 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12924] = 30
                            mem[_12924 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor17:
                                if stor17 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13213 + 68] = mem[idx + _12924 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13213 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13213 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8699] = 30
                        mem[_8699 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                            _8927 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8927 + 68] = mem[idx + _8699 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8927 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8927 + -mem[64] + 100
                        if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9716] = 30
                        mem[_9716 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                            _10004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10004 + 68] = mem[idx + _9716 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10004 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10004 + -mem[64] + 100
                        if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10947 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10947] = 30
                        mem[_10947 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _11293 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11293 + 68] = mem[idx + _10947 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11293 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11293 + -mem[64] + 100
                        if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12598 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12598] = 30
                        mem[_12598 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor9[address(msg.sender)]:
                            _12923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12923 + 68] = mem[idx + _12598 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12923 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12923 + -mem[64] + 100
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _13746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13746] = 30
                        mem[_13746 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor17:
                            if stor17 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13951 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13951 + 68] = mem[idx + _13746 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13951 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13951 + -mem[64] + 100
                    if arg1 and stor17 / 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        if not arg1 * stor24 / 100:
                            if not arg1 * stor23 / 100:
                                _7862 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7862] = 30
                                mem[_7862 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _7941 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7941 + 68] = mem[idx + _7862 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7941 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _7941 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _8316 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8316] = 30
                                mem[_8316 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _8506 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8506 + 68] = mem[idx + _8316 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8506 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8506 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                _9184 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9184] = 30
                                mem[_9184 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor17 / 10^18:
                                    _9441 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9441 + 68] = mem[idx + _9184 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9441 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9441 + -mem[64] + 100
                                if arg1 * stor17 / 10^18 < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                _10632 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10632] = 30
                                mem[_10632 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                    _10946 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _10946 + 68] = mem[idx + _10632 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10946 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10946 + -mem[64] + 100
                                if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 9
                                stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                                _11940 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11940] = 30
                                mem[_11940 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * stor17 / 10^18 <= stor17:
                                    if stor17 < arg1 * stor17 / 10^18:
                                        revert with 0, 17
                                    stor17 += -1 * arg1 * stor17 / 10^18
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _12272 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12272 + 68] = mem[idx + _11940 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12272 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12272 + -mem[64] + 100
                            if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                revert with 0, 17
                            if not arg1 * stor23 / 100:
                                revert with 0, 18
                            if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8158] = 30
                            mem[_8158 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8315 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8315 + 68] = mem[idx + _8158 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8315 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8315 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8925 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8925] = 30
                            mem[_8925 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _9183 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9183 + 68] = mem[idx + _8925 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9183 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9183 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _10002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10002] = 30
                            mem[_10002 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _10330 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10330 + 68] = mem[idx + _10002 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10330 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10330 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11604 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11604] = 30
                            mem[_11604 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11939 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11939 + 68] = mem[idx + _11604 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11939 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11939 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12921 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12921] = 30
                            mem[_12921 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13211 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13211 + 68] = mem[idx + _12921 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13211 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13211 + -mem[64] + 100
                        if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                            revert with 0, 17
                        if not arg1 * stor24 / 100:
                            revert with 0, 18
                        if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor23 / 100:
                            _8157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8157] = 30
                            mem[_8157 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor17 / 10^18:
                                _8314 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8314 + 68] = mem[idx + _8157 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8314 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8314 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < 0:
                                revert with 0, 17
                            _8923 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8923] = 30
                            mem[_8923 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _9182 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9182 + 68] = mem[idx + _8923 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9182 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9182 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _10000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10000] = 30
                            mem[_10000 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                _10329 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10329 + 68] = mem[idx + _10000 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10329 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10329 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11603 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11603] = 30
                            mem[_11603 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11938 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11938 + 68] = mem[idx + _11603 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11938 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11938 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12919 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12919] = 30
                            mem[_12919 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13210 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13210 + 68] = mem[idx + _12919 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13210 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13210 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8698 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8698] = 30
                        mem[_8698 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor17 / 10^18:
                            _8922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8922 + 68] = mem[idx + _8698 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8922 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < 0:
                            revert with 0, 17
                        _9714 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9714] = 30
                        mem[_9714 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _9999 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9999 + 68] = mem[idx + _9714 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9999 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9999 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10944 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10944] = 30
                        mem[_10944 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _11290 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11290 + 68] = mem[idx + _10944 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11290 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11290 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12597] = 30
                        mem[_12597 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12918 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12918 + 68] = mem[idx + _12597 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12918 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12918 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13743] = 30
                        mem[_13743 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13948 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13948 + 68] = mem[idx + _13743 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13948 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13948 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor24 / 100:
                        if not arg1 * stor23 / 100:
                            _8156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8156] = 30
                            mem[_8156 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                _8313 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8313 + 68] = mem[idx + _8156 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8313 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8313 + -mem[64] + 100
                            if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                revert with 0, 17
                            _8920 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8920] = 30
                            mem[_8920 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _9181 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9181 + 68] = mem[idx + _8920 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9181 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9181 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            _9997 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9997] = 30
                            mem[_9997 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                _10328 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10328 + 68] = mem[idx + _9997 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10328 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10328 + -mem[64] + 100
                            if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            _11602 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11602] = 30
                            mem[_11602 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                                _11937 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _11937 + 68] = mem[idx + _11602 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11937 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11937 + -mem[64] + 100
                            if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 9
                            stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                            _12916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12916] = 30
                            mem[_12916 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor17 / 10^18 <= stor17:
                                if stor17 < arg1 * stor17 / 10^18:
                                    revert with 0, 17
                                stor17 += -1 * arg1 * stor17 / 10^18
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _13209 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13209 + 68] = mem[idx + _12916 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13209 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13209 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8697 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8697] = 30
                        mem[_8697 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8919 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8919 + 68] = mem[idx + _8697 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8919 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8919 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9712 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9712] = 30
                        mem[_9712 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _9996 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9996 + 68] = mem[idx + _9712 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9996 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9996 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        _10942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10942] = 30
                        mem[_10942 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _11288 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11288 + 68] = mem[idx + _10942 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11288 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11288 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12596 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12596] = 30
                        mem[_12596 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12915 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12915 + 68] = mem[idx + _12596 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12915 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12915 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13741 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13741] = 30
                        mem[_13741 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13946 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13946 + 68] = mem[idx + _13741 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13946 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13946 + -mem[64] + 100
                    if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                        revert with 0, 17
                    if not arg1 * stor24 / 100:
                        revert with 0, 18
                    if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        _8696 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8696] = 30
                        mem[_8696 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                            _8918 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8918 + 68] = mem[idx + _8696 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8918 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8918 + -mem[64] + 100
                        if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _9710 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9710] = 30
                        mem[_9710 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                            _9995 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9995 + 68] = mem[idx + _9710 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9995 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9995 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                            revert with 0, 17
                        _10940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10940] = 30
                        mem[_10940 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                            _11287 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11287 + 68] = mem[idx + _10940 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11287 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11287 + -mem[64] + 100
                        if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        _12595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12595] = 30
                        mem[_12595 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            _12914 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12914 + 68] = mem[idx + _12595 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12914 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12914 + -mem[64] + 100
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 9
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        _13739 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13739] = 30
                        mem[_13739 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 10^18 <= stor17:
                            if stor17 < arg1 * stor17 / 10^18:
                                revert with 0, 17
                            stor17 += -1 * arg1 * stor17 / 10^18
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _13945 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13945 + 68] = mem[idx + _13739 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13945 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13945 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _9440 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9440] = 30
                    mem[_9440 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                        _9709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9709 + 68] = mem[idx + _9440 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9709 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9709 + -mem[64] + 100
                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _10630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10630] = 30
                    mem[_10630 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                        _10939 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10939 + 68] = mem[idx + _10630 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10939 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10939 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    _11935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11935] = 30
                    mem[_11935 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                        _12268 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12268 + 68] = mem[idx + _11935 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12268 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12268 + -mem[64] + 100
                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    _13472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13472] = 30
                    mem[_13472 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                        _13738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13738 + 68] = mem[idx + _13472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13738 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13738 + -mem[64] + 100
                    if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 9
                    stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                    _14278 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14278] = 30
                    mem[_14278 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 10^18 <= stor17:
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _14373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _14373 + 68] = mem[idx + _14278 + 32]
                        idx = idx + 32
                        continue 
                    mem[_14373 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _14373 + -mem[64] + 100
                if t < stor17 / 10^18:
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if arg1 * stor23 / 100:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor24 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > -1 * arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (-1 * arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and stor17 / 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor17 / 10^18 / arg1 != stor17 / 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < 0:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor17 / 10^18 > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor17 / 10^18 / arg1 * stor22 / 100 != stor17 / 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                        revert with 0, 17
                                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < 0:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and stor17 / 10^18 > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * stor17 / 10^18 / arg1 * stor24 / 100 != stor17 / 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if 0 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and stor17 / 10^18 > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * stor17 / 10^18 / arg1 * stor23 / 100 != stor17 / 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * stor17 / 10^18 > arg1 * stor17 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * stor17 / 10^18 < arg1 * stor22 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) < arg1 * stor24 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * stor17 / 10^18 > (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * stor17 / 10^18) - (arg1 * stor22 / 100 * stor17 / 10^18) - (arg1 * stor24 / 100 * stor17 / 10^18) < arg1 * stor23 / 100 * stor17 / 10^18:
                                        revert with 0, 17
                        if arg1 * stor17 / 10^18 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * stor17 / 10^18
                        if arg1 * stor17 / 10^18 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * stor17 / 10^18:
                            revert with 0, 17
                        stor17 += -1 * arg1 * stor17 / 10^18
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if arg1 * stor23 / 100:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor23 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor24 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor24 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor24 / 100 * t / s < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor24 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > -1 * arg1 * stor24 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor24 / 100 * t / s < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * t / s < 0:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * t / s < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * stor22 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * t / s < 0:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > -1 * arg1 * stor22 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * t / s < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * t / s > -1 * arg1 * stor22 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * t / s < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > (-1 * arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (-1 * arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * t / s > -1 * arg1 * stor22 / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * stor22 / 100 * t / s < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > (-1 * arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (-1 * arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s) < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                        if 0 > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < 0:
                            revert with 0, 17
                        if 0 > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < 0:
                            revert with 0, 17
                    else:
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > (arg1 * t / s) - (arg1 * stor24 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < 0:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > (arg1 * t / s) - (arg1 * stor24 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor24 / 100 * t / s) < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * stor24 / 100:
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                        revert with 0, 17
                                    if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < 0:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                            else:
                                if arg1 * stor24 / 100 and t / s > -1 / arg1 * stor24 / 100:
                                    revert with 0, 17
                                if not arg1 * stor24 / 100:
                                    revert with 0, 18
                                if arg1 * stor24 / 100 * t / s / arg1 * stor24 / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg1 * stor23 / 100:
                                    if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * t / s > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s) < 0:
                                        revert with 0, 17
                                else:
                                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                                        revert with 0, 17
                                    if not arg1 * stor23 / 100:
                                        revert with 0, 18
                                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor24 / 100 * t / s > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) < arg1 * stor24 / 100 * t / s:
                                        revert with 0, 17
                                    if arg1 * stor23 / 100 * t / s > (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if (arg1 * t / s) - (arg1 * stor22 / 100 * t / s) - (arg1 * stor24 / 100 * t / s) < arg1 * stor23 / 100 * t / s:
                                        revert with 0, 17
                        if arg1 * t / s > stor9[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor9[address(msg.sender)] < arg1 * t / s:
                            revert with 0, 17
                        stor9[address(msg.sender)] += -1 * arg1 * t / s
                        if arg1 * t / s > stor17:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor17 < arg1 * t / s:
                            revert with 0, 17
                        stor17 += -1 * arg1 * t / s
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
