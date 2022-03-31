contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7462bb3d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if mem[(32 * idx) + 140 len 20] == 0xfd36e2c2a6789db23113685031d7f16329158384:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(0xfd36e2c2a6789db23113685031d7f16329158384)
                    staticcall 0xfd36e2c2a6789db23113685031d7f16329158384.mintedVAIOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                else:
                    require idx < arg1.length
                    _249 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_249))
                    call address(_249).balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                    mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    require idx < arg1.length
                    _343 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_343))
                    call address(_343).borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1768 len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if mem[(32 * idx) + 140 len 20] == 0xfd36e2c2a6789db23113685031d7f16329158384:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(0xfd36e2c2a6789db23113685031d7f16329158384)
                    staticcall 0xfd36e2c2a6789db23113685031d7f16329158384.mintedVAIOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                else:
                    require idx < arg1.length
                    _257 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_257))
                    call address(_257).balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                    mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    require idx < arg1.length
                    _349 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_349))
                    call address(_349).borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = ext_call.return_data[0]
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[1768 len 32 * arg1.length]
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if mem[(32 * idx) + 140 len 20] == 0xfd36e2c2a6789db23113685031d7f16329158384:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(0xfd36e2c2a6789db23113685031d7f16329158384)
                    staticcall 0xfd36e2c2a6789db23113685031d7f16329158384.mintedVAIOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                else:
                    require idx < arg1.length
                    _265 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_265))
                    call address(_265).balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                    mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    require idx < arg1.length
                    _355 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_355))
                    call address(_355).borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1768 len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                if mem[(32 * idx) + 140 len 20] == 0xfd36e2c2a6789db23113685031d7f16329158384:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(0xfd36e2c2a6789db23113685031d7f16329158384)
                    staticcall 0xfd36e2c2a6789db23113685031d7f16329158384.mintedVAIOf(address rg1) with:
                            gas gas_remaining wei
                           args arg2
                else:
                    require idx < arg1.length
                    _273 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_273))
                    call address(_273).balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                    mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    require idx < arg1.length
                    _361 = mem[(32 * idx) + 128]
                    mem[(98 * arg1.length) + 196] = arg2
                    require ext_code.size(address(_361))
                    call address(_361).borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args arg2
                mem[(98 * arg1.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = ext_call.return_data[0]
                idx = idx + 1
                continue 
    require ext_code.size(0xfd36e2c2a6789db23113685031d7f16329158384)
    staticcall 0xfd36e2c2a6789db23113685031d7f16329158384.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[(98 * arg1.length) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[64] <= 0:
        mem[(98 * arg1.length) + 288] = 0
    else:
        mem[(98 * arg1.length) + 288] = 1
    mem[(98 * arg1.length) + 192] = 128
    mem[(98 * arg1.length) + 320] = arg1.length
    mem[(98 * arg1.length) + 352 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(98 * arg1.length) + 224] = (32 * arg1.length) + 160
    mem[(131 * arg1.length) + 352] = mem[(32 * arg1.length) + 128]
    mem[(131 * arg1.length) + 384 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[(98 * arg1.length) + 256] = (32 * mem[(32 * arg1.length) + 128]) + (32 * arg1.length) + 192
    mem[(32 * mem[(32 * arg1.length) + 128]) + (131 * arg1.length) + 384] = mem[(64 * arg1.length) + 160]
    mem[(32 * mem[(32 * arg1.length) + 128]) + (131 * arg1.length) + 416 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from (98 * arg1.length) + 192
       len (32 * mem[(64 * arg1.length) + 160]) + (32 * mem[(32 * arg1.length) + 128]) + (32 * arg1.length) + 224
}



}
