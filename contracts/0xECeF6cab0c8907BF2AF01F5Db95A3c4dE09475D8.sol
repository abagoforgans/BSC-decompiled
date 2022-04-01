contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_b8884e13(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == address(arg5)
    mem[128] = stor0
    mem[160] = address(arg3)
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(this.address), arg1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), arg4, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg3))
    call address(arg3).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[128] = address(arg3)
    mem[160] = stor0
    require ext_code.size(address(arg3))
    staticcall address(arg3).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg5)
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg2), arg4, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    else:
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg5), -1
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg2), arg4, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
