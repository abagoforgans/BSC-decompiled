contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - swapFee()
#  - burnToken(uint256 arg1)
#  - sub_a53226c5(?)
#  - transfer(address arg1, uint256 arg2)
#  - sub_c258ef60(?)
#  - sub_d935b465(?)
#  - _fallback()
#
const name = 'Elon Tiger Inu', 0

const totalSupply = 10^18

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 sub_bfa31ff9;
uint256 _maxWallet;
uint8 stor20;
uint8 stor20; offset 8
uint256 _buyLiquidityFee;
uint256 stor22;
uint256 _buyMarketingFee;
uint256 stor24;
uint256 sub_401aa5c0;
uint256 stor26;
uint256 _sellLiquidityFee;
uint256 stor28;
uint256 _sellMarketingFee;
uint256 stor30;
uint256 sub_7598f8bc;
uint256 stor32;
uint256 sub_7b6ef96c;
uint256 sub_1df2b866;
uint256 sub_6035e8c7;
uint256 _charityFee;
uint256 sub_5c47f9a1;
uint256 stor39;
uint256 sub_77d6b254;
uint256 sub_54ff0846;
uint8 sub_1b66d020;
uint256 stor43;
uint256 stor44;
uint8 stor45;
uint256 sub_2db68603;
address stor47;
uint8 stor48; offset 160
uint8 sub_0bc74f93; offset 168
address sub_6d77ecd1Address;
mapping of uint8 stor49;
address stor50;
address stor51;
address stor52;
address uniswapV2PairAddress;
uint256 sub_f3922ca2;
uint256 stor57;
uint256 stor262B;
uint256 stor6A96;

function sub_0bc74f93(?) {
    return bool(sub_0bc74f93)
}

function sub_1b66d020(?) {
    return bool(sub_1b66d020)
}

function sub_1df2b866(?) {
    return sub_1df2b866
}

function sub_2db68603(?) {
    return sub_2db68603
}

function sub_401aa5c0(?) {
    return sub_401aa5c0
}

function _charityFee() {
    return _charityFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_54ff0846(?) {
    return sub_54ff0846
}

function sub_5c47f9a1(?) {
    return sub_5c47f9a1
}

function sub_6035e8c7(?) {
    return sub_6035e8c7
}

function sub_6d77ecd1(?) {
    return sub_6d77ecd1Address
}

function sub_7598f8bc(?) {
    return sub_7598f8bc
}

function sub_77d6b254(?) {
    return sub_77d6b254
}

function sub_7b6ef96c(?) {
    return sub_7b6ef96c
}

function _maxWallet() {
    return _maxWallet
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function owner() {
    return owner
}

function sub_bfa31ff9(?) {
    return sub_bfa31ff9
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f3922ca2(?) {
    return sub_f3922ca2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
}

function updateTaxFreeBlocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor44 = arg1
}

function sub_fd1e1fce(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not sub_0bc74f93
    sub_0bc74f93 = 1
    emit 0x5c571122: 1
}

function sub_28269974(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
    emit 0x60bd46fa: arg1
}

function sub_7daf6daa(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    emit 0xcde22129: arg1
}

function sub_b6b04c0a(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 1 == bool(sub_0bc74f93)
    sub_0bc74f93 = 0
    emit 0x5c571122: 0
}

function sub_3000aa82(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3922ca2 = arg1
    emit 0xbb53dfee: arg1
}

function sub_b4d1dffd(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor20.field_8)
    uint8(stor20.field_8) = 1
    emit 0x7e01fabb: 1
}

function sub_a76a1eef(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 1 == bool(uint8(stor20.field_8))
    uint8(stor20.field_8) = 0
    emit 0x7e01fabb: 0
}

function updatePairSwapped(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor45 = uint8(arg1)
}

function enablePriceOracle() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor48:
        revert with 0, 'price oracle already enabled'
    stor48 = 1
    emit 0x9c3d29ba: 1
}

function disablePriceOracle() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor48) != 1:
        revert with 0, 'price oracle already disabled'
    stor48 = 0
    emit 0x9c3d29ba: 0
}

function sub_8ceaeb53(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
}

function sub_dda81d65(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
}

function sub_ed5d0f3f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor7[address(arg1)]
    stor7[address(arg1)] = 0
}

function removeBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor49[address(arg1)]
    stor49[address(arg1)] = 0
}

function addBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
}

function sub_86cc355e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
}

function addExchange(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
}

function sub_73654fa3(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor20.field_0):
        revert with 0, 'autoSwap already enabled'
    uint8(stor20.field_0) = 1
    emit autoSwapUpdate(1);
}

function sub_bc833778(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor49[address(arg1)]
    stor49[address(arg1)] = 1
}

function sub_7c7fffa4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, address(arg1));
    owner = address(arg1)
}

function sub_6c9cf644(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(uint8(stor20.field_0)) != 1:
        revert with 0, 'autoSwap already disabled'
    uint8(stor20.field_0) = 0
    emit autoSwapUpdate(0);
}

function updateOraclePriceFeed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6d77ecd1Address = arg1
    stor47 = arg1
    emit 0x5afeeaf0: arg1
}

function setDipPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 95:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'percent must be less than or equal to 95'
    sub_2db68603 = arg1
    emit UpdateDip(arg1);
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: address is the zero address'
    stor51 = arg1
    stor7[address(arg1)] = 1
}

function sub_735451eb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: address is the zero address'
    stor52 = address(arg1)
    stor7[address(arg1)] = 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: marketingAddress is the zero address'
    stor50 = arg1
    stor7[address(arg1)] = 1
}

function sub_6d0f99ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'BEP20: send the zero address'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg1 / 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    _maxWallet = 10^18 * arg1 / 1000
    emit MaxWalletAmountUpdated((10^18 * arg1 / 1000));
}

function setPriceImpact(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'max price impact must be less than or equal to 1000'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant prevent sells, choose value greater than 0'
    sub_bfa31ff9 = arg1
    emit PriceImpactUpdated(arg1);
}

function sub_062cf443(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        stor57 = 0
        emit 0xe84a03a4: 0
    else:
        if arg1 and 100 * 10^6 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 100 * 10^6 * arg1 / arg1 != 100 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        stor57 = 100 * 10^6 * arg1
        emit 0xe84a03a4: (100 * 10^6 * arg1)
}

function getLatestPrice() {
    require ext_code.size(stor47)
    staticcall stor47.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[22 len 10], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           Mask(80, 0, ext_call.return_data[128])
}

function sub_5d8cf1cf(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of buy fees must be less than 50'
    sub_1df2b866 = arg1
    sub_7b6ef96c = arg2
    sub_6035e8c7 = arg3
}

function sub_218941d7(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_54ff0846:
        sub_77d6b254 = 0
        sub_54ff0846 = 0
    else:
        if sub_54ff0846 and sub_2db68603 > -1 / sub_54ff0846:
            revert with 0, 17
        if not sub_54ff0846:
            revert with 0, 18
        if sub_54ff0846 * sub_2db68603 / sub_54ff0846 != sub_2db68603:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_77d6b254 = sub_54ff0846 * sub_2db68603 / 100
        sub_54ff0846 = sub_54ff0846 * sub_2db68603 / 100
    sub_1b66d020 = 0
    stor43 = 0
}

function sub_40895761(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ef6c6a34(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_27e9a49b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 49
        stor49[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b25a5d44(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 49
        stor49[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_dfba4216(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e5556e95(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_136b1610(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == address(arg1):
        revert with 0, 'could not rescue current token'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'there is not enough amount of token'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 57005 == arg1:
        return stor3[address(arg1)]
    if stor2[address(arg1)] > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor15 < stor6A96:
        if not stor15 / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor15 / 10^18)
    if 10^18 < stor262B:
        if not stor15 / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor15 / 10^18)
    if stor6A96 > stor15:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor15 < stor6A96:
        revert with 0, 17
    if stor262B > 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 10^18 < stor262B:
        revert with 0, 17
    if stor15 - stor6A96 < stor15 / 10^18:
        if not stor15 / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor15 / 10^18)
    if not -stor262B + 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor15 - stor6A96 / -stor262B + 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor15 - stor6A96 / -stor262B + 10^18)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of sell fees must be less than 50'
    if arg4 > !arg5:
        revert with 0, 17
    if arg4 + arg5 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + arg5 + arg6 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of buy fees must be less than 50'
    _buyMarketingFee = arg1
    _buyLiquidityFee = arg2
    sub_401aa5c0 = arg3
    _sellMarketingFee = arg4
    _sellLiquidityFee = arg5
    sub_7598f8bc = arg6
    stor24 = arg1
    stor22 = arg2
    stor26 = arg3
    stor30 = arg4
    stor28 = arg5
    stor32 = arg6
    if arg5 > !arg4:
        revert with 0, 17
    if arg5 + arg4 < arg5:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg4 > !_charityFee:
        revert with 0, 17
    if _charityFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor39 = arg5 + arg4 + _charityFee
    emit FeesUpdated(_buyMarketingFee, _buyLiquidityFee, sub_401aa5c0, _sellMarketingFee, _sellLiquidityFee, sub_7598f8bc);
}

function getTokenPrice() {
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not stor45:
        if not stor48:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) and stor57 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * stor57 and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * stor57:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]):
                    revert with 0, 18
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * stor57 / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if Mask(112, 0, ext_call.return_data[32]) and stor57 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * stor57 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * stor57:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]):
                    revert with 0, 18
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * stor57 * 10^ext_call.return_data[31 len 1] / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and stor57 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * stor57 and s * t > -1 / Mask(112, 0, ext_call.return_data[32]) * stor57:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * stor57 * s * t / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(this.address)
        staticcall this.address.0x8e15f473 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[32] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32] and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32] / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[32] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[32] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32] and s * t > -1 / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]):
            revert with 0, 18
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[32] * s * t / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not stor48:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and stor57 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * stor57 and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * stor57:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * stor57 / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and stor57 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * stor57 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * stor57:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * stor57 * 10^ext_call.return_data[31 len 1] / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and stor57 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * stor57 and s * t > -1 / Mask(112, 0, ext_call.return_data[0]) * stor57:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]):
            revert with 0, 18
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * stor57 * s * t / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    require ext_code.size(this.address)
    staticcall this.address.0x8e15f473 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[32] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]):
            revert with 0, 18
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[32] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]):
            revert with 0, 18
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[32] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] and s * t > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32]:
        revert with 0, 17
    if not uint8(ext_call.return_data[0]):
        revert with 0, 18
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 18
    return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[32] * s * t / uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
}

function sub_ea0bb833(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not _sellMarketingFee:
        if not stor39:
            revert with 0, 'SafeMath: division by zero', 0
        if not _sellLiquidityFee:
            if not stor39:
                revert with 0, 'SafeMath: division by zero', 0
            if not sub_5c47f9a1:
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if sub_5c47f9a1 and 100 > -1 / sub_5c47f9a1:
                    revert with 0, 17
                if not sub_5c47f9a1:
                    revert with 0, 18
                if 100 * sub_5c47f9a1 / sub_5c47f9a1 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * sub_5c47f9a1 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / eth.balance(this.address) != 100 * sub_5c47f9a1 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            if _sellLiquidityFee and 100 > -1 / _sellLiquidityFee:
                revert with 0, 17
            if not _sellLiquidityFee:
                revert with 0, 18
            if 100 * _sellLiquidityFee / _sellLiquidityFee != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor39:
                revert with 0, 'SafeMath: division by zero', 0
            if not sub_5c47f9a1:
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if sub_5c47f9a1 and 100 > -1 / sub_5c47f9a1:
                    revert with 0, 17
                if not sub_5c47f9a1:
                    revert with 0, 18
                if 100 * sub_5c47f9a1 / sub_5c47f9a1 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * sub_5c47f9a1 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / eth.balance(this.address) != 100 * sub_5c47f9a1 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
    else:
        if _sellMarketingFee and 100 > -1 / _sellMarketingFee:
            revert with 0, 17
        if not _sellMarketingFee:
            revert with 0, 18
        if 100 * _sellMarketingFee / _sellMarketingFee != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not stor39:
            revert with 0, 'SafeMath: division by zero', 0
        if not _sellLiquidityFee:
            if not stor39:
                revert with 0, 'SafeMath: division by zero', 0
            if not sub_5c47f9a1:
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / eth.balance(this.address) != 100 * _sellMarketingFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if sub_5c47f9a1 and 100 > -1 / sub_5c47f9a1:
                    revert with 0, 17
                if not sub_5c47f9a1:
                    revert with 0, 18
                if 100 * sub_5c47f9a1 / sub_5c47f9a1 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / eth.balance(this.address) != 100 * _sellMarketingFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * sub_5c47f9a1 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / eth.balance(this.address) != 100 * sub_5c47f9a1 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            if _sellLiquidityFee and 100 > -1 / _sellLiquidityFee:
                revert with 0, 17
            if not _sellLiquidityFee:
                revert with 0, 18
            if 100 * _sellLiquidityFee / _sellLiquidityFee != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor39:
                revert with 0, 'SafeMath: division by zero', 0
            if not sub_5c47f9a1:
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / eth.balance(this.address) != 100 * _sellMarketingFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor39 / eth.balance(this.address) != 0 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 0 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if sub_5c47f9a1 and 100 > -1 / sub_5c47f9a1:
                    revert with 0, 17
                if not sub_5c47f9a1:
                    revert with 0, 18
                if 100 * sub_5c47f9a1 / sub_5c47f9a1 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor39:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor50 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / eth.balance(this.address) != 100 * _sellMarketingFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor50 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor51 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor51 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor52 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * sub_5c47f9a1 / stor39 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / eth.balance(this.address) != 100 * sub_5c47f9a1 / stor39:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor52 with:
                       value eth.balance(this.address) * 100 * sub_5c47f9a1 / stor39 / 100 wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
