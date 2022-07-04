contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_0ecdbcbf(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[132] == address(cd[132])
    if stor0 != msg.sender:
        if 0x23fdc534cfbbf7cfda0acb15e0e340939f319b6a != msg.sender:
            if 0xe8509e8fb3938a9576399f7448bcdf3e4c651914 != msg.sender:
                if 0xe8849d44b5af872298d7814c5e08d07268055035 != msg.sender:
                    if 0x6b4cbc5363288d2083c2102813921abae6211413 != msg.sender:
                        revert with 0, 'only my accounts!'
    mem[96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 128
    mem[228] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 260
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[164] = address(cd[68])
    mem[196] = cd[100]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[260 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    require return_data.size >= mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32
}

function sub_373feab5(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    if msg.sender == stor0:
        mem[100] = msg.sender
        require ext_code.size(address(cd[196]))
        staticcall address(cd[196]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[4]:
            revert with 0, 'no tokens in balance!'
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[4]
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = ceil32(return_data.size) + 196
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _208 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _213 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        require return_data.size >= _208 + (32 * _213) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _213] = mem[ceil32(return_data.size) + _208 + 128 len 32 * _213]
        if _213 < 1:
            revert with 0, 17
        if _213 - 1 >= _213:
            revert with 0, 50
        if mem[(32 * _213 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[36]:
            emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
        else:
            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(cd[196]))
            call address(cd[196]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_398] == bool(mem[_398])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(address(cd[196]))
            call address(cd[196]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_418] == bool(mem[_418])
            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + 196
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = cd[132]
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _498 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _503 = mem[_498]
            require mem[_498] <= test266151307()
            require _498 + mem[_498] + 31 < _498 + return_data.size
            _508 = mem[_498 + mem[_498]]
            if mem[_498 + mem[_498]] > test266151307():
                revert with 0, 65
            if _498 + ceil32(return_data.size) + ceil32(32 * mem[_498 + mem[_498]]) + 1 > test266151307() or ceil32(32 * mem[_498 + mem[_498]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _498 + ceil32(return_data.size) + ceil32(32 * mem[_498 + mem[_498]]) + 1
            mem[_498 + ceil32(return_data.size)] = _508
            require return_data.size >= _503 + (32 * _508) + 32
            mem[_498 + ceil32(return_data.size) + 32 len 32 * _508] = mem[_498 + _503 + 32 len 32 * _508]
            if _508 < 1:
                revert with 0, 17
            if _508 - 1 >= _508:
                revert with 0, 50
            if mem[(32 * _508 - 1) + _498 + ceil32(return_data.size) + 32] < cd[36]:
                revert with 0, 'req. bnb not achieved!'
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == 0x23fdc534cfbbf7cfda0acb15e0e340939f319b6a:
            mem[100] = msg.sender
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[4]:
                revert with 0, 'no tokens in balance!'
            mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = cd[4]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = ceil32(return_data.size) + 196
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _209 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
            _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            require return_data.size >= _209 + (32 * _214) + 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _214] = mem[ceil32(return_data.size) + _209 + 128 len 32 * _214]
            if _214 < 1:
                revert with 0, 17
            if _214 - 1 >= _214:
                revert with 0, 50
            if mem[(32 * _214 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[36]:
                emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
            else:
                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                mem[mem[64] + 36] = cd[4]
                require ext_code.size(address(cd[196]))
                call address(cd[196]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_399] == bool(mem[_399])
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[4]
                require ext_code.size(address(cd[196]))
                call address(cd[196]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, cd[4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_419] == bool(mem[_419])
                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = cd[132]
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _504 = mem[_499]
                require mem[_499] <= test266151307()
                require _499 + mem[_499] + 31 < _499 + return_data.size
                _509 = mem[_499 + mem[_499]]
                if mem[_499 + mem[_499]] > test266151307():
                    revert with 0, 65
                if _499 + ceil32(return_data.size) + ceil32(32 * mem[_499 + mem[_499]]) + 1 > test266151307() or ceil32(32 * mem[_499 + mem[_499]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _499 + ceil32(return_data.size) + ceil32(32 * mem[_499 + mem[_499]]) + 1
                mem[_499 + ceil32(return_data.size)] = _509
                require return_data.size >= _504 + (32 * _509) + 32
                mem[_499 + ceil32(return_data.size) + 32 len 32 * _509] = mem[_499 + _504 + 32 len 32 * _509]
                if _509 < 1:
                    revert with 0, 17
                if _509 - 1 >= _509:
                    revert with 0, 50
                if mem[(32 * _509 - 1) + _499 + ceil32(return_data.size) + 32] < cd[36]:
                    revert with 0, 'req. bnb not achieved!'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.sender == 0xe8509e8fb3938a9576399f7448bcdf3e4c651914:
                mem[100] = msg.sender
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[4]:
                    revert with 0, 'no tokens in balance!'
                mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = cd[4]
                mem[ceil32(return_data.size) + 132] = 64
                mem[ceil32(return_data.size) + 164] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = ceil32(return_data.size) + 196
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _210 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                _215 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                require return_data.size >= _210 + (32 * _215) + 32
                mem[(2 * ceil32(return_data.size)) + 128 len 32 * _215] = mem[ceil32(return_data.size) + _210 + 128 len 32 * _215]
                if _215 < 1:
                    revert with 0, 17
                if _215 - 1 >= _215:
                    revert with 0, 50
                if mem[(32 * _215 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[36]:
                    emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                else:
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_400] == bool(mem[_400])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = cd[4]
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_420] == bool(mem[_420])
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[4]
                    mem[mem[64] + 36] = cd[36]
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = cd[132]
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _505 = mem[_500]
                    require mem[_500] <= test266151307()
                    require _500 + mem[_500] + 31 < _500 + return_data.size
                    _510 = mem[_500 + mem[_500]]
                    if mem[_500 + mem[_500]] > test266151307():
                        revert with 0, 65
                    if _500 + ceil32(return_data.size) + ceil32(32 * mem[_500 + mem[_500]]) + 1 > test266151307() or ceil32(32 * mem[_500 + mem[_500]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _500 + ceil32(return_data.size) + ceil32(32 * mem[_500 + mem[_500]]) + 1
                    mem[_500 + ceil32(return_data.size)] = _510
                    require return_data.size >= _505 + (32 * _510) + 32
                    mem[_500 + ceil32(return_data.size) + 32 len 32 * _510] = mem[_500 + _505 + 32 len 32 * _510]
                    if _510 < 1:
                        revert with 0, 17
                    if _510 - 1 >= _510:
                        revert with 0, 50
                    if mem[(32 * _510 - 1) + _500 + ceil32(return_data.size) + 32] < cd[36]:
                        revert with 0, 'req. bnb not achieved!'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0xe8849d44b5af872298d7814c5e08d07268055035:
                    mem[100] = msg.sender
                    require ext_code.size(address(cd[196]))
                    staticcall address(cd[196]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[4]:
                        revert with 0, 'no tokens in balance!'
                    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[4]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = ceil32(return_data.size) + 196
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _211 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _216 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    require return_data.size >= _211 + (32 * _216) + 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _216] = mem[ceil32(return_data.size) + _211 + 128 len 32 * _216]
                    if _216 < 1:
                        revert with 0, 17
                    if _216 - 1 >= _216:
                        revert with 0, 50
                    if mem[(32 * _216 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[36]:
                        emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                    else:
                        mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                        mem[mem[64] + 36] = cd[4]
                        require ext_code.size(address(cd[196]))
                        call address(cd[196]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_401] == bool(mem[_401])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = cd[4]
                        require ext_code.size(address(cd[196]))
                        call address(cd[196]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_421] == bool(mem[_421])
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = cd[36]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = cd[132]
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _501 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _506 = mem[_501]
                        require mem[_501] <= test266151307()
                        require _501 + mem[_501] + 31 < _501 + return_data.size
                        _511 = mem[_501 + mem[_501]]
                        if mem[_501 + mem[_501]] > test266151307():
                            revert with 0, 65
                        if _501 + ceil32(return_data.size) + ceil32(32 * mem[_501 + mem[_501]]) + 1 > test266151307() or ceil32(32 * mem[_501 + mem[_501]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _501 + ceil32(return_data.size) + ceil32(32 * mem[_501 + mem[_501]]) + 1
                        mem[_501 + ceil32(return_data.size)] = _511
                        require return_data.size >= _506 + (32 * _511) + 32
                        mem[_501 + ceil32(return_data.size) + 32 len 32 * _511] = mem[_501 + _506 + 32 len 32 * _511]
                        if _511 < 1:
                            revert with 0, 17
                        if _511 - 1 >= _511:
                            revert with 0, 50
                        if mem[(32 * _511 - 1) + _501 + ceil32(return_data.size) + 32] < cd[36]:
                            revert with 0, 'req. bnb not achieved!'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 0x6b4cbc5363288d2083c2102813921abae6211413 != msg.sender:
                        revert with 0, 'only my accounts!'
                    mem[100] = msg.sender
                    require ext_code.size(address(cd[196]))
                    staticcall address(cd[196]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[4]:
                        revert with 0, 'no tokens in balance!'
                    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[4]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = ceil32(return_data.size) + 196
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _212 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _217 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    require return_data.size >= _212 + (32 * _217) + 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _217] = mem[ceil32(return_data.size) + _212 + 128 len 32 * _217]
                    if _217 < 1:
                        revert with 0, 17
                    if _217 - 1 >= _217:
                        revert with 0, 50
                    if mem[(32 * _217 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[36]:
                        emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                    else:
                        mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                        mem[mem[64] + 36] = cd[4]
                        require ext_code.size(address(cd[196]))
                        call address(cd[196]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_402] == bool(mem[_402])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = cd[4]
                        require ext_code.size(address(cd[196]))
                        call address(cd[196]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_422] == bool(mem[_422])
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = cd[36]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = cd[132]
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _502 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _507 = mem[_502]
                        require mem[_502] <= test266151307()
                        require _502 + mem[_502] + 31 < _502 + return_data.size
                        _512 = mem[_502 + mem[_502]]
                        if mem[_502 + mem[_502]] > test266151307():
                            revert with 0, 65
                        if _502 + ceil32(return_data.size) + ceil32(32 * mem[_502 + mem[_502]]) + 1 > test266151307() or ceil32(32 * mem[_502 + mem[_502]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _502 + ceil32(return_data.size) + ceil32(32 * mem[_502 + mem[_502]]) + 1
                        mem[_502 + ceil32(return_data.size)] = _512
                        require return_data.size >= _507 + (32 * _512) + 32
                        mem[_502 + ceil32(return_data.size) + 32 len 32 * _512] = mem[_502 + _507 + 32 len 32 * _512]
                        if _512 < 1:
                            revert with 0, 17
                        if _512 - 1 >= _512:
                            revert with 0, 50
                        if mem[(32 * _512 - 1) + _502 + ceil32(return_data.size) + 32] < cd[36]:
                            revert with 0, 'req. bnb not achieved!'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x0ecdbcbf(?????) == uint32(call.func_hash) >> 224:
            require calldata.size - 4 >= 160
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            require cd[68] == address(cd[68])
            require cd[132] == address(cd[132])
            if stor0 != msg.sender:
                if 0x23fdc534cfbbf7cfda0acb15e0e340939f319b6a != msg.sender:
                    if 0xe8509e8fb3938a9576399f7448bcdf3e4c651914 != msg.sender:
                        if 0xe8849d44b5af872298d7814c5e08d07268055035 != msg.sender:
                            if 0x6b4cbc5363288d2083c2102813921abae6211413 != msg.sender:
                                revert with 0, 'only my accounts!'
            mem[128] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
            mem[132] = cd[4]
            mem[164] = 128
            mem[260] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = 292
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = address(cd[68])
            mem[228] = cd[100]
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[292 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
            require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < return_data.size + 128
            if mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32
        else:
            require unknown_0x373feab5(?????) == uint32(call.func_hash) >> 224
            require calldata.size - 4 >= 224
            require cd[68] <= test266151307()
            require cd[68] + 35 < calldata.size
            require ('cd', 68).length <= test266151307()
            require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
            require cd[100] == address(cd[100])
            require cd[164] == address(cd[164])
            require cd[196] == address(cd[196])
            if msg.sender == stor0:
                mem[132] = msg.sender
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[4]:
                    revert with 0, 'no tokens in balance!'
                mem[ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = cd[4]
                mem[ceil32(return_data.size) + 164] = 64
                mem[ceil32(return_data.size) + 196] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = ceil32(return_data.size) + 228
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 228 len 32 * ('cd', 68).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _260 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                _270 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = _270
                require return_data.size >= _260 + (32 * _270) + 32
                mem[(2 * ceil32(return_data.size)) + 160 len 32 * _270] = mem[ceil32(return_data.size) + _260 + 160 len 32 * _270]
                if _270 < 1:
                    revert with 0, 17
                if _270 - 1 >= _270:
                    revert with 0, 50
                if mem[(32 * _270 - 1) + (2 * ceil32(return_data.size)) + 160] < cd[36]:
                    emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                else:
                    mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_470] == bool(mem[_470])
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = cd[4]
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_490] == bool(mem[_490])
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[4]
                    mem[mem[64] + 36] = cd[36]
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = cd[132]
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _570 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _575 = mem[_570]
                    require mem[_570] <= test266151307()
                    require _570 + mem[_570] + 31 < _570 + return_data.size
                    _580 = mem[_570 + mem[_570]]
                    if mem[_570 + mem[_570]] > test266151307():
                        revert with 0, 65
                    if _570 + ceil32(return_data.size) + ceil32(32 * mem[_570 + mem[_570]]) + 1 > test266151307() or ceil32(32 * mem[_570 + mem[_570]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _570 + ceil32(return_data.size) + ceil32(32 * mem[_570 + mem[_570]]) + 1
                    mem[_570 + ceil32(return_data.size)] = _580
                    require return_data.size >= _575 + (32 * _580) + 32
                    mem[_570 + ceil32(return_data.size) + 32 len 32 * _580] = mem[_570 + _575 + 32 len 32 * _580]
                    if _580 < 1:
                        revert with 0, 17
                    if _580 - 1 >= _580:
                        revert with 0, 50
                    if mem[(32 * _580 - 1) + _570 + ceil32(return_data.size) + 32] < cd[36]:
                        revert with 0, 'req. bnb not achieved!'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == 0x23fdc534cfbbf7cfda0acb15e0e340939f319b6a:
                    mem[132] = msg.sender
                    require ext_code.size(address(cd[196]))
                    staticcall address(cd[196]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[4]:
                        revert with 0, 'no tokens in balance!'
                    mem[ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = cd[4]
                    mem[ceil32(return_data.size) + 164] = 64
                    mem[ceil32(return_data.size) + 196] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = ceil32(return_data.size) + 228
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 228 len 32 * ('cd', 68).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _261 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                    _271 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = _271
                    require return_data.size >= _261 + (32 * _271) + 32
                    mem[(2 * ceil32(return_data.size)) + 160 len 32 * _271] = mem[ceil32(return_data.size) + _261 + 160 len 32 * _271]
                    if _271 < 1:
                        revert with 0, 17
                    if _271 - 1 >= _271:
                        revert with 0, 50
                    if mem[(32 * _271 - 1) + (2 * ceil32(return_data.size)) + 160] < cd[36]:
                        emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                    else:
                        mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                        mem[mem[64] + 36] = cd[4]
                        require ext_code.size(address(cd[196]))
                        call address(cd[196]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_471] == bool(mem[_471])
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = cd[4]
                        require ext_code.size(address(cd[196]))
                        call address(cd[196]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_491] == bool(mem[_491])
                        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = cd[36]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = cd[132]
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _571 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _576 = mem[_571]
                        require mem[_571] <= test266151307()
                        require _571 + mem[_571] + 31 < _571 + return_data.size
                        _581 = mem[_571 + mem[_571]]
                        if mem[_571 + mem[_571]] > test266151307():
                            revert with 0, 65
                        if _571 + ceil32(return_data.size) + ceil32(32 * mem[_571 + mem[_571]]) + 1 > test266151307() or ceil32(32 * mem[_571 + mem[_571]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _571 + ceil32(return_data.size) + ceil32(32 * mem[_571 + mem[_571]]) + 1
                        mem[_571 + ceil32(return_data.size)] = _581
                        require return_data.size >= _576 + (32 * _581) + 32
                        mem[_571 + ceil32(return_data.size) + 32 len 32 * _581] = mem[_571 + _576 + 32 len 32 * _581]
                        if _581 < 1:
                            revert with 0, 17
                        if _581 - 1 >= _581:
                            revert with 0, 50
                        if mem[(32 * _581 - 1) + _571 + ceil32(return_data.size) + 32] < cd[36]:
                            revert with 0, 'req. bnb not achieved!'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.sender == 0xe8509e8fb3938a9576399f7448bcdf3e4c651914:
                        mem[132] = msg.sender
                        require ext_code.size(address(cd[196]))
                        staticcall address(cd[196]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < cd[4]:
                            revert with 0, 'no tokens in balance!'
                        mem[ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 132] = cd[4]
                        mem[ceil32(return_data.size) + 164] = 64
                        mem[ceil32(return_data.size) + 196] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = ceil32(return_data.size) + 228
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 228 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _262 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32
                        require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                        _272 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = _272
                        require return_data.size >= _262 + (32 * _272) + 32
                        mem[(2 * ceil32(return_data.size)) + 160 len 32 * _272] = mem[ceil32(return_data.size) + _262 + 160 len 32 * _272]
                        if _272 < 1:
                            revert with 0, 17
                        if _272 - 1 >= _272:
                            revert with 0, 50
                        if mem[(32 * _272 - 1) + (2 * ceil32(return_data.size)) + 160] < cd[36]:
                            emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                        else:
                            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                            mem[mem[64] + 36] = cd[4]
                            require ext_code.size(address(cd[196]))
                            call address(cd[196]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _472 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_472] == bool(mem[_472])
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = cd[4]
                            require ext_code.size(address(cd[196]))
                            call address(cd[196]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, cd[4]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _492 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_492] == bool(mem[_492])
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = cd[36]
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = cd[132]
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _572 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _577 = mem[_572]
                            require mem[_572] <= test266151307()
                            require _572 + mem[_572] + 31 < _572 + return_data.size
                            _582 = mem[_572 + mem[_572]]
                            if mem[_572 + mem[_572]] > test266151307():
                                revert with 0, 65
                            if _572 + ceil32(return_data.size) + ceil32(32 * mem[_572 + mem[_572]]) + 1 > test266151307() or ceil32(32 * mem[_572 + mem[_572]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _572 + ceil32(return_data.size) + ceil32(32 * mem[_572 + mem[_572]]) + 1
                            mem[_572 + ceil32(return_data.size)] = _582
                            require return_data.size >= _577 + (32 * _582) + 32
                            mem[_572 + ceil32(return_data.size) + 32 len 32 * _582] = mem[_572 + _577 + 32 len 32 * _582]
                            if _582 < 1:
                                revert with 0, 17
                            if _582 - 1 >= _582:
                                revert with 0, 50
                            if mem[(32 * _582 - 1) + _572 + ceil32(return_data.size) + 32] < cd[36]:
                                revert with 0, 'req. bnb not achieved!'
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if msg.sender == 0xe8849d44b5af872298d7814c5e08d07268055035:
                            mem[132] = msg.sender
                            require ext_code.size(address(cd[196]))
                            staticcall address(cd[196]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < cd[4]:
                                revert with 0, 'no tokens in balance!'
                            mem[ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 132] = cd[4]
                            mem[ceil32(return_data.size) + 164] = 64
                            mem[ceil32(return_data.size) + 196] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = ceil32(return_data.size) + 228
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 228 len 32 * ('cd', 68).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _263 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32
                            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                            _273 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                            mem[(2 * ceil32(return_data.size)) + 128] = _273
                            require return_data.size >= _263 + (32 * _273) + 32
                            mem[(2 * ceil32(return_data.size)) + 160 len 32 * _273] = mem[ceil32(return_data.size) + _263 + 160 len 32 * _273]
                            if _273 < 1:
                                revert with 0, 17
                            if _273 - 1 >= _273:
                                revert with 0, 50
                            if mem[(32 * _273 - 1) + (2 * ceil32(return_data.size)) + 160] < cd[36]:
                                emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                            else:
                                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                mem[mem[64] + 36] = cd[4]
                                require ext_code.size(address(cd[196]))
                                call address(cd[196]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _473 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_473] == bool(mem[_473])
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = cd[4]
                                require ext_code.size(address(cd[196]))
                                call address(cd[196]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, cd[4]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _493 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_493] == bool(mem[_493])
                                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[4]
                                mem[mem[64] + 36] = cd[36]
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = ('cd', 68).length
                                idx = 0
                                s = cd[68] + 36
                                t = mem[64] + 196
                                while idx < ('cd', 68).length:
                                    require cd[s] == address(cd[s])
                                    mem[t] = address(cd[s])
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[132]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _573 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _578 = mem[_573]
                                require mem[_573] <= test266151307()
                                require _573 + mem[_573] + 31 < _573 + return_data.size
                                _583 = mem[_573 + mem[_573]]
                                if mem[_573 + mem[_573]] > test266151307():
                                    revert with 0, 65
                                if _573 + ceil32(return_data.size) + ceil32(32 * mem[_573 + mem[_573]]) + 1 > test266151307() or ceil32(32 * mem[_573 + mem[_573]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _573 + ceil32(return_data.size) + ceil32(32 * mem[_573 + mem[_573]]) + 1
                                mem[_573 + ceil32(return_data.size)] = _583
                                require return_data.size >= _578 + (32 * _583) + 32
                                mem[_573 + ceil32(return_data.size) + 32 len 32 * _583] = mem[_573 + _578 + 32 len 32 * _583]
                                if _583 < 1:
                                    revert with 0, 17
                                if _583 - 1 >= _583:
                                    revert with 0, 50
                                if mem[(32 * _583 - 1) + _573 + ceil32(return_data.size) + 32] < cd[36]:
                                    revert with 0, 'req. bnb not achieved!'
                                call msg.sender with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0x6b4cbc5363288d2083c2102813921abae6211413 != msg.sender:
                                revert with 0, 'only my accounts!'
                            mem[132] = msg.sender
                            require ext_code.size(address(cd[196]))
                            staticcall address(cd[196]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < cd[4]:
                                revert with 0, 'no tokens in balance!'
                            mem[ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 132] = cd[4]
                            mem[ceil32(return_data.size) + 164] = 64
                            mem[ceil32(return_data.size) + 196] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = ceil32(return_data.size) + 228
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 228 len 32 * ('cd', 68).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _264 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32
                            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                            _274 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                            mem[(2 * ceil32(return_data.size)) + 128] = _274
                            require return_data.size >= _264 + (32 * _274) + 32
                            mem[(2 * ceil32(return_data.size)) + 160 len 32 * _274] = mem[ceil32(return_data.size) + _264 + 160 len 32 * _274]
                            if _274 < 1:
                                revert with 0, 17
                            if _274 - 1 >= _274:
                                revert with 0, 50
                            if mem[(32 * _274 - 1) + (2 * ceil32(return_data.size)) + 160] < cd[36]:
                                emit 0x8dc77d69: 'INSUFFICIENT OUTPUT!'
                            else:
                                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                mem[mem[64] + 36] = cd[4]
                                require ext_code.size(address(cd[196]))
                                call address(cd[196]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[4]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _474 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_474] == bool(mem[_474])
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = cd[4]
                                require ext_code.size(address(cd[196]))
                                call address(cd[196]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, cd[4]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _494 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_494] == bool(mem[_494])
                                mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[4]
                                mem[mem[64] + 36] = cd[36]
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = ('cd', 68).length
                                idx = 0
                                s = cd[68] + 36
                                t = mem[64] + 196
                                while idx < ('cd', 68).length:
                                    require cd[s] == address(cd[s])
                                    mem[t] = address(cd[s])
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[132]
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), address(this.address), cd[132]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _574 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _579 = mem[_574]
                                require mem[_574] <= test266151307()
                                require _574 + mem[_574] + 31 < _574 + return_data.size
                                _584 = mem[_574 + mem[_574]]
                                if mem[_574 + mem[_574]] > test266151307():
                                    revert with 0, 65
                                if _574 + ceil32(return_data.size) + ceil32(32 * mem[_574 + mem[_574]]) + 1 > test266151307() or ceil32(32 * mem[_574 + mem[_574]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _574 + ceil32(return_data.size) + ceil32(32 * mem[_574 + mem[_574]]) + 1
                                mem[_574 + ceil32(return_data.size)] = _584
                                require return_data.size >= _579 + (32 * _584) + 32
                                mem[_574 + ceil32(return_data.size) + 32 len 32 * _584] = mem[_574 + _579 + 32 len 32 * _584]
                                if _584 < 1:
                                    revert with 0, 17
                                if _584 - 1 >= _584:
                                    revert with 0, 50
                                if mem[(32 * _584 - 1) + _574 + ceil32(return_data.size) + 32] < cd[36]:
                                    revert with 0, 'req. bnb not achieved!'
                                call msg.sender with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
