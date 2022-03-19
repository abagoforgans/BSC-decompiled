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
                _192 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_192))
                call address(_192).calcBalanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                require idx < mem[96]
                _247 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_247))
                call address(_247).borrowBalanceCurrent(address rg1) with:
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
            require ext_code.size(0xc78248d676debb4597e88071d3d889eca70e5469)
            staticcall 0xc78248d676debb4597e88071d3d889eca70e5469.getAccountLiquidity(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] <= 0:
                _228 = mem[64]
                mem[mem[64] + 96] = 0
                mem[mem[64]] = 128
                mem[_228 + 128] = mem[96]
                _230 = mem[96]
                mem[_228 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_228 + 32] = (32 * mem[96]) + 160
                mem[(32 * _230) + _228 + 160] = mem[(32 * arg1.length) + 128]
                _345 = mem[(32 * arg1.length) + 128]
                mem[(32 * _230) + _228 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[_228 + 64] = (32 * _345) + (32 * _230) + 192
                mem[(32 * _345) + (32 * _230) + _228 + 192] = mem[(64 * arg1.length) + 160]
                _409 = mem[(64 * arg1.length) + 160]
                mem[(32 * _345) + (32 * _230) + _228 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _409) + (32 * _345) + (32 * _230) + _228 + -mem[64] + 224
            _244 = mem[64]
            mem[mem[64] + 96] = 1
            mem[mem[64]] = 128
            mem[_244 + 128] = mem[96]
            _246 = mem[96]
            mem[_244 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_244 + 32] = (32 * mem[96]) + 160
            mem[(32 * _246) + _244 + 160] = mem[(32 * arg1.length) + 128]
            _348 = mem[(32 * arg1.length) + 128]
            mem[(32 * _246) + _244 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_244 + 64] = (32 * _348) + (32 * _246) + 192
            mem[(32 * _348) + (32 * _246) + _244 + 192] = mem[(64 * arg1.length) + 160]
            _412 = mem[(64 * arg1.length) + 160]
            mem[(32 * _348) + (32 * _246) + _244 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _412) + (32 * _348) + (32 * _246) + _244 + -mem[64] + 224
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1406 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _195 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_195))
            call address(_195).calcBalanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            require idx < mem[96]
            _253 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_253))
            call address(_253).borrowBalanceCurrent(address rg1) with:
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
        require ext_code.size(0xc78248d676debb4597e88071d3d889eca70e5469)
        staticcall 0xc78248d676debb4597e88071d3d889eca70e5469.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            _232 = mem[64]
            mem[mem[64] + 96] = 0
            mem[mem[64]] = 128
            mem[_232 + 128] = mem[96]
            _234 = mem[96]
            mem[_232 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_232 + 32] = (32 * mem[96]) + 160
            mem[(32 * _234) + _232 + 160] = mem[(32 * arg1.length) + 128]
            _351 = mem[(32 * arg1.length) + 128]
            mem[(32 * _234) + _232 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_232 + 64] = (32 * _351) + (32 * _234) + 192
            mem[(32 * _351) + (32 * _234) + _232 + 192] = mem[(64 * arg1.length) + 160]
            _415 = mem[(64 * arg1.length) + 160]
            mem[(32 * _351) + (32 * _234) + _232 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _415) + (32 * _351) + (32 * _234) + _232 + -mem[64] + 224
        _250 = mem[64]
        mem[mem[64] + 96] = 1
        mem[mem[64]] = 128
        mem[_250 + 128] = mem[96]
        _252 = mem[96]
        mem[_250 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_250 + 32] = (32 * mem[96]) + 160
        mem[(32 * _252) + _250 + 160] = mem[(32 * arg1.length) + 128]
        _354 = mem[(32 * arg1.length) + 128]
        mem[(32 * _252) + _250 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_250 + 64] = (32 * _354) + (32 * _252) + 192
        mem[(32 * _354) + (32 * _252) + _250 + 192] = mem[(64 * arg1.length) + 160]
        _418 = mem[(64 * arg1.length) + 160]
        mem[(32 * _354) + (32 * _252) + _250 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _418) + (32 * _354) + (32 * _252) + _250 + -mem[64] + 224
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[1406 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _198 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_198))
            call address(_198).calcBalanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            require idx < mem[96]
            _259 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(_259))
            call address(_259).borrowBalanceCurrent(address rg1) with:
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
        require ext_code.size(0xc78248d676debb4597e88071d3d889eca70e5469)
        staticcall 0xc78248d676debb4597e88071d3d889eca70e5469.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] <= 0:
            _236 = mem[64]
            mem[mem[64] + 96] = 0
            mem[mem[64]] = 128
            mem[_236 + 128] = mem[96]
            _238 = mem[96]
            mem[_236 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_236 + 32] = (32 * mem[96]) + 160
            mem[(32 * _238) + _236 + 160] = mem[(32 * arg1.length) + 128]
            _357 = mem[(32 * arg1.length) + 128]
            mem[(32 * _238) + _236 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_236 + 64] = (32 * _357) + (32 * _238) + 192
            mem[(32 * _357) + (32 * _238) + _236 + 192] = mem[(64 * arg1.length) + 160]
            _421 = mem[(64 * arg1.length) + 160]
            mem[(32 * _357) + (32 * _238) + _236 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _421) + (32 * _357) + (32 * _238) + _236 + -mem[64] + 224
        _256 = mem[64]
        mem[mem[64] + 96] = 1
        mem[mem[64]] = 128
        mem[_256 + 128] = mem[96]
        _258 = mem[96]
        mem[_256 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_256 + 32] = (32 * mem[96]) + 160
        mem[(32 * _258) + _256 + 160] = mem[(32 * arg1.length) + 128]
        _360 = mem[(32 * arg1.length) + 128]
        mem[(32 * _258) + _256 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_256 + 64] = (32 * _360) + (32 * _258) + 192
        mem[(32 * _360) + (32 * _258) + _256 + 192] = mem[(64 * arg1.length) + 160]
        _424 = mem[(64 * arg1.length) + 160]
        mem[(32 * _360) + (32 * _258) + _256 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _424) + (32 * _360) + (32 * _258) + _256 + -mem[64] + 224
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1406 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _201 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(_201))
        call address(_201).calcBalanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        require idx < mem[96]
        _265 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(_265))
        call address(_265).borrowBalanceCurrent(address rg1) with:
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
    require ext_code.size(0xc78248d676debb4597e88071d3d889eca70e5469)
    staticcall 0xc78248d676debb4597e88071d3d889eca70e5469.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        _240 = mem[64]
        mem[mem[64] + 96] = 0
        mem[mem[64]] = 128
        mem[_240 + 128] = mem[96]
        _242 = mem[96]
        mem[_240 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_240 + 32] = (32 * mem[96]) + 160
        mem[(32 * _242) + _240 + 160] = mem[(32 * arg1.length) + 128]
        _363 = mem[(32 * arg1.length) + 128]
        mem[(32 * _242) + _240 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_240 + 64] = (32 * _363) + (32 * _242) + 192
        mem[(32 * _363) + (32 * _242) + _240 + 192] = mem[(64 * arg1.length) + 160]
        _427 = mem[(64 * arg1.length) + 160]
        mem[(32 * _363) + (32 * _242) + _240 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _427) + (32 * _363) + (32 * _242) + _240 + -mem[64] + 224
    _262 = mem[64]
    mem[mem[64] + 96] = 1
    mem[mem[64]] = 128
    mem[_262 + 128] = mem[96]
    _264 = mem[96]
    mem[_262 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_262 + 32] = (32 * mem[96]) + 160
    mem[(32 * _264) + _262 + 160] = mem[(32 * arg1.length) + 128]
    _366 = mem[(32 * arg1.length) + 128]
    mem[(32 * _264) + _262 + 192 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[_262 + 64] = (32 * _366) + (32 * _264) + 192
    mem[(32 * _366) + (32 * _264) + _262 + 192] = mem[(64 * arg1.length) + 160]
    _430 = mem[(64 * arg1.length) + 160]
    mem[(32 * _366) + (32 * _264) + _262 + 224 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _430) + (32 * _366) + (32 * _264) + _262 + -mem[64] + 224
}



}
