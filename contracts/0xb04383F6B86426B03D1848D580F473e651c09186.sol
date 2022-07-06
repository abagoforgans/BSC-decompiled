contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Shitcoin', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = '$Shitcoin', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint256 sub_f3d19bf3;
uint256 stor10;
uint256 _reflectionFee;
uint256 sub_4b8c25c3;
uint256 stor14;
uint256 stor15;
address stor16;
address stor17;
address stor19;
uint8 stor20; offset 160
uint128 stor20; offset 160
address stor20;
uint256 stor21;
uint256 stor22; offset 16
uint256 stor22; offset 8
uint256 stor23;

function _reflectionFee() {
    return _reflectionFee
}

function sub_4b8c25c3(?) {
    return sub_4b8c25c3
}

function owner() {
    return owner
}

function sub_c582c5fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f3d19bf3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f3d19bf3[arg1]
}

function _fallback() payable {
    revert
}

function removeStrictWalletLimit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = 1000 * 10^18
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapTokensAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
}

function setMaxTokensToSwapForFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
}

function excludeFromSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor22.field_16) = Mask(240, 0, arg1)
}

function manualsend() {
    require msg.sender == stor16
    call stor16 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor17 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor10 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor10 / 1000 * 10^18)
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
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function manualswap() {
    require msg.sender == stor16
    if stor2[address(this.address)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor10 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / 1000 * 10^18:
        revert with 'NH{q', 18
    mem[320] = this.address
    require ext_code.size(stor19)
    staticcall stor19.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor19:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor19] = stor2[address(this.address)] / stor10 / 1000 * 10^18
    emit Approval((stor2[address(this.address)] / stor10 / 1000 * 10^18), this.address, stor19);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor10 / 1000 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor19)
    call stor19.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor10 / 1000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manualswapsend() {
    require msg.sender == stor16
    if stor2[address(this.address)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor10 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / 1000 * 10^18:
        revert with 'NH{q', 18
    mem[320] = this.address
    require ext_code.size(stor19)
    staticcall stor19.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor19:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor19] = stor2[address(this.address)] / stor10 / 1000 * 10^18
    emit Approval((stor2[address(this.address)] / stor10 / 1000 * 10^18), this.address, stor19);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor10 / 1000 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor19)
    call stor19.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor10 / 1000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == stor16
    call stor16 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor17 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_48dfea0a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor20.field_160):
        revert with 0, 'trading is already open'
    stor19 = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor19:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor19] = 1000 * 10^18
    emit Approval(1000 * 10^18, this.address, stor19);
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 101] = this.address
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 133] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(stor20.field_0) = ext_call.return_data[12 len 20]
    stor6[stor19] = 1
    stor6[address(stor20.field_0)] = 1
    if stor2[address(this.address)] > stor10:
        revert with 0, 'Amount must be less than total reflections'
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = 26
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 129] = 'SafeMath: division by zero'
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 161] = 26
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 193] = 'SafeMath: division by zero'
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 225] = 26
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 257] = 'SafeMath: division by zero'
    if stor10 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / 1000 * 10^18:
        revert with 'NH{q', 18
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 357] = 0
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 389] = 0
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 421] = owner
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 453] = block.timestamp
    require ext_code.size(stor19)
    call stor19.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor10 / 1000 * 10^18, 0, 0, owner, block.timestamp
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 289 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    Mask(248, 0, stor22.field_8) = 1
    Mask(240, 0, stor22.field_16) = 1
    stor23 = 25 * 10^18
    Mask(96, 0, stor20.field_160) = 1
    stor21 = block.timestamp
    stor14 = 5 * 10^18
    stor15 = 10 * 10^18
    idx = 0
    while idx < ('cd', 4).length:
        if stor21 > -cd[36] - 1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        sub_f3d19bf3[mem[(32 * idx) + 140 len 20]] = stor21 + cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(stor20.field_0))
    call address(stor20.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor19, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
