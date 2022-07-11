contract main {




// =====================  Runtime code  =====================


address pancakeRouterAddress;
address pancakeFactoryAddress;
address stor2;
address stor3;

function pancakeRouter() payable {
    return pancakeRouterAddress
}

function pancakeFactory() payable {
    return pancakeFactoryAddress
}

function _fallback() payable {
    revert
}

function sub_0707de0e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    stor3 = arg1
}

function sub_4f548006(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(pancakeRouterAddress)
        staticcall pancakeRouterAddress.WETH() with:
                gas gas_remaining wei
        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(pancakeRouterAddress)
            staticcall pancakeRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg1.length) + 164] = stor3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor3
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(64 * arg1.length) + 164] = stor3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor3
                mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        else:
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(pancakeRouterAddress)
            staticcall pancakeRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg1.length) + 164] = stor3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor3
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(64 * arg1.length) + 164] = stor3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor3
                mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function sub_f4d90cb7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor2
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            require arg1.length <= test266151307()
            mem[(98 * arg1.length) + 192] = arg1.length
            mem[64] = (131 * arg1.length) + 224
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    _251 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(address(_251))
                    staticcall address(_251).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _248 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
                _250 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _250) + 128
                mem[(32 * _250) + _248 + 128] = mem[(64 * arg1.length) + 160]
                _449 = mem[(64 * arg1.length) + 160]
                mem[(32 * _250) + _248 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[_248 + 64] = (32 * _449) + (32 * _250) + 160
                mem[(32 * _449) + (32 * _250) + _248 + 160] = mem[(98 * arg1.length) + 192]
                _513 = mem[(98 * arg1.length) + 192]
                s = 0
                while arg1.length < 32 * _513:
                    mem[(32 * _449) + (32 * _250) + _248 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
                    s = arg1.length + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _513) + (32 * _449) + (32 * _250) + _248 + -mem[64] + 192
            mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _257 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_257))
                staticcall address(_257).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _256 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _256) + 128
            mem[(32 * _256) + _254 + 128] = mem[(64 * arg1.length) + 160]
            _452 = mem[(64 * arg1.length) + 160]
            mem[(32 * _256) + _254 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[_254 + 64] = (32 * _452) + (32 * _256) + 160
            mem[(32 * _452) + (32 * _256) + _254 + 160] = mem[(98 * arg1.length) + 192]
            _516 = mem[(98 * arg1.length) + 192]
            s = 0
            while arg1.length < 32 * _516:
                mem[(32 * _452) + (32 * _256) + _254 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
                s = arg1.length + 32
                continue 
            return memory
              from mem[64]
               len (32 * _516) + (32 * _452) + (32 * _256) + _254 + -mem[64] + 192
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(98 * arg1.length) + 192] = arg1.length
        mem[64] = (131 * arg1.length) + 224
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _263 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_263))
                staticcall address(_263).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _260 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _262 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_260 + 32] = (32 * _262) + 128
            mem[(32 * _262) + _260 + 128] = mem[(64 * arg1.length) + 160]
            _455 = mem[(64 * arg1.length) + 160]
            mem[(32 * _262) + _260 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[_260 + 64] = (32 * _455) + (32 * _262) + 160
            mem[(32 * _455) + (32 * _262) + _260 + 160] = mem[(98 * arg1.length) + 192]
            _519 = mem[(98 * arg1.length) + 192]
            s = 0
            while arg1.length < 32 * _519:
                mem[(32 * _455) + (32 * _262) + _260 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
                s = arg1.length + 32
                continue 
            return memory
              from mem[64]
               len (32 * _519) + (32 * _455) + (32 * _262) + _260 + -mem[64] + 192
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _269 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_269))
            staticcall address(_269).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _266 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _268 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _268) + 128
        mem[(32 * _268) + _266 + 128] = mem[(64 * arg1.length) + 160]
        _458 = mem[(64 * arg1.length) + 160]
        mem[(32 * _268) + _266 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_266 + 64] = (32 * _458) + (32 * _268) + 160
        mem[(32 * _458) + (32 * _268) + _266 + 160] = mem[(98 * arg1.length) + 192]
        _522 = mem[(98 * arg1.length) + 192]
        s = 0
        while arg1.length < 32 * _522:
            mem[(32 * _458) + (32 * _268) + _266 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
            s = arg1.length + 32
            continue 
        return memory
          from mem[64]
           len (32 * _522) + (32 * _458) + (32 * _268) + _266 + -mem[64] + 192
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(64 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(98 * arg1.length) + 192] = arg1.length
        mem[64] = (131 * arg1.length) + 224
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _275 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_275))
                staticcall address(_275).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _272 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _274 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _274) + 128
            mem[(32 * _274) + _272 + 128] = mem[(64 * arg1.length) + 160]
            _461 = mem[(64 * arg1.length) + 160]
            mem[(32 * _274) + _272 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[_272 + 64] = (32 * _461) + (32 * _274) + 160
            mem[(32 * _461) + (32 * _274) + _272 + 160] = mem[(98 * arg1.length) + 192]
            _525 = mem[(98 * arg1.length) + 192]
            s = 0
            while arg1.length < 32 * _525:
                mem[(32 * _461) + (32 * _274) + _272 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
                s = arg1.length + 32
                continue 
            return memory
              from mem[64]
               len (32 * _525) + (32 * _461) + (32 * _274) + _272 + -mem[64] + 192
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _281 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_281))
            staticcall address(_281).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _278 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _280 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _280) + 128
        mem[(32 * _280) + _278 + 128] = mem[(64 * arg1.length) + 160]
        _464 = mem[(64 * arg1.length) + 160]
        mem[(32 * _280) + _278 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_278 + 64] = (32 * _464) + (32 * _280) + 160
        mem[(32 * _464) + (32 * _280) + _278 + 160] = mem[(98 * arg1.length) + 192]
        _528 = mem[(98 * arg1.length) + 192]
        s = 0
        while arg1.length < 32 * _528:
            mem[(32 * _464) + (32 * _280) + _278 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
            s = arg1.length + 32
            continue 
        return memory
          from mem[64]
           len (32 * _528) + (32 * _464) + (32 * _280) + _278 + -mem[64] + 192
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(98 * arg1.length) + 192] = arg1.length
    mem[64] = (131 * arg1.length) + 224
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _287 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(address(_287))
            staticcall address(_287).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _284 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _286 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _286) + 128
        mem[(32 * _286) + _284 + 128] = mem[(64 * arg1.length) + 160]
        _467 = mem[(64 * arg1.length) + 160]
        mem[(32 * _286) + _284 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_284 + 64] = (32 * _467) + (32 * _286) + 160
        mem[(32 * _467) + (32 * _286) + _284 + 160] = mem[(98 * arg1.length) + 192]
        _531 = mem[(98 * arg1.length) + 192]
        s = 0
        while arg1.length < 32 * _531:
            mem[(32 * _467) + (32 * _286) + _284 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
            s = arg1.length + 32
            continue 
        return memory
          from mem[64]
           len (32 * _531) + (32 * _467) + (32 * _286) + _284 + -mem[64] + 192
    mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _293 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(64 * arg1.length) + 160]
        mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(address(_293))
        staticcall address(_293).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(98 * arg1.length) + 192]
        mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _290 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _292 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _292) + 128
    mem[(32 * _292) + _290 + 128] = mem[(64 * arg1.length) + 160]
    _470 = mem[(64 * arg1.length) + 160]
    mem[(32 * _292) + _290 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    mem[_290 + 64] = (32 * _470) + (32 * _292) + 160
    mem[(32 * _470) + (32 * _292) + _290 + 160] = mem[(98 * arg1.length) + 192]
    _534 = mem[(98 * arg1.length) + 192]
    s = 0
    while arg1.length < 32 * _534:
        mem[(32 * _470) + (32 * _292) + _290 + arg1.length + 192] = mem[(99 * arg1.length) + 224]
        s = arg1.length + 32
        continue 
    return memory
      from mem[64]
       len (32 * _534) + (32 * _470) + (32 * _292) + _290 + -mem[64] + 192
}

function sub_46cd0a39(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor2
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require ext_code.size(pancakeRouterAddress)
            staticcall pancakeRouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            if mem[(32 * idx) + 140 len 20] == address(ext_call.return_data[0]):
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pancakeFactoryAddress)
                staticcall pancakeFactoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == arg2:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(64 * arg1.length) + 263 len 29]
                if address(ext_call.return_data[0]) < arg2:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                else:
                    if not arg2:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == arg2:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            else:
                require idx < arg1.length
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                require ext_code.size(pancakeFactoryAddress)
                staticcall pancakeFactoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(64 * arg1.length) + 164], address(ext_call.return_data[0])
                mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                _575 = mem[(32 * idx) + 128]
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * idx) + 140 len 20] == address(ext_call.return_data[0]):
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(64 * arg1.length) + 263 len 29]
                if mem[(32 * idx) + 140 len 20] < address(ext_call.return_data[0]):
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == address(_575):
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                else:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require ext_code.size(pancakeRouterAddress)
            staticcall pancakeRouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            if mem[(32 * idx) + 140 len 20] == address(ext_call.return_data[0]):
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pancakeFactoryAddress)
                staticcall pancakeFactoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == arg2:
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(64 * arg1.length) + 263 len 29]
                if address(ext_call.return_data[0]) < arg2:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                else:
                    if not arg2:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == arg2:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            else:
                require idx < arg1.length
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                require ext_code.size(pancakeFactoryAddress)
                staticcall pancakeFactoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(64 * arg1.length) + 164], address(ext_call.return_data[0])
                mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg1.length
                _579 = mem[(32 * idx) + 128]
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * idx) + 140 len 20] == address(ext_call.return_data[0]):
                    revert with 0, 
                                32,
                                35,
                                0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(64 * arg1.length) + 263 len 29]
                if mem[(32 * idx) + 140 len 20] < address(ext_call.return_data[0]):
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == address(_579):
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                else:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                    else:
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(pancakeRouterAddress)
                        staticcall pancakeRouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = stor3
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            require ext_code.size(pancakeRouterAddress)
                            staticcall pancakeRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = stor3
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}



}
