contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_55a6e627(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _16 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = address(_14)
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _16
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(_14), _16
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
