contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor3 == msg.sender
    if not arg1:
        call stor3 with:
           value arg2 wei
             gas gas_remaining wei
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor3, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_21d26cae(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg2
    mem[(32 * arg4.length) + 164] = arg3
    mem[(32 * arg4.length) + 228] = this.address
    mem[(32 * arg4.length) + 260] = arg1
    mem[(32 * arg4.length) + 196] = 160
    mem[(32 * arg4.length) + 292] = arg4.length
    mem[(32 * arg4.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
}

function sub_e78ddc14(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg2
    mem[(32 * arg4.length) + 164] = arg3
    mem[(32 * arg4.length) + 228] = this.address
    mem[(32 * arg4.length) + 260] = arg1
    mem[(32 * arg4.length) + 196] = 160
    mem[(32 * arg4.length) + 292] = arg4.length
    mem[(32 * arg4.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
}



}
