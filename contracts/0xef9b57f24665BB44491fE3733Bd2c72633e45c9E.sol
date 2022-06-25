contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address stor0;
mapping of uint8 stor1;
uint256 stor4; offset 32
uint256 stor4;

function isOwner() {
    return (msg.sender == stor0)
}

function isWhitelisted() {
    return (bool(stor1[msg.sender]) == 1)
}

function sub_26e3b8e2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor1[address(arg1)] = 1
}

function sub_f3450751(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Mind your own business!'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor1[stor0] = 0
    stor0 = arg1
    stor1[arg1] = 1
}

function sub_5a1ed9e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    if stor0 == address(arg1):
        revert with 0, 'Big Boss has immunity!'
    stor1[address(arg1)] = 0
}

function sub_88f93af8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_76729087(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] == address(cd[164])
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Mind your own business!'
    if ('cd', 36).length != 3:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99] = 2
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len 64] = call.data[calldata.size len 64]
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 141 len 20]
        if 1 == cd[132]:
            if 35 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 199] = 0
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 128
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = ('cd', 36).length
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = this.address
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = block.timestamp + 35
            require ext_code.size(address(cd[164]))
            call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value uint256(stor4.field_0) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            _2232 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 199] = this.address
            staticcall address(_2232).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            _2268 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 199] = address(cd[164])
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = -6
            call address(_2268).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[164]), -6
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 195] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 195
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 15 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 195] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = ext_call.return_data[0]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = 0
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = 160
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = 2
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = this.address
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = block.timestamp + 15
            require ext_code.size(address(cd[164]))
            call address(cd[164]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391 len 64]
            if not ext_call.success:
                revert with 0, 'Winnie the pooh approves!'
            if 1 >= ('cd', 4).length:
                revert with 0, 50
            if mem[160] != 0:
                idx = 0
                while idx < ('cd', 100).length:
                    s = 0
                    t = 0
                    while s < cd[68]:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        _3405 = mem[128]
                        if 1 >= mem[96]:
                            revert with 0, 50
                        _3414 = mem[160]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        _3423 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _3447 = mem[64]
                        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3414
                        mem[mem[64] + 36] = 128
                        _3457 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                        u = 0
                        v = ceil32(32 * ('cd', 4).length) + 129
                        w = mem[64] + 164
                        while u < _3457:
                            mem[w] = mem[v + 12 len 20]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_3447 + 68] = address(_3423)
                        mem[_3447 + 100] = block.timestamp + 35
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value _3405 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3447 + (32 * _3457) + -mem[64] + 160]
                        if not ext_call.success:
                            if t != 1:
                                revert with 0, 'Your transaction(s) failed!'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3610 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3628 = mem[_3610]
                        require mem[_3610] <= test266151307()
                        require _3610 + return_data.size > _3610 + mem[_3610] + 31
                        _3644 = mem[_3610 + mem[_3610]]
                        if mem[_3610 + mem[_3610]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_3610 + mem[_3610]]) + 1 < 0 or _3610 + ceil32(return_data.size) + ceil32(32 * mem[_3610 + mem[_3610]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _3610 + ceil32(return_data.size) + ceil32(32 * mem[_3610 + mem[_3610]]) + 1
                        mem[_3610 + ceil32(return_data.size)] = _3644
                        require _3628 + (32 * _3644) + 32 <= return_data.size
                        t = _3610 + ceil32(return_data.size) + 32
                        idx = _3610 + _3628 + 32
                        while idx < _3610 + _3628 + (32 * _3644) + 32:
                            mem[t] = mem[idx]
                            t = t + 32
                            idx = idx + 32
                            continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < ('cd', 100).length:
                    s = 0
                    t = 0
                    while s < cd[68]:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        _3407 = mem[128]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        _3416 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _3439 = mem[64]
                        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        _3452 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                        u = 0
                        v = ceil32(32 * ('cd', 4).length) + 129
                        w = mem[64] + 164
                        while u < _3452:
                            mem[w] = mem[v + 12 len 20]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_3439 + 68] = address(_3416)
                        mem[_3439 + 100] = block.timestamp + 35
                        require ext_code.size(address(cd[164]))
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value _3407 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3439 + (32 * _3452) + -mem[64] + 160]
                        if ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = 1
                            continue 
                        if t != 1:
                            revert with 0, 'Your transaction(s) failed!'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if 2 == cd[132]:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 4
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 128] = call.data[calldata.size len 128]
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 0, 50
                _1673 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = this.address
                staticcall address(_1673).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 359] = uint256(stor4.field_0)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = 64
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = ('cd', 36).length
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor4.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355
                require return_data.size >= 32
                _2217 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32)
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 355 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 386
                _2226 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]) + 356 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]) + 356
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]
                require _2217 + (32 * _2226) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387 len ceil32(32 * _2226)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2217 + 387 len ceil32(32 * _2226)]
                if _2226 < 1:
                    revert with 0, 17
                if _2226 - 1 >= _2226:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[(32 * _2226 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387]
                if 35 > !block.timestamp:
                    revert with 0, 17
                _2711 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 36).length
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 164
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2711 + 68] = this.address
                mem[_2711 + 100] = block.timestamp + 35
                require ext_code.size(address(cd[164]))
                call address(cd[164]).mem[mem[64] len 4] with:
                   value uint256(stor4.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2711 + (32 * ('cd', 36).length) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                    revert with 0, 17
                if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _3120 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 4] = this.address
                staticcall address(_3120).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = mem[_3132]
                if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                    revert with 0, 50
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                    revert with 0, 50
                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                    revert with 0, 50
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 17
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                    revert with 0, 18
                if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                    revert with 0, 50
                if 2 >= mem[96]:
                    revert with 0, 50
                if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                    revert with 0, 'You are not the IRS.'
                if 1 >= mem[96]:
                    revert with 0, 50
                if mem[160] != 0:
                    _3393 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    idx = 0
                    while idx < _3393:
                        s = 0
                        t = 0
                        while s < cd[68]:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            _3589 = mem[128]
                            if 1 >= mem[96]:
                                revert with 0, 50
                            _3597 = mem[160]
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                revert with 0, 50
                            _3609 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _3636 = mem[64]
                            mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _3597
                            mem[mem[64] + 36] = 128
                            _3650 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                            u = 0
                            v = ceil32(32 * ('cd', 4).length) + 129
                            w = mem[64] + 164
                            while u < _3650:
                                mem[w] = mem[v + 12 len 20]
                                _3393 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_3636 + 68] = address(_3609)
                            mem[_3636 + 100] = block.timestamp + 35
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value _3589 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3636 + (32 * _3650) + -mem[64] + 160]
                            if not ext_call.success:
                                if t != 1:
                                    revert with 0, 'Your transaction(s) failed!'
                                if idx == -1:
                                    revert with 0, 17
                                _3393 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                            _3744 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3749 = mem[_3744]
                            require mem[_3744] <= test266151307()
                            require _3744 + return_data.size > _3744 + mem[_3744] + 31
                            _3760 = mem[_3744 + mem[_3744]]
                            if mem[_3744 + mem[_3744]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_3744 + mem[_3744]]) + 1 < 0 or _3744 + ceil32(return_data.size) + ceil32(32 * mem[_3744 + mem[_3744]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _3744 + ceil32(return_data.size) + ceil32(32 * mem[_3744 + mem[_3744]]) + 1
                            mem[_3744 + ceil32(return_data.size)] = _3760
                            require _3749 + (32 * _3760) + 32 <= return_data.size
                            t = _3744 + ceil32(return_data.size) + 32
                            idx = _3744 + _3749 + 32
                            while idx < _3744 + _3749 + (32 * _3760) + 32:
                                mem[t] = mem[idx]
                                _3393 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                t = t + 32
                                idx = idx + 32
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _3393 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            s = s + 1
                            t = 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        _3393 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = idx + 1
                        continue 
                else:
                    _3394 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    idx = 0
                    while idx < _3394:
                        s = 0
                        t = 0
                        while s < cd[68]:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            _3591 = mem[128]
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                revert with 0, 50
                            _3599 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _3626 = mem[64]
                            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            _3643 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                            u = 0
                            v = ceil32(32 * ('cd', 4).length) + 129
                            w = mem[64] + 164
                            while u < _3643:
                                mem[w] = mem[v + 12 len 20]
                                _3394 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_3626 + 68] = address(_3599)
                            mem[_3626 + 100] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value _3591 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3626 + (32 * _3643) + -mem[64] + 160]
                            if ext_call.success:
                                if s == -1:
                                    revert with 0, 17
                                _3394 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                s = s + 1
                                t = 1
                                continue 
                            if t != 1:
                                revert with 0, 'Your transaction(s) failed!'
                            if idx == -1:
                                revert with 0, 17
                            _3394 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = idx + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        _3394 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = idx + 1
                        continue 
            else:
                if cd[132] != 3:
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[160] != 0:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _2659 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _2671 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _2679 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _2697 = mem[64]
                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2671
                                mem[mem[64] + 36] = 128
                                _2705 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _2705:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2697 + 68] = address(_2679)
                                mem[_2697 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _2659 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2697 + (32 * _2705) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                _3075 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3094 = mem[_3075]
                                require mem[_3075] <= test266151307()
                                require _3075 + return_data.size > _3075 + mem[_3075] + 31
                                _3109 = mem[_3075 + mem[_3075]]
                                if mem[_3075 + mem[_3075]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3075 + mem[_3075]]) + 1 < 0 or _3075 + ceil32(return_data.size) + ceil32(32 * mem[_3075 + mem[_3075]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3075 + ceil32(return_data.size) + ceil32(32 * mem[_3075 + mem[_3075]]) + 1
                                mem[_3075 + ceil32(return_data.size)] = _3109
                                require _3094 + (32 * _3109) + 32 <= return_data.size
                                t = _3075 + ceil32(return_data.size) + 32
                                idx = _3075 + _3094 + 32
                                while idx < _3075 + _3094 + (32 * _3109) + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _2661 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _2673 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _2685 = mem[64]
                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _2701 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _2701:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2685 + 68] = address(_2673)
                                mem[_2685 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _2661 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2685 + (32 * _2701) + -mem[64] + 160]
                                if ext_call.success:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = 1
                                    continue 
                                if t != 1:
                                    revert with 0, 'Your transaction(s) failed!'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 4
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 128] = call.data[calldata.size len 128]
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    _1679 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = this.address
                    staticcall address(_1679).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 359] = uint256(stor4.field_0)
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = 64
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args uint256(stor4.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455 len 32 * ('cd', 36).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355
                    require return_data.size >= 32
                    _2216 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32)
                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 355 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 386
                    _2225 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]) + 356 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]) + 356
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor4.field_32) + 355]
                    require _2216 + (32 * _2225) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387 len ceil32(32 * _2225)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2216 + 387 len ceil32(32 * _2225)]
                    if _2225 < 1:
                        revert with 0, 17
                    if _2225 - 1 >= _2225:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[(32 * _2225 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387]
                    if 35 > !block.timestamp:
                        revert with 0, 17
                    _2710 = mem[64]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = mem[64] + 164
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2710 + 68] = this.address
                    mem[_2710 + 100] = block.timestamp + 35
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).mem[mem[64] len 4] with:
                       value uint256(stor4.field_0) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2710 + (32 * ('cd', 36).length) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _3117 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_3117).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = mem[_3131]
                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                        revert with 0, 18
                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < 0:
                        revert with 0, 'You are not the IRS.'
                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                        revert with 0, 'You are not the IRS.'
                    if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _3251 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 4] = address(cd[164])
                    mem[mem[64] + 36] = -6
                    call address(_3251).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[164]), -6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3257] == bool(mem[_3257])
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                        revert with 0, 50
                    _3283 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    _3289 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3283
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _3295 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                    t = mem[64] + 196
                    while idx < _3295:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3289 + 100] = this.address
                    mem[_3289 + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3289 + (32 * _3295) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with 0, 'Winnie the pooh approves!'
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] != 0:
                        _3577 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        while idx < _3577:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _3725 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _3733 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _3743 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _3753 = mem[64]
                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3733
                                mem[mem[64] + 36] = 128
                                _3765 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _3765:
                                    mem[w] = mem[v + 12 len 20]
                                    _3577 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_3753 + 68] = address(_3743)
                                mem[_3753 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _3725 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3753 + (32 * _3765) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    _3577 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                                _3807 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3810 = mem[_3807]
                                require mem[_3807] <= test266151307()
                                require _3807 + return_data.size > _3807 + mem[_3807] + 31
                                _3817 = mem[_3807 + mem[_3807]]
                                if mem[_3807 + mem[_3807]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3807 + mem[_3807]]) + 1 < 0 or _3807 + ceil32(return_data.size) + ceil32(32 * mem[_3807 + mem[_3807]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3807 + ceil32(return_data.size) + ceil32(32 * mem[_3807 + mem[_3807]]) + 1
                                mem[_3807 + ceil32(return_data.size)] = _3817
                                require _3810 + (32 * _3817) + 32 <= return_data.size
                                t = _3807 + ceil32(return_data.size) + 32
                                idx = _3807 + _3810 + 32
                                while idx < _3807 + _3810 + (32 * _3817) + 32:
                                    mem[t] = mem[idx]
                                    _3577 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                _3577 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                s = s + 1
                                t = 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            _3577 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = idx + 1
                            continue 
                    else:
                        _3578 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        while idx < _3578:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _3727 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _3735 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _3747 = mem[64]
                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _3759 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _3759:
                                    mem[w] = mem[v + 12 len 20]
                                    _3578 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_3747 + 68] = address(_3735)
                                mem[_3747 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _3727 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3747 + (32 * _3759) + -mem[64] + 160]
                                if ext_call.success:
                                    if s == -1:
                                        revert with 0, 17
                                    _3578 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if t != 1:
                                    revert with 0, 'Your transaction(s) failed!'
                                if idx == -1:
                                    revert with 0, 17
                                _3578 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            _3578 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = idx + 1
                            continue 
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99] = 3
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len 96] = call.data[calldata.size len 96]
        if 2 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = mem[ceil32(32 * ('cd', 4).length) + 205 len 20]
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = mem[ceil32(32 * ('cd', 4).length) + 141 len 20]
        if 1 == cd[132]:
            if 35 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 0
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 128
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = ('cd', 36).length
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = this.address
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = block.timestamp + 35
            require ext_code.size(address(cd[164]))
            call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value uint256(stor4.field_0) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            _2236 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = this.address
            staticcall address(_2236).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            _2274 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = address(cd[164])
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = -6
            call address(_2274).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[164]), -6
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 227] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 227
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 15 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 227] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = ext_call.return_data[0]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = 0
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = 160
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = 3
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = this.address
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = block.timestamp + 15
            require ext_code.size(address(cd[164]))
            call address(cd[164]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423 len 96]
            if not ext_call.success:
                revert with 0, 'Winnie the pooh approves!'
            if 1 >= ('cd', 4).length:
                revert with 0, 50
            if mem[160] != 0:
                idx = 0
                while idx < ('cd', 100).length:
                    s = 0
                    t = 0
                    while s < cd[68]:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        _3409 = mem[128]
                        if 1 >= mem[96]:
                            revert with 0, 50
                        _3418 = mem[160]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        _3426 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _3450 = mem[64]
                        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3418
                        mem[mem[64] + 36] = 128
                        _3460 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                        u = 0
                        v = ceil32(32 * ('cd', 4).length) + 129
                        w = mem[64] + 164
                        while u < _3460:
                            mem[w] = mem[v + 12 len 20]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_3450 + 68] = address(_3426)
                        mem[_3450 + 100] = block.timestamp + 35
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value _3409 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3450 + (32 * _3460) + -mem[64] + 160]
                        if not ext_call.success:
                            if t != 1:
                                revert with 0, 'Your transaction(s) failed!'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3614 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3634 = mem[_3614]
                        require mem[_3614] <= test266151307()
                        require _3614 + return_data.size > _3614 + mem[_3614] + 31
                        _3647 = mem[_3614 + mem[_3614]]
                        if mem[_3614 + mem[_3614]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_3614 + mem[_3614]]) + 1 < 0 or _3614 + ceil32(return_data.size) + ceil32(32 * mem[_3614 + mem[_3614]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _3614 + ceil32(return_data.size) + ceil32(32 * mem[_3614 + mem[_3614]]) + 1
                        mem[_3614 + ceil32(return_data.size)] = _3647
                        require _3634 + (32 * _3647) + 32 <= return_data.size
                        t = _3614 + ceil32(return_data.size) + 32
                        idx = _3614 + _3634 + 32
                        while idx < _3614 + _3634 + (32 * _3647) + 32:
                            mem[t] = mem[idx]
                            t = t + 32
                            idx = idx + 32
                            continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < ('cd', 100).length:
                    s = 0
                    t = 0
                    while s < cd[68]:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        _3411 = mem[128]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 0, 50
                        _3420 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _3444 = mem[64]
                        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        _3454 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                        u = 0
                        v = ceil32(32 * ('cd', 4).length) + 129
                        w = mem[64] + 164
                        while u < _3454:
                            mem[w] = mem[v + 12 len 20]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_3444 + 68] = address(_3420)
                        mem[_3444 + 100] = block.timestamp + 35
                        require ext_code.size(address(cd[164]))
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value _3411 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3444 + (32 * _3454) + -mem[64] + 160]
                        if ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = 1
                            continue 
                        if t != 1:
                            revert with 0, 'Your transaction(s) failed!'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if 2 == cd[132]:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 4
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259 len 128] = call.data[calldata.size len 128]
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 0, 50
                _1689 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                staticcall address(_1689).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = uint256(stor4.field_0)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = 64
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = ('cd', 36).length
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args uint256(stor4.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387
                require return_data.size >= 32
                _2222 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32)
                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 418
                _2229 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = _2229
                require _2222 + (32 * _2229) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _2229)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2222 + 419 len ceil32(32 * _2229)]
                if _2229 < 1:
                    revert with 0, 17
                if _2229 - 1 >= _2229:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _2229 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                if 35 > !block.timestamp:
                    revert with 0, 17
                _2714 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 36).length
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 164
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2714 + 68] = this.address
                mem[_2714 + 100] = block.timestamp + 35
                require ext_code.size(address(cd[164]))
                call address(cd[164]).mem[mem[64] len 4] with:
                   value uint256(stor4.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2714 + (32 * ('cd', 36).length) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                    revert with 0, 17
                if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _3127 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 4] = this.address
                staticcall address(_3127).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_3135]
                if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 50
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 50
                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 50
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                    revert with 0, 17
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                    revert with 0, 18
                if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                    revert with 0, 50
                if 2 >= mem[96]:
                    revert with 0, 50
                if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                    revert with 0, 'You are not the IRS.'
                if 1 >= mem[96]:
                    revert with 0, 50
                if mem[160] != 0:
                    _3395 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    idx = 0
                    while idx < _3395:
                        s = 0
                        t = 0
                        while s < cd[68]:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            _3593 = mem[128]
                            if 1 >= mem[96]:
                                revert with 0, 50
                            _3602 = mem[160]
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                revert with 0, 50
                            _3613 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _3640 = mem[64]
                            mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _3602
                            mem[mem[64] + 36] = 128
                            _3652 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                            u = 0
                            v = ceil32(32 * ('cd', 4).length) + 129
                            w = mem[64] + 164
                            while u < _3652:
                                mem[w] = mem[v + 12 len 20]
                                _3395 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_3640 + 68] = address(_3613)
                            mem[_3640 + 100] = block.timestamp + 35
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value _3593 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3640 + (32 * _3652) + -mem[64] + 160]
                            if not ext_call.success:
                                if t != 1:
                                    revert with 0, 'Your transaction(s) failed!'
                                if idx == -1:
                                    revert with 0, 17
                                _3395 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                            _3746 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3752 = mem[_3746]
                            require mem[_3746] <= test266151307()
                            require _3746 + return_data.size > _3746 + mem[_3746] + 31
                            _3763 = mem[_3746 + mem[_3746]]
                            if mem[_3746 + mem[_3746]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_3746 + mem[_3746]]) + 1 < 0 or _3746 + ceil32(return_data.size) + ceil32(32 * mem[_3746 + mem[_3746]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _3746 + ceil32(return_data.size) + ceil32(32 * mem[_3746 + mem[_3746]]) + 1
                            mem[_3746 + ceil32(return_data.size)] = _3763
                            require _3752 + (32 * _3763) + 32 <= return_data.size
                            t = _3746 + ceil32(return_data.size) + 32
                            idx = _3746 + _3752 + 32
                            while idx < _3746 + _3752 + (32 * _3763) + 32:
                                mem[t] = mem[idx]
                                _3395 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                t = t + 32
                                idx = idx + 32
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _3395 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            s = s + 1
                            t = 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        _3395 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = idx + 1
                        continue 
                else:
                    _3396 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                    idx = 0
                    while idx < _3396:
                        s = 0
                        t = 0
                        while s < cd[68]:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            _3595 = mem[128]
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                revert with 0, 50
                            _3604 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _3632 = mem[64]
                            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            _3646 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                            u = 0
                            v = ceil32(32 * ('cd', 4).length) + 129
                            w = mem[64] + 164
                            while u < _3646:
                                mem[w] = mem[v + 12 len 20]
                                _3396 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_3632 + 68] = address(_3604)
                            mem[_3632 + 100] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value _3595 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3632 + (32 * _3646) + -mem[64] + 160]
                            if ext_call.success:
                                if s == -1:
                                    revert with 0, 17
                                _3396 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                s = s + 1
                                t = 1
                                continue 
                            if t != 1:
                                revert with 0, 'Your transaction(s) failed!'
                            if idx == -1:
                                revert with 0, 17
                            _3396 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = idx + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        _3396 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = idx + 1
                        continue 
            else:
                if cd[132] != 3:
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[160] != 0:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _2665 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _2675 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _2680 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _2699 = mem[64]
                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2675
                                mem[mem[64] + 36] = 128
                                _2707 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _2707:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2699 + 68] = address(_2680)
                                mem[_2699 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _2665 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2699 + (32 * _2707) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                _3078 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3099 = mem[_3078]
                                require mem[_3078] <= test266151307()
                                require _3078 + return_data.size > _3078 + mem[_3078] + 31
                                _3113 = mem[_3078 + mem[_3078]]
                                if mem[_3078 + mem[_3078]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3078 + mem[_3078]]) + 1 < 0 or _3078 + ceil32(return_data.size) + ceil32(32 * mem[_3078 + mem[_3078]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3078 + ceil32(return_data.size) + ceil32(32 * mem[_3078 + mem[_3078]]) + 1
                                mem[_3078 + ceil32(return_data.size)] = _3113
                                require _3099 + (32 * _3113) + 32 <= return_data.size
                                t = _3078 + ceil32(return_data.size) + 32
                                idx = _3078 + _3099 + 32
                                while idx < _3078 + _3099 + (32 * _3113) + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _2667 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _2677 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _2691 = mem[64]
                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _2703 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _2703:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_2691 + 68] = address(_2677)
                                mem[_2691 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _2667 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2691 + (32 * _2703) + -mem[64] + 160]
                                if ext_call.success:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = 1
                                    continue 
                                if t != 1:
                                    revert with 0, 'Your transaction(s) failed!'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 4
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259 len 128] = call.data[calldata.size len 128]
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    _1694 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                    staticcall address(_1694).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = uint256(stor4.field_0)
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = 64
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args uint256(stor4.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487 len 32 * ('cd', 36).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387
                    require return_data.size >= 32
                    _2221 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32)
                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 418
                    _2228 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = _2228
                    require _2221 + (32 * _2228) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _2228)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2221 + 419 len ceil32(32 * _2228)]
                    if _2228 < 1:
                        revert with 0, 17
                    if _2228 - 1 >= _2228:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _2228 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                    if 35 > !block.timestamp:
                        revert with 0, 17
                    _2713 = mem[64]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = mem[64] + 164
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2713 + 68] = this.address
                    mem[_2713 + 100] = block.timestamp + 35
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).mem[mem[64] len 4] with:
                       value uint256(stor4.field_0) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2713 + (32 * ('cd', 36).length) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _3124 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_3124).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_3134]
                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 0, 17
                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                        revert with 0, 18
                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < 0:
                        revert with 0, 'You are not the IRS.'
                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                        revert with 0, 'You are not the IRS.'
                    if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _3254 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 4] = address(cd[164])
                    mem[mem[64] + 36] = -6
                    call address(_3254).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[164]), -6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3258] == bool(mem[_3258])
                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                        revert with 0, 50
                    _3284 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    _3291 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3284
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _3297 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                    t = mem[64] + 196
                    while idx < _3297:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3291 + 100] = this.address
                    mem[_3291 + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3291 + (32 * _3297) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with 0, 'Winnie the pooh approves!'
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] != 0:
                        _3579 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        while idx < _3579:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _3729 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _3738 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _3745 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _3756 = mem[64]
                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3738
                                mem[mem[64] + 36] = 128
                                _3766 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _3766:
                                    mem[w] = mem[v + 12 len 20]
                                    _3579 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_3756 + 68] = address(_3745)
                                mem[_3756 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _3729 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3756 + (32 * _3766) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    _3579 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                                _3808 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3812 = mem[_3808]
                                require mem[_3808] <= test266151307()
                                require _3808 + return_data.size > _3808 + mem[_3808] + 31
                                _3819 = mem[_3808 + mem[_3808]]
                                if mem[_3808 + mem[_3808]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3808 + mem[_3808]]) + 1 < 0 or _3808 + ceil32(return_data.size) + ceil32(32 * mem[_3808 + mem[_3808]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3808 + ceil32(return_data.size) + ceil32(32 * mem[_3808 + mem[_3808]]) + 1
                                mem[_3808 + ceil32(return_data.size)] = _3819
                                require _3812 + (32 * _3819) + 32 <= return_data.size
                                t = _3808 + ceil32(return_data.size) + 32
                                idx = _3808 + _3812 + 32
                                while idx < _3808 + _3812 + (32 * _3819) + 32:
                                    mem[t] = mem[idx]
                                    _3579 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                _3579 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                s = s + 1
                                t = 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            _3579 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = idx + 1
                            continue 
                    else:
                        _3580 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                        idx = 0
                        while idx < _3580:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _3731 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _3740 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _3750 = mem[64]
                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _3762 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _3762:
                                    mem[w] = mem[v + 12 len 20]
                                    _3580 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_3750 + 68] = address(_3740)
                                mem[_3750 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _3731 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3750 + (32 * _3762) + -mem[64] + 160]
                                if ext_call.success:
                                    if s == -1:
                                        revert with 0, 17
                                    _3580 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if t != 1:
                                    revert with 0, 'Your transaction(s) failed!'
                                if idx == -1:
                                    revert with 0, 17
                                _3580 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            _3580 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = idx + 1
                            continue 
}



}
