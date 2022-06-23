contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_467171ce(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if stor0 != msg.sender:
        revert with 0, 'Only Admin has Access'
    require ext_code.size(address(arg4))
    staticcall address(arg4).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, 0, address(this.address), 128, 64, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    require arg4.length >= 64
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        mem[128] = ext_call.return_data[12 len 20]
        if not arg2:
            mem[160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _232 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _240 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _240
                        require _232 + (32 * _240) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _232 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _240:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _240:
                            _480 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _480
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _480, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _688 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _696 = mem[_688]
                            require mem[_688] <= test266151307()
                            require _688 + mem[_688] + 31 < _688 + return_data.size
                            _704 = mem[_688 + mem[_688]]
                            if mem[_688 + mem[_688]] <= test266151307():
                                if _688 + ceil32(return_data.size) + (32 * mem[_688 + mem[_688]]) + 32 <= test266151307() and (32 * mem[_688 + mem[_688]]) + 32 >= 0:
                                    mem[64] = _688 + ceil32(return_data.size) + (32 * mem[_688 + mem[_688]]) + 32
                                    mem[_688 + ceil32(return_data.size)] = _704
                                    require _696 + (32 * _704) + 32 <= return_data.size
                                    idx = 0
                                    s = _688 + _696 + 32
                                    t = _688 + ceil32(return_data.size) + 32
                                    while idx < _704:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _704:
                                        if mem[_688 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _896 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_896] == bool(mem[_896])
                                        if mem[_896]:
                                            if 1 < _704:
                                                _920 = mem[_688 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _920 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _920 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _944 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_944] == bool(mem[_944])
                                                if mem[_944]:
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _233 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _241 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _241
                        require _233 + (32 * _241) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _233 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _241:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _241:
                            _482 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _482
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _689 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _697 = mem[_689]
                            require mem[_689] <= test266151307()
                            require _689 + mem[_689] + 31 < _689 + return_data.size
                            _705 = mem[_689 + mem[_689]]
                            if mem[_689 + mem[_689]] <= test266151307():
                                if _689 + ceil32(return_data.size) + (32 * mem[_689 + mem[_689]]) + 32 <= test266151307() and (32 * mem[_689 + mem[_689]]) + 32 >= 0:
                                    mem[64] = _689 + ceil32(return_data.size) + (32 * mem[_689 + mem[_689]]) + 32
                                    mem[_689 + ceil32(return_data.size)] = _705
                                    require _697 + (32 * _705) + 32 <= return_data.size
                                    idx = 0
                                    s = _689 + _697 + 32
                                    t = _689 + ceil32(return_data.size) + 32
                                    while idx < _705:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _705:
                                        if mem[_689 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                                        call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _897 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_897] == bool(mem[_897])
                                        if mem[_897]:
                                            if 1 < _705:
                                                _922 = mem[_689 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _922 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[12 len 20]))
                                                call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _922 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _945 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_945] == bool(mem[_945])
                                                if mem[_945]:
        else:
            mem[160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _234 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _242 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _242
                        require _234 + (32 * _242) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _234 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _242:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _242:
                            _484 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _484
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _484, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _690 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _698 = mem[_690]
                            require mem[_690] <= test266151307()
                            require _690 + mem[_690] + 31 < _690 + return_data.size
                            _706 = mem[_690 + mem[_690]]
                            if mem[_690 + mem[_690]] <= test266151307():
                                if _690 + ceil32(return_data.size) + (32 * mem[_690 + mem[_690]]) + 32 <= test266151307() and (32 * mem[_690 + mem[_690]]) + 32 >= 0:
                                    mem[64] = _690 + ceil32(return_data.size) + (32 * mem[_690 + mem[_690]]) + 32
                                    mem[_690 + ceil32(return_data.size)] = _706
                                    require _698 + (32 * _706) + 32 <= return_data.size
                                    idx = 0
                                    s = _690 + _698 + 32
                                    t = _690 + ceil32(return_data.size) + 32
                                    while idx < _706:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _706:
                                        if mem[_690 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                                        call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _898 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_898] == bool(mem[_898])
                                        if mem[_898]:
                                            if 1 < _706:
                                                _924 = mem[_690 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _924 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[12 len 20]))
                                                call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _924 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _946 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_946] == bool(mem[_946])
                                                if mem[_946]:
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _235 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _243 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _243
                        require _235 + (32 * _243) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _235 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _243:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _243:
                            _486 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _486
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _691 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _699 = mem[_691]
                            require mem[_691] <= test266151307()
                            require _691 + mem[_691] + 31 < _691 + return_data.size
                            _707 = mem[_691 + mem[_691]]
                            if mem[_691 + mem[_691]] <= test266151307():
                                if _691 + ceil32(return_data.size) + (32 * mem[_691 + mem[_691]]) + 32 <= test266151307() and (32 * mem[_691 + mem[_691]]) + 32 >= 0:
                                    mem[64] = _691 + ceil32(return_data.size) + (32 * mem[_691 + mem[_691]]) + 32
                                    mem[_691 + ceil32(return_data.size)] = _707
                                    require _699 + (32 * _707) + 32 <= return_data.size
                                    idx = 0
                                    s = _691 + _699 + 32
                                    t = _691 + ceil32(return_data.size) + 32
                                    while idx < _707:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _707:
                                        if mem[_691 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                                        call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _899 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_899] == bool(mem[_899])
                                        if mem[_899]:
                                            if 1 < _707:
                                                _926 = mem[_691 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _926 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[12 len 20]))
                                                call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _926 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _947 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_947] == bool(mem[_947])
                                                if mem[_947]:
    else:
        mem[128] = address(ext_call.return_data[0])
        if not arg2:
            mem[160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _236 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _244 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _244
                        require _236 + (32 * _244) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _236 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _244:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _244:
                            _488 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _488
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _488, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _692 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _700 = mem[_692]
                            require mem[_692] <= test266151307()
                            require _692 + mem[_692] + 31 < _692 + return_data.size
                            _708 = mem[_692 + mem[_692]]
                            if mem[_692 + mem[_692]] <= test266151307():
                                if _692 + ceil32(return_data.size) + (32 * mem[_692 + mem[_692]]) + 32 <= test266151307() and (32 * mem[_692 + mem[_692]]) + 32 >= 0:
                                    mem[64] = _692 + ceil32(return_data.size) + (32 * mem[_692 + mem[_692]]) + 32
                                    mem[_692 + ceil32(return_data.size)] = _708
                                    require _700 + (32 * _708) + 32 <= return_data.size
                                    idx = 0
                                    s = _692 + _700 + 32
                                    t = _692 + ceil32(return_data.size) + 32
                                    while idx < _708:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _708:
                                        if mem[_692 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _900 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_900] == bool(mem[_900])
                                        if mem[_900]:
                                            if 1 < _708:
                                                _928 = mem[_692 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _928 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _928 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _948 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_948] == bool(mem[_948])
                                                if mem[_948]:
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _237 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _245 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _245
                        require _237 + (32 * _245) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _237 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _245:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _245:
                            _490 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _490
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _693 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _701 = mem[_693]
                            require mem[_693] <= test266151307()
                            require _693 + mem[_693] + 31 < _693 + return_data.size
                            _709 = mem[_693 + mem[_693]]
                            if mem[_693 + mem[_693]] <= test266151307():
                                if _693 + ceil32(return_data.size) + (32 * mem[_693 + mem[_693]]) + 32 <= test266151307() and (32 * mem[_693 + mem[_693]]) + 32 >= 0:
                                    mem[64] = _693 + ceil32(return_data.size) + (32 * mem[_693 + mem[_693]]) + 32
                                    mem[_693 + ceil32(return_data.size)] = _709
                                    require _701 + (32 * _709) + 32 <= return_data.size
                                    idx = 0
                                    s = _693 + _701 + 32
                                    t = _693 + ceil32(return_data.size) + 32
                                    while idx < _709:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _709:
                                        if mem[_693 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_901] == bool(mem[_901])
                                        if mem[_901]:
                                            if 1 < _709:
                                                _930 = mem[_693 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _930 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _930 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _949 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_949] == bool(mem[_949])
                                                if mem[_949]:
        else:
            mem[160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[12 len 20]))
                call address(ext_call.return_data[12 len 20]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _238 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _246 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _246
                        require _238 + (32 * _246) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _238 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _246:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _246:
                            _492 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg3
                            mem[mem[64] + 36] = _492
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, _492, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _694 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _702 = mem[_694]
                            require mem[_694] <= test266151307()
                            require _694 + mem[_694] + 31 < _694 + return_data.size
                            _710 = mem[_694 + mem[_694]]
                            if mem[_694 + mem[_694]] <= test266151307():
                                if _694 + ceil32(return_data.size) + (32 * mem[_694 + mem[_694]]) + 32 <= test266151307() and (32 * mem[_694 + mem[_694]]) + 32 >= 0:
                                    mem[64] = _694 + ceil32(return_data.size) + (32 * mem[_694 + mem[_694]]) + 32
                                    mem[_694 + ceil32(return_data.size)] = _710
                                    require _702 + (32 * _710) + 32 <= return_data.size
                                    idx = 0
                                    s = _694 + _702 + 32
                                    t = _694 + ceil32(return_data.size) + 32
                                    while idx < _710:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _710:
                                        if mem[_694 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                                        call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _902 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_902] == bool(mem[_902])
                                        if mem[_902]:
                                            if 1 < _710:
                                                _932 = mem[_694 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _932 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[12 len 20]))
                                                call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _932 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _950 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_950] == bool(mem[_950])
                                                if mem[_950]:
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _239 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _247 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307():
                    if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0:
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(6 * ceil32(return_data.size)) + 192] = _247
                        require _239 + (32 * _247) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _239 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _247:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 < _247:
                            _494 = mem[(6 * ceil32(return_data.size)) + 256]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = _494
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[(arg4 + 36)]))
                            call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, _494, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _695 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _703 = mem[_695]
                            require mem[_695] <= test266151307()
                            require _695 + mem[_695] + 31 < _695 + return_data.size
                            _711 = mem[_695 + mem[_695]]
                            if mem[_695 + mem[_695]] <= test266151307():
                                if _695 + ceil32(return_data.size) + (32 * mem[_695 + mem[_695]]) + 32 <= test266151307() and (32 * mem[_695 + mem[_695]]) + 32 >= 0:
                                    mem[64] = _695 + ceil32(return_data.size) + (32 * mem[_695 + mem[_695]]) + 32
                                    mem[_695 + ceil32(return_data.size)] = _711
                                    require _703 + (32 * _711) + 32 <= return_data.size
                                    idx = 0
                                    s = _695 + _703 + 32
                                    t = _695 + ceil32(return_data.size) + 32
                                    while idx < _711:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 1 < _711:
                                        if mem[_695 + ceil32(return_data.size) + 64] <= cd[(arg4 + 68)]:
                                            revert with 0, 'Failed to get enough from swap to repay'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = cd[(arg4 + 68)]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, cd[(arg4 + 68)]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _903 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_903] == bool(mem[_903])
                                        if mem[_903]:
                                            if 1 < _711:
                                                _934 = mem[_695 + ceil32(return_data.size) + 64]
                                                mem[mem[64] + 4] = arg1
                                                mem[mem[64] + 36] = _934 - cd[(arg4 + 68)]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(arg1), _934 - cd[(arg4 + 68)]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _951 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_951] == bool(mem[_951])
                                                if mem[_951]:
    revert
}



}
