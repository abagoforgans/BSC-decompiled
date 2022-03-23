contract main {




// =====================  Runtime code  =====================


address owner;
address sub_ce529cc3Address;
address sub_84677aebAddress;

function sub_84677aeb(?) payable {
    return sub_84677aebAddress
}

function owner() payable {
    return owner
}

function sub_ce529cc3(?) payable {
    return sub_ce529cc3Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a9bdd2e3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_84677aebAddress = arg1
}

function sub_cc772033(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce529cc3Address = arg1
}

function sub_60e42297(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ce529cc3Address)
    staticcall sub_ce529cc3Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6d49abf7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ce529cc3Address)
    staticcall sub_ce529cc3Address.0x1959a002 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function sub_bcf3d0ed(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[(32 * arg1.length) + 128] = 0xf3c5fa3700000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = arg3
    mem[(32 * arg1.length) + 196] = arg4
    mem[(32 * arg1.length) + 228] = arg5
    require ext_code.size(sub_84677aebAddress)
    call sub_84677aebAddress.0xf3c5fa37 with:
         gas gas_remaining wei
        args arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require ext_code.size(sub_ce529cc3Address)
        staticcall sub_ce529cc3Address.0x1959a002 with:
                gas gas_remaining wei
               args address(mem[(32 * uint8(idx)) + 128])
        mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require uint8(idx) < arg1.length
        _39 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * uint8(idx)) + 140 len 20]
        require ext_code.size(sub_ce529cc3Address)
        staticcall sub_ce529cc3Address.0x70a08231 with:
                gas gas_remaining wei
               args address(_39)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < arg1.length
        _45 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg1.length) + 128] = 0x381a21200000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_45)
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 196] = ext_call.return_data[32]
        mem[(32 * arg1.length) + 228] = ext_call.return_data[64]
        mem[(32 * arg1.length) + 260] = ext_call.return_data[96]
        mem[(32 * arg1.length) + 292] = ext_call.return_data[128]
        mem[(32 * arg1.length) + 324] = ext_call.return_data[0]
        require ext_code.size(sub_84677aebAddress)
        call sub_84677aebAddress.setUser(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
             gas gas_remaining wei
            args address(_45), ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = ext_call.return_data[0]
        s = ext_call.return_data[128]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        continue 
}



}
