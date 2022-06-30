contract main {




// =====================  Runtime code  =====================


address owner;
address sub_0046261dAddress;
address sub_e3c44795Address;
mapping of struct userMapping;
uint8 stor4;

function sub_0046261d(?) payable {
    return sub_0046261dAddress
}

function userMapping(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userMapping[arg1].field_0, userMapping[arg1].field_0, bool(userMapping[arg1].field_160)
}

function owner() payable {
    return owner
}

function sub_e3c44795(?) payable {
    return sub_e3c44795Address
}

function _fallback() payable {
    revert
}

function sub_0432cf92(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0046261dAddress = address(arg1)
}

function sub_b5c8523d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3c44795Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor4:
        revert with 0, 'Already initialized'
    owner = arg1
    stor4 = 1
    sub_0046261dAddress = arg2
    sub_e3c44795Address = arg3
}

function sub_ac3103ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    mem[100] = this.address
    require ext_code.size(sub_e3c44795Address)
    staticcall sub_e3c44795Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require uint128(arg1) <= ext_call.return_data[0]
    if userMapping[address(msg.sender)].field_0 <= 0:
        revert with 0, 'CVPStaking: User doesn't have enough rewards to claim'
    if userMapping[address(msg.sender)].field_160:
        revert with 0, 'CVPStaking: User has unstaked the tokens'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1 << 128, mem[ceil32(return_data.size) + 196 len 28]
    call sub_e3c44795Address.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    emit 0x7810d0d9: uint128(arg1), msg.sender, uint32(block.timestamp)
    return 1
}

function stakeTokens(uint128 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CVPStaking: Token Amount cannot be zero'
    mem[100] = msg.sender
    require ext_code.size(sub_0046261dAddress)
    staticcall sub_0046261dAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'CVPStaking: Your balance is low'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(sub_0046261dAddress)
    staticcall sub_0046261dAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'CVPStaking: Allowance provided is low'
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 << 128, mem[(2 * ceil32(return_data.size)) + 228 len 28]
    call sub_0046261dAddress.mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
    if arg1 > -userMapping[address(msg.sender)].field_0 + test266151307():
        revert with 'NH{q', 17
    userMapping[address(msg.sender)].field_0 = uint128(arg1 + userMapping[address(msg.sender)].field_0)
    userMapping[address(msg.sender)].field_128 = uint32(block.timestamp)
    userMapping[address(msg.sender)].field_160 = 0
    emit 0x5ff54eab: sub_0046261dAddress, msg.sender, uint32(block.timestamp), arg1
    return 1
}

function sub_393a37dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if userMapping[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CVPStaking: User doesn't have any stake to claim'
    if userMapping[address(msg.sender)].field_160:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CVPStaking: User has already unstaked the tokens'
    mem[100] = this.address
    require ext_code.size(sub_e3c44795Address)
    staticcall sub_e3c44795Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require uint128(arg1) <= ext_call.return_data[0]
    if userMapping[address(msg.sender)].field_0 <= 0:
        revert with 0, 'CVPStaking: User doesn't have enough rewards to claim'
    if userMapping[address(msg.sender)].field_160:
        revert with 0, 'CVPStaking: User has unstaked the tokens'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1 << 128, mem[ceil32(return_data.size) + 196 len 28]
    call sub_e3c44795Address.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        emit 0x7810d0d9: uint128(arg1), msg.sender, uint32(block.timestamp)
        mem[ceil32(return_data.size) + 296 len 96] = 0, msg.sender, userMapping[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 296 len 28]
        call sub_0046261dAddress.mem[ceil32(return_data.size) + 296 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 300 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            mem[ceil32(return_data.size) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 328] == bool(mem[ceil32(return_data.size) + 328])
                if not mem[ceil32(return_data.size) + 328]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        emit 0x7810d0d9: uint128(arg1), msg.sender, uint32(block.timestamp)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 96] = 0, msg.sender, userMapping[address(msg.sender)].field_0, mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 28]
        call sub_0046261dAddress.mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 301 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 329])
                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    userMapping[address(msg.sender)].field_160 = 1
    userMapping[address(msg.sender)].field_0 = 0
    emit 0xf68018c8: uint128(arg1), msg.sender, uint32(block.timestamp), userMapping[address(msg.sender)].field_0
    return 1
}



}
