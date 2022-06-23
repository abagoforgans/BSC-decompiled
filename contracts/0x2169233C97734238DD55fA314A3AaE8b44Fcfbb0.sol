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
uint256 stor6;
uint256 launchBlock;
uint256 sub_4e388cf5;
uint256 sub_9fa42726;
mapping of uint8 stor17;
address stor19;
address stor20;
address uniswapV2RouterAddress;
uint8 stor22; offset 160
uint8 stor22; offset 168
uint128 stor22; offset 176
address uniswapV2PairAddress;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 _swapTokensAtAmount;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function _swapTokensAtAmount() {
    return _swapTokensAtAmount
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_4e388cf5(?) {
    return sub_4e388cf5
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function sub_9fa42726(?) {
    return sub_9fa42726
}

function bots(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function launchBlock() {
    return launchBlock
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function removeLimits() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = 10^18
    _maxWalletSize = 10^18
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor22.field_160) = 1
    launchBlock = block.number
}

function setMinSwapTokensThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _swapTokensAtAmount = arg1
}

function toggleSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor22.field_176) = Mask(80, 0, arg1)
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

function manualsend() {
    if stor19 != msg.sender:
        require msg.sender == stor20
    call stor19 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor20 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function manualswap() {
    if stor19 != msg.sender:
        require msg.sender == stor20
    if stor2[address(this.address)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor6 / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    uint8(stor22.field_168) = 1
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
    allowance[address(this.address)][stor21] = stor2[address(this.address)] / stor6 / 10^18
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
    uint8(stor22.field_168) = 0
}



}
