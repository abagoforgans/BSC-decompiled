contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'DrunkDoge', 0

const totalSupply = 10^18

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor6;
address stor15;
address stor16;
address stor17;
uint8 tradingStatus; offset 160
uint8 liquiditystatus; offset 168
uint8 stor18; offset 176
uint8 swapstatus; offset 184
uint8 cooldownStatus; offset 192
uint64 stor18; offset 192
address stor18;
uint256 stor18;
uint256 stor19;

function liquiditystatus() {
    return bool(liquiditystatus)
}

function swapstatus() {
    return bool(swapstatus)
}

function cooldownStatus() {
    return bool(cooldownStatus)
}

function owner() {
    return owner
}

function tradingStatus() {
    return bool(tradingStatus)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require liquiditystatus
    tradingStatus = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor18.field_192) = uint64(arg1)
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
    require msg.sender == stor15
    call stor15 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor16 with:
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

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg1 / 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    stor19 = 10^18 * arg1 / 100
    emit MaxTxAmountUpdated((10^18 * arg1 / 100));
}

function manualswap() {
    require msg.sender == stor15
    if stor2[address(this.address)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor6 / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    uint8(stor18.field_176) = 1
    mem[320] = this.address
    require ext_code.size(stor17)
    staticcall stor17.0xad5c4648 with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor17:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor17] = stor2[address(this.address)] / stor6 / 10^18
    emit Approval((stor2[address(this.address)] / stor6 / 10^18), this.address, stor17);
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
    require ext_code.size(stor17)
    call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor6 / 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor18.field_176) = 0
}

function addLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 10^18
    emit Approval(10^18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xad5c4648 with:
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
    address(stor18.field_0) = ext_call.return_data[12 len 20]
    if stor2[address(this.address)] > stor6:
        revert with 0, 'Amount must be less than total reflections'
    if not stor6 / 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor17)
    call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor6 / 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    uint256(stor18.field_0) = 16842753
    stor19 = 3 * 10^15
    require ext_code.size(address(stor18.field_0))
    call address(stor18.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
