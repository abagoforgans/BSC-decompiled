contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'bidoubidou', 0

const totalSupply = 10^18

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 _liquidityFee;
uint256 sub_0a09095e;
mapping of uint8 stor19;
mapping of uint8 stor20;
address stor22;
address stor23;
address uniswapV2RouterAddress;
uint8 stor25; offset 160
uint8 stor25; offset 168
uint8 sub_86ea8459; offset 184
uint8 sub_ff599588; offset 192
uint64 stor25; offset 192
uint128 stor25; offset 176
address uniswapV2PairAddress;
uint256 launchTime;
uint256 _launchBlock;
uint256 sub_3bf7840c;
uint256 sub_840da3b4;
uint256 sub_275853a6;
uint8 sub_7141d189;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 _swapTokensAtAmount;
mapping of uint8 stor35;
mapping of uint8 stor36;
mapping of uint8 stor38;
mapping of uint8 stor39;

function sub_0a09095e(?) {
    return sub_0a09095e
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_275853a6(?) {
    return sub_275853a6
}

function _swapTokensAtAmount() {
    return _swapTokensAtAmount
}

function sub_3bf7840c(?) {
    return sub_3bf7840c
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function _liquidityFee() {
    return _liquidityFee
}

function isExcludedFromMaxWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor36[address(arg1)])
}

function sub_7141d189(?) {
    return bool(sub_7141d189)
}

function launchTime() {
    return launchTime
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_840da3b4(?) {
    return sub_840da3b4
}

function sub_86ea8459(?) {
    return bool(sub_86ea8459)
}

function owner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function sub_9b29abee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor38[address(arg1)])
}

function sub_a5d7144c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor35[address(arg1)])
}

function preTrader(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function bots(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function _launchBlock() {
    return _launchBlock
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f383877a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor39[address(arg1)])
}

function sub_ff599588(?) {
    return bool(sub_ff599588)
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor25.field_160) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1b6d804c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3bf7840c = arg1
}

function sub_46b4676d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_840da3b4 = arg1
}

function sub_0a3647c6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= 10^11
    sub_275853a6 = arg1
}

function setDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
}

function setMinSwapTokensThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _swapTokensAtAmount = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
}

function setMaxTxnAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= 10^13
    _maxTxAmount = arg1
}

function setMaxWalletSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= 10^13
    _maxWalletSize = arg1
}

function sub_c0e61de0(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7141d189 = uint8(bool(arg1))
}

function sub_bbf5de77(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3600:
        revert with 0, 'Max 1  hour'
    sub_0a09095e = arg1
}

function sub_cb0da419(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor25.field_192) = uint64(bool(arg1))
}

function toggleSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor25.field_176) = Mask(80, 0, arg1)
}

function sub_3c10bcce(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor38[address(arg1)] = uint8(bool(arg2))
}

function sub_57d9a2fb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor39[address(arg1)] = uint8(bool(arg2))
}

function sub_c097bbdc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor35[address(arg1)] = uint8(bool(arg2))
}

function setExcludeMaxWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor36[address(arg1)] = uint8(arg2)
}

function allowPreTrading(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor20[address(arg1)]):
        revert with 0, 'TOKEN: Already enabled.'
    stor20[address(arg1)] = uint8(arg2)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor6 / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor6 / 10^18)
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

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
    stor10 = arg2
    _liquidityFee = arg5
    stor9 = arg3
    stor11 = arg4
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 > !arg5:
        revert with 0, 17
    if arg1 + arg3 + arg5 > 20:
        revert with 0, 'max 20%'
    if stor10 > !stor11:
        revert with 0, 17
    if stor10 + stor11 > !arg5:
        revert with 0, 17
    if stor10 + stor11 + arg5 > 20:
        revert with 0, 'max 20%'
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
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function manualswap() {
    if stor22 != msg.sender:
        require msg.sender == stor23
    if stor2[address(this.address)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor6 / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    uint8(stor25.field_168) = 1
    mem[320] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor24] = stor2[address(this.address)] / stor6 / 10^18
    emit Approval((stor2[address(this.address)] / stor6 / 10^18), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor6 / 10^18
    idx = 0
    s = ceil32(return_data.size) + 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor6 / 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor25.field_168) = 0
}

function manualsend() {
    if stor22 != msg.sender:
        require msg.sender == stor23
    if not eth.balance(this.address):
        if not eth.balance(this.address):
            call stor22 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor23 with:
                 gas 2300 wei
        else:
            if eth.balance(this.address) and 80 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor22 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor23 with:
               value 80 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        if eth.balance(this.address) and 20 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 20 * eth.balance(this.address) / eth.balance(this.address) != 20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not eth.balance(this.address):
            call stor22 with:
               value 20 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor23 with:
                 gas 2300 wei
        else:
            if eth.balance(this.address) and 80 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor22 with:
               value 20 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor23 with:
               value 80 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
}



}
