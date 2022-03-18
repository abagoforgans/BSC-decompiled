contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 168
address stor5;
address owner; offset 8
address sub_0bb4f9c4Address;
uint32 stor7;
address sub_de791d4aAddress;

function name() {
    return name[0 len name.length]
}

function sub_0bb4f9c4(?) {
    return sub_0bb4f9c4Address
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_de791d4a(?) {
    return address(sub_de791d4aAddress)
}

function _fallback() payable {
    revert
}

function sub_be9c02f7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_0bb4f9c4Address = arg1
}

function sub_9d499e43(?) {
    require msg.sender == owner
    require ext_code.size(address(sub_de791d4aAddress))
    call address(sub_de791d4aAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_0bb4f9c4Address, 10000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor5.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] - arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_b5f19392(?) {
    require calldata.size - 4 >= 128
    if not uint8(stor5.field_168):
        revert with 0, 're-entered'
    uint8(stor5.field_168) = 0
    require ext_code.size(sub_0bb4f9c4Address)
    call sub_0bb4f9c4Address.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor7), arg1, arg2, arg3, msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    Mask(248, 0, arg3)
    if balanceOf[address(msg.sender)] - arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply - arg1 > totalSupply:
        revert with 0, 'ds-math-sub-underflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    uint8(stor5.field_168) = 1
    return ext_call.return_data[0], ext_call.return_data[32]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_ec25fb8f(?) payable {
    require calldata.size - 4 >= 128
    if not uint8(stor5.field_168):
        revert with 0, 're-entered'
    uint8(stor5.field_168) = 0
    require ext_code.size(address(sub_de791d4aAddress))
    call address(sub_de791d4aAddress).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228] = arg4
    require ext_code.size(sub_0bb4f9c4Address)
    call sub_0bb4f9c4Address.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(stor7), arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + ext_call.return_data[64] < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply += ext_call.return_data[64]
    if balanceOf[address(msg.sender)] + ext_call.return_data[64] < balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(msg.sender)] += ext_call.return_data[64]
    emit Transfer(ext_call.return_data[64], 0, msg.sender);
    if msg.value <= ext_call.return_data[32]:
        if arg1 > ext_call.return_data[0]:
            if arg1 - ext_call.return_data[0] > arg1:
                revert with 0, 'ds-math-sub-underflow'
            mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1 - ext_call.return_data[0]) >> 32
            call address(sub_de791d4aAddress) with:
               funct uint32(arg3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - ext_call.return_data[0]) << 224, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        uint8(stor5.field_168) = 1
        return ext_call.return_data[0], ext_call.return_data[32]
    if msg.value - ext_call.return_data[32] > msg.value:
        revert with 0, 'ds-math-sub-underflow'
    call msg.sender with:
       value msg.value - ext_call.return_data[32] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, Mask(232, 0, arg4)
        if arg1 <= ext_call.return_data[0]:
            uint8(stor5.field_168) = 1
            return ext_call.return_data[0], 0, ext_call.return_data[32]
        if arg1 - ext_call.return_data[0] > arg1:
            revert with 0, 'ds-math-sub-underflow'
        mem[228 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1 - ext_call.return_data[0]) >> 32
        call address(sub_de791d4aAddress) with:
           funct uint32(arg4)
             gas gas_remaining wei
            args Mask(224, 32, arg1 - ext_call.return_data[0]) << 224, mem[292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        uint8(stor5.field_168) = 1
        return ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[ceil32(return_data.size) + 232 len 29]
    if arg1 <= ext_call.return_data[0]:
        uint8(stor5.field_168) = 1
        return ext_call.return_data[0], ext_call.return_data[32]
    if arg1 - ext_call.return_data[0] > arg1:
        revert with 0, 'ds-math-sub-underflow'
    mem[ceil32(return_data.size) + 229 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1 - ext_call.return_data[0]) >> 32
    mem[ceil32(return_data.size) + 321 len 4] = Mask(32, 64, arg1 - ext_call.return_data[0]) >> 64
    call address(sub_de791d4aAddress) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1 - ext_call.return_data[0]) << 224, mem[ceil32(return_data.size) + 293 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        uint8(stor5.field_168) = 1
        return ext_call.return_data[0], ext_call.return_data[32]
    mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    'TransferHelper: TRANSFER_FAILED',
                    mem[(2 * ceil32(return_data.size)) + 330 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 261]:
            revert with 0, 
                        'TransferHelper: TRANSFER_FAILED',
                        mem[(2 * ceil32(return_data.size)) + 330 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    uint8(stor5.field_168) = 1
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           mem[(2 * ceil32(return_data.size)) + 294 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
