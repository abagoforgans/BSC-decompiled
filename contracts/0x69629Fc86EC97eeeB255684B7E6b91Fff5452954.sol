contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_39de4dda(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length + 1 <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length + 1
    if not arg2.length + 1:
        require 0 < arg2.length + 1
        mem[(32 * arg2.length) + 160] = eth.balance(arg1)
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _35 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (32 * arg2.length + 1) + 164] = address(arg1)
            require ext_code.size(address(_35))
            staticcall address(_35).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[(32 * arg2.length) + (32 * arg2.length + 1) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg2.length
            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
        require 0 < arg2.length + 1
        mem[(32 * arg2.length) + 160] = eth.balance(arg1)
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _41 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (32 * arg2.length + 1) + 164] = address(arg1)
            require ext_code.size(address(_41))
            staticcall address(_41).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[(32 * arg2.length) + (32 * arg2.length + 1) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg2.length
            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (32 * arg2.length + 1) + 224 len floor32(arg2.length + 1)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length + 1)]
    return Array(len=arg2.length + 1, data=mem[(32 * arg2.length) + 160 len floor32(arg2.length + 1)], mem[(32 * arg2.length) + (32 * arg2.length + 1) + floor32(arg2.length + 1) + 224 len (32 * arg2.length + 1) - floor32(arg2.length + 1)]), 
}



}
