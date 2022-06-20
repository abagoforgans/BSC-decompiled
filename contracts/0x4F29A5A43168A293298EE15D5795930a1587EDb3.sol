contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BalanceChecker does not accept payments'
}

function tokenBalance(address arg1, address arg2) {
    if ext_code.size(arg2) <= 0:
        return 0
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        return 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balances(address[] arg1, address[] arg2) {
    if arg2.length * arg1.length:
        mem[128 len 32 * arg2.length * arg1.length] = code.data[1489 len 32 * arg2.length * arg1.length]
    idx = 0
    while idx < arg1.length:
        t = 0
        s = 0
        while s < arg2.length:
            require idx < arg1.length
            if not address(cd[((32 * s) + arg2 + 36)]):
                require s + (arg2.length * idx) < arg2.length * arg1.length
                mem[(32 * s + (arg2.length * idx)) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
            else:
                require s < arg2.length
                if ext_code.size(address(cd[((32 * s) + arg2 + 36)])) <= 0:
                    require s + (arg2.length * idx) < arg2.length * arg1.length
                    mem[(32 * s + (arg2.length * idx)) + 128] = 0
                else:
                    mem[(32 * arg2.length * arg1.length) + 128] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length * arg1.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                    call address(cd[((32 * s) + arg2 + 36)]).0x70a08231 with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg1 + 36)])
                    if not ext_call.success:
                        require s + (arg2.length * idx) < arg2.length * arg1.length
                        mem[(32 * s + (arg2.length * idx)) + 128] = 0
                    else:
                        mem[(32 * arg2.length * arg1.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                        call address(cd[((32 * s) + arg2 + 36)]).0x70a08231 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg1 + 36)])
                        mem[(32 * arg2.length * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require s + (arg2.length * idx) < arg2.length * arg1.length
                        mem[(32 * s + (arg2.length * idx)) + 128] = ext_call.return_data[0]
            t = s + (arg2.length * idx)
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * arg2.length * arg1.length) + 128] = 32
    mem[(32 * arg2.length * arg1.length) + 160] = arg2.length * arg1.length
    mem[(32 * arg2.length * arg1.length) + 192 len floor32(arg2.length * arg1.length)] = mem[128 len floor32(arg2.length * arg1.length)]
    return Array(len=arg2.length * arg1.length, data=mem[(32 * arg2.length * arg1.length) + 192 len 32 * arg2.length * arg1.length]), 
}



}
