contract main {




// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function depositedBalances(address arg1, address arg2, address[] arg3) {
    if arg3.length:
        mem[128 len 32 * arg3.length] = code.data[1982 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        mem[(32 * arg3.length) + 132] = address(cd[((32 * idx) + arg3 + 36)])
        mem[(32 * arg3.length) + 164] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg3 + 36)]), arg2
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg3.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + 192 len floor32(arg3.length)] = mem[128 len floor32(arg3.length)]
    return Array(len=arg3.length, data=mem[128 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 192 len (32 * arg3.length) - floor32(arg3.length)]), 
}

function tokenAllowances(address arg1, address arg2, address[] arg3) {
    if arg3.length:
        mem[128 len 32 * arg3.length] = code.data[1982 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        if ext_code.size(address(cd[((32 * idx) + arg3 + 36)])) <= 0:
            require idx < arg3.length
            mem[(32 * idx) + 128] = 0
        else:
            mem[(32 * arg3.length) + 128] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = arg1
            call address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                require idx < arg3.length
                mem[(32 * idx) + 128] = 0
            else:
                mem[(32 * arg3.length) + 132] = arg2
                mem[(32 * arg3.length) + 164] = arg1
                require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                call address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg3.length
                mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg3.length) + 192 len floor32(arg3.length)] = mem[128 len floor32(arg3.length)]
    return Array(len=arg3.length, data=mem[128 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 192 len (32 * arg3.length) - floor32(arg3.length)]), 
}

function tokenBalances(address arg1, address[] arg2) {
    if arg2.length:
        mem[128 len 32 * arg2.length] = code.data[1982 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not address(cd[((32 * idx) + arg2 + 36)]):
            mem[(32 * idx) + 128] = eth.balance(arg1)
        else:
            if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])) <= 0:
                require idx < arg2.length
                mem[(32 * idx) + 128] = 0
            else:
                mem[(32 * arg2.length) + 128] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + 132] = arg1
                call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = 0
                else:
                    mem[(32 * arg2.length) + 132] = arg1
                    require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
                    call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < arg2.length
                    mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    return Array(len=arg2.length, data=mem[128 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
}



}
