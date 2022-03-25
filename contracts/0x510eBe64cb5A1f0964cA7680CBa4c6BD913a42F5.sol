contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, address arg2, address arg3, address arg4, uint256 arg5)
#
function _fallback() payable {
    revert
}

function sub_cf7df039(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(address(_17))
        staticcall address(_17).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require idx < arg1.length
            _23 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = 10000000 * 10^18
            require ext_code.size(address(_23))
            call address(_23).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), 10000000 * 10^18
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
