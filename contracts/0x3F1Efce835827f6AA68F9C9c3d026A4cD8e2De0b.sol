contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Hungry Ape Token', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = 'HUNGRY', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 stor7;
uint256 stor8;
uint256 stor12;
uint256 stor15;
address stor16;
address stor17;
address stor18;
uint8 stor19; offset 160
uint8 cooldownEnabled; offset 168
uint128 stor19; offset 168
uint128 stor19; offset 160
address stor19;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function owner() {
    return owner
}

function cooldownEnabled() {
    return bool(cooldownEnabled)
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

function isRedMode() {
    return (stor22 > block.timestamp)
}

function isBlueMode() {
    return (stor23 > block.timestamp)
}

function includeToFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor16
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor16
    stor5[address(arg1)] = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor16
    stor5[stor17] = 0
    stor17 = arg1
    stor5[address(arg1)] = 1
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function timeToBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor7[address(arg1)]:
        revert with 'NH{q', 17
    return (block.timestamp - stor7[address(arg1)])
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor19.field_168) = Mask(88, 0, arg1)
    emit CooldownEnabledUpdated(bool(cooldownEnabled));
}

function thisBalance() {
    if stor2[address(this.address)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor8 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(this.address)] / stor8 / 1000 * 10^18)
}

function amountInPool() {
    if stor2[address(stor19.field_0)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor8 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(stor19.field_0)] / stor8 / 1000 * 10^18)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor8 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor8 / 1000 * 10^18)
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
        if mem[(32 * idx) + 140 len 20] != address(stor19.field_0):
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] != stor18:
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

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor19.field_160):
        revert with 0, 'trading is already open'
    stor18 = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not stor18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor18] = 1000 * 10^18
    emit Approval(1000 * 10^18, this.address, stor18);
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
    address(stor19.field_0) = ext_call.return_data[12 len 20]
    if stor2[address(this.address)] > stor8:
        revert with 0, 'Amount must be less than total reflections'
    if stor8 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000 * 10^18:
        revert with 'NH{q', 18
    require ext_code.size(stor18)
    call stor18.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor8 / 1000 * 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    stor15 = 20 * 10^18
    require ext_code.size(address(stor19.field_0))
    call address(stor19.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    Mask(96, 0, stor19.field_160) = 1
    if block.timestamp > -21:
        revert with 'NH{q', 17
    stor21 = block.timestamp + 20
    stor12 = block.timestamp
}



}
