contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function contribute(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x183acc66: arg1, msg.sender
}

function sub_12adf557(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'You are not authorized owner.'
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_eb005796(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _15 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_13)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _15
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_13), _15
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
