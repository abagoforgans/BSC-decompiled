contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function balances(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        if arg1.length >= 1000:
            revert with 0, 'Limit addresses to 1000 per call'
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not arg2:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
            else:
                if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if not ext_code.hash(arg2):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 0
                    else:
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _48 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_48] == mem[_48]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_48]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length >= 1000:
            revert with 0, 'Limit addresses to 1000 per call'
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not arg2:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
            else:
                if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if not ext_code.hash(arg2):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 0
                    else:
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _49 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_49] == mem[_49]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_49]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
