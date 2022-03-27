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
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _196 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_196))
                call address(_196).balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                require idx < mem[96]
                _255 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_255))
                call address(_255).borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
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
                   args address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] <= 0:
                _236 = mem[64]
                mem[mem[64] + 96] = 0
                mem[mem[64]] = 128
                mem[_236 + 128] = mem[96]
                _238 = mem[96]
                mem[_236 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_236 + 32] = (32 * mem[96]) + 160
                mem[(32 * _238) + _236 + 160] = mem[(32 * arg1.length) + 128]
                _353 = mem[(32 * arg1.length) + 128]
                mem[(32 * _238) + _236 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[_236 + 64] = (32 * _353) + (32 * _238) + 192
                mem[(32 * _353) + (32 * _238) + _236 + 192] = mem[(64 * arg1.length) + 160]
                _417 = mem[(64 * arg1.length) + 160]
                mem[(32 * _353) + (32 * _238) + _236 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _417) + (32 * _353) + (32 * _238) + _236 + -mem[64] + 224
            _252 = mem[64]
            mem[mem[64] + 96] = 1
            mem[mem[64]] = 128
            mem[_252 + 128] = mem[96]
            _254 = mem[96]
            mem[_252 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_252 + 32] = (32 * mem[96]) + 160
            mem[(32 * _254) + _252 + 160] = mem[(32 * arg1.length) + 128]
            _356 = mem[(32 * arg1.length) + 128]
            mem[(32 * _254) + _252 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_252 + 64] = (32 * _356) + (32 * _254) + 192
            mem[(32 * _356) + (32 * _254) + _252 + 192] = mem[(64 * arg1.length) + 160]
            _420 = mem[(64 * arg1.length) + 160]
            mem[(32 * _356) + (32 * _254) + _252 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _420) + (32 * _356) + (32 * _254) + _252 + -mem[64] + 224
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1418 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _199 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_199))
            call address(_199).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            require idx < mem[96]
            _261 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_261))
            call address(_261).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
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
               args address(arg2)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[64] <= 0:
            _240 = mem[64]
            mem[mem[64] + 96] = 0
            mem[mem[64]] = 128
            mem[_240 + 128] = mem[96]
            _242 = mem[96]
            mem[_240 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_240 + 32] = (32 * mem[96]) + 160
            mem[(32 * _242) + _240 + 160] = mem[(32 * arg1.length) + 128]
            _359 = mem[(32 * arg1.length) + 128]
            mem[(32 * _242) + _240 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_240 + 64] = (32 * _359) + (32 * _242) + 192
            mem[(32 * _359) + (32 * _242) + _240 + 192] = mem[(64 * arg1.length) + 160]
            _423 = mem[(64 * arg1.length) + 160]
            mem[(32 * _359) + (32 * _242) + _240 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _423) + (32 * _359) + (32 * _242) + _240 + -mem[64] + 224
        _258 = mem[64]
        mem[mem[64] + 96] = 1
        mem[mem[64]] = 128
        mem[_258 + 128] = mem[96]
        _260 = mem[96]
        mem[_258 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_258 + 32] = (32 * mem[96]) + 160
        mem[(32 * _260) + _258 + 160] = mem[(32 * arg1.length) + 128]
        _362 = mem[(32 * arg1.length) + 128]
        mem[(32 * _260) + _258 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_258 + 64] = (32 * _362) + (32 * _260) + 192
        mem[(32 * _362) + (32 * _260) + _258 + 192] = mem[(64 * arg1.length) + 160]
        _426 = mem[(64 * arg1.length) + 160]
        mem[(32 * _362) + (32 * _260) + _258 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _426) + (32 * _362) + (32 * _260) + _258 + -mem[64] + 224
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[1418 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _202 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_202))
            call address(_202).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            require idx < mem[96]
            _267 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_267))
            call address(_267).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
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
               args address(arg2)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[64] <= 0:
            _244 = mem[64]
            mem[mem[64] + 96] = 0
            mem[mem[64]] = 128
            mem[_244 + 128] = mem[96]
            _246 = mem[96]
            mem[_244 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_244 + 32] = (32 * mem[96]) + 160
            mem[(32 * _246) + _244 + 160] = mem[(32 * arg1.length) + 128]
            _365 = mem[(32 * arg1.length) + 128]
            mem[(32 * _246) + _244 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_244 + 64] = (32 * _365) + (32 * _246) + 192
            mem[(32 * _365) + (32 * _246) + _244 + 192] = mem[(64 * arg1.length) + 160]
            _429 = mem[(64 * arg1.length) + 160]
            mem[(32 * _365) + (32 * _246) + _244 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _429) + (32 * _365) + (32 * _246) + _244 + -mem[64] + 224
        _264 = mem[64]
        mem[mem[64] + 96] = 1
        mem[mem[64]] = 128
        mem[_264 + 128] = mem[96]
        _266 = mem[96]
        mem[_264 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_264 + 32] = (32 * mem[96]) + 160
        mem[(32 * _266) + _264 + 160] = mem[(32 * arg1.length) + 128]
        _368 = mem[(32 * arg1.length) + 128]
        mem[(32 * _266) + _264 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_264 + 64] = (32 * _368) + (32 * _266) + 192
        mem[(32 * _368) + (32 * _266) + _264 + 192] = mem[(64 * arg1.length) + 160]
        _432 = mem[(64 * arg1.length) + 160]
        mem[(32 * _368) + (32 * _266) + _264 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _432) + (32 * _368) + (32 * _266) + _264 + -mem[64] + 224
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1418 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _205 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(_205))
        call address(_205).balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        require idx < mem[96]
        _273 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(_273))
        call address(_273).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
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
           args address(arg2)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[64] <= 0:
        _248 = mem[64]
        mem[mem[64] + 96] = 0
        mem[mem[64]] = 128
        mem[_248 + 128] = mem[96]
        _250 = mem[96]
        mem[_248 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_248 + 32] = (32 * mem[96]) + 160
        mem[(32 * _250) + _248 + 160] = mem[(32 * arg1.length) + 128]
        _371 = mem[(32 * arg1.length) + 128]
        mem[(32 * _250) + _248 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_248 + 64] = (32 * _371) + (32 * _250) + 192
        mem[(32 * _371) + (32 * _250) + _248 + 192] = mem[(64 * arg1.length) + 160]
        _435 = mem[(64 * arg1.length) + 160]
        mem[(32 * _371) + (32 * _250) + _248 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _435) + (32 * _371) + (32 * _250) + _248 + -mem[64] + 224
    _270 = mem[64]
    mem[mem[64] + 96] = 1
    mem[mem[64]] = 128
    mem[_270 + 128] = mem[96]
    _272 = mem[96]
    mem[_270 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_270 + 32] = (32 * mem[96]) + 160
    mem[(32 * _272) + _270 + 160] = mem[(32 * arg1.length) + 128]
    _374 = mem[(32 * arg1.length) + 128]
    mem[(32 * _272) + _270 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[_270 + 64] = (32 * _374) + (32 * _272) + 192
    mem[(32 * _374) + (32 * _272) + _270 + 192] = mem[(64 * arg1.length) + 160]
    _438 = mem[(64 * arg1.length) + 160]
    mem[(32 * _374) + (32 * _272) + _270 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _438) + (32 * _374) + (32 * _272) + _270 + -mem[64] + 224
}



}
