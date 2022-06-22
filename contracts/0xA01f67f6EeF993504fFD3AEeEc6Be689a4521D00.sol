contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

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
mapping of uint8 stor18;
mapping of uint8 stor19;
address stor21;
address stor22;
address uniswapV2RouterAddress;
uint8 stor24; offset 160
uint8 stor24; offset 168
uint8 sub_86ea8459; offset 184
uint8 sub_ff599588; offset 192
uint128 stor24; offset 176
address uniswapV2PairAddress;
uint256 launchTime;
uint256 sub_3103a6cf;
uint256 sub_f60287fe;
uint256 sub_b6822c1f;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 _swapTokensAtAmount;
mapping of uint8 stor32;
mapping of uint8 stor33;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function _swapTokensAtAmount() {
    return _swapTokensAtAmount
}

function sub_3103a6cf(?) {
    return sub_3103a6cf
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
    return bool(stor33[address(arg1)])
}

function launchTime() {
    return launchTime
}

function _maxTxAmount() {
    return _maxTxAmount
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

function sub_a5d7144c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor32[address(arg1)])
}

function sub_b6822c1f(?) {
    return sub_b6822c1f
}

function preTrader(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function bots(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f60287fe(?) {
    return sub_f60287fe
}

function sub_ff599588(?) {
    return bool(sub_ff599588)
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor24.field_160) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinSwapTokensThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _swapTokensAtAmount = arg1
}

function unblockBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = 0
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

function toggleSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor24.field_176) = Mask(80, 0, arg1)
}

function sub_c097bbdc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = uint8(bool(arg2))
}

function setExcludeMaxWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor33[address(arg1)] = uint8(arg2)
}

function sub_3f8d7732(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3:
        revert with 0, 'max x3 and not launched'
    if launchTime:
        revert with 0, 'max x3 and not launched'
    sub_b6822c1f = arg1
}

function allowPreTrading(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor19[address(arg1)]):
        revert with 0, 'TOKEN: Already enabled.'
    stor19[address(arg1)] = uint8(arg2)
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

function sub_da2d1704(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if launchTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already launched or max 5 minuts.'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already launched or max 5 minuts.'
    sub_3103a6cf = arg1
    sub_f60287fe = 60 * arg1
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

function blockBots(address[] arg1) {
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
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        stor18[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function manualswap() {
    if stor21 != msg.sender:
        require msg.sender == stor22
    if stor2[address(this.address)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor6 / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    uint8(stor24.field_168) = 1
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
    allowance[address(this.address)][stor23] = stor2[address(this.address)] / stor6 / 10^18
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
    uint8(stor24.field_168) = 0
}

function manualsend() {
    if stor21 != msg.sender:
        require msg.sender == stor22
    if not eth.balance(this.address):
        if not eth.balance(this.address):
            call stor21 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor22 with:
                 gas 2300 wei
        else:
            if eth.balance(this.address) and 80 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor21 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor22 with:
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
            call stor21 with:
               value 20 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor22 with:
                 gas 2300 wei
        else:
            if eth.balance(this.address) and 80 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor21 with:
               value 20 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor22 with:
               value 80 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
}



}
