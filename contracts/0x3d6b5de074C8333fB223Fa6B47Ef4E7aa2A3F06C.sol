contract main {




// =====================  Runtime code  =====================


#
#  - sub_76729087(?)
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x88f93af8(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x88f93af8(?????):
                if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (msg.sender == stor0)
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xf3450751(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 32
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Mind your own business!'
                    call msg.sender with:
                       value cd[4] wei
                         gas gas_remaining wei
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor0 != msg.sender:
                        revert with 0, 'Mind your own business!'
                    stor1[stor0] = 0
                    stor0 = address(cd[4])
                    stor1[address(cd[4])] = 1
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = cd[4] + 36
                s = 160
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
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 1
                    stor1[mem[(32 * idx) + 172 len 20]] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if unknown_0x26e3b8e2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if stor0 != msg.sender:
                    revert with 0, 'Mind your own business!'
                stor1[address(cd[4])] = 1
            else:
                if unknown_0x5a1ed9e3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor0 != msg.sender:
                        revert with 0, 'Mind your own business!'
                    if stor0 == address(cd[4]):
                        revert with 0, 'Big Boss has immunity!'
                    stor1[address(cd[4])] = 0
                else:
                    if unknown_0x611b4095(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return (bool(stor1[msg.sender]) == 1)
                    require unknown_0x76729087(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 192
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = 160
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
                    if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    idx = cd[36] + 36
                    s = ceil32(32 * ('cd', 4).length) + 161
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
                    if ceil32(32 * ('cd', 100).length) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ('cd', 100).length
                    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                    idx = cd[100] + 36
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162
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
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = 2
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163 len 64] = call.data[calldata.size len 64]
                        if 1 >= ('cd', 36).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 205 len 20]
                        if 0 >= ('cd', 36).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
                        if 1 == cd[132]:
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 0
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 128
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 161
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
                            _2271 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = this.address
                            staticcall address(_2271).0x70a08231 with:
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
                            _2307 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = address(cd[164])
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = -6
                            call address(_2307).approve(address arg1, uint256 arg2) with:
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
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = 2
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423
                            while idx < 2:
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
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423 len 64]
                            if not ext_call.success:
                                revert with 0, 'Winnie the pooh approves!'
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[192] != 0:
                                idx = 0
                                while idx < ('cd', 100).length:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[128]:
                                            revert with 0, 50
                                        _3444 = mem[160]
                                        if 1 >= mem[128]:
                                            revert with 0, 50
                                        _3453 = mem[192]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                            revert with 0, 50
                                        _3462 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _3486 = mem[64]
                                        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _3453
                                        mem[mem[64] + 36] = 128
                                        _3496 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 161
                                        w = mem[64] + 164
                                        while u < _3496:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_3486 + 68] = address(_3462)
                                        mem[_3486 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _3444 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3486 + (32 * _3496) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        _3649 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3667 = mem[_3649]
                                        require mem[_3649] <= test266151307()
                                        require _3649 + return_data.size > _3649 + mem[_3649] + 31
                                        _3683 = mem[_3649 + mem[_3649]]
                                        if mem[_3649 + mem[_3649]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_3649 + mem[_3649]]) + 1 < 0 or _3649 + ceil32(return_data.size) + ceil32(32 * mem[_3649 + mem[_3649]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _3649 + ceil32(return_data.size) + ceil32(32 * mem[_3649 + mem[_3649]]) + 1
                                        mem[_3649 + ceil32(return_data.size)] = _3683
                                        require _3667 + (32 * _3683) + 32 <= return_data.size
                                        t = _3649 + ceil32(return_data.size) + 32
                                        idx = _3649 + _3667 + 32
                                        while idx < _3649 + _3667 + (32 * _3683) + 32:
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
                                        if 0 >= mem[128]:
                                            revert with 0, 50
                                        _3446 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                            revert with 0, 50
                                        _3455 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _3478 = mem[64]
                                        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _3491 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 161
                                        w = mem[64] + 164
                                        while u < _3491:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_3478 + 68] = address(_3455)
                                        mem[_3478 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _3446 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3478 + (32 * _3491) + -mem[64] + 160]
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
                                _1712 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                                staticcall address(_1712).0x70a08231 with:
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
                                s = ceil32(32 * ('cd', 4).length) + 161
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
                                _2256 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32)
                                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 418
                                _2265 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]
                                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]
                                require _2256 + (32 * _2265) + 32 <= return_data.size
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _2265)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2256 + 419 len ceil32(32 * _2265)]
                                if _2265 < 1:
                                    revert with 0, 17
                                if _2265 - 1 >= _2265:
                                    revert with 0, 50
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _2265 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = mem[64] + 164
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                    revert with 0, 17
                                if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                    revert with 0, 50
                                _3159 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[mem[64] + 4] = this.address
                                staticcall address(_3159).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3171 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                    revert with 0, 50
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_3171]
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
                                if 2 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                    revert with 0, 'You are not the IRS.'
                                if 1 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[192] != 0:
                                    _3432 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    idx = 0
                                    while idx < _3432:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _3628 = mem[160]
                                            if 1 >= mem[128]:
                                                revert with 0, 50
                                            _3636 = mem[192]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _3648 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _3636
                                            mem[mem[64] + 36] = 128
                                            _3689 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _3689:
                                                mem[w] = mem[v + 12 len 20]
                                                _3432 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_3648)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            call address(cd[164]).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _3628 wei
                                                 gas gas_remaining wei
                                                args _3636, 128, address(_3648), block.timestamp + 35, mem[mem[64] + 132 len (32 * _3689) + 32]
                                            if not ext_call.success:
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _3432 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            _3783 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3788 = mem[_3783]
                                            require mem[_3783] <= test266151307()
                                            require _3783 + return_data.size > _3783 + mem[_3783] + 31
                                            _3799 = mem[_3783 + mem[_3783]]
                                            if mem[_3783 + mem[_3783]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_3783 + mem[_3783]]) + 1 < 0 or _3783 + ceil32(return_data.size) + ceil32(32 * mem[_3783 + mem[_3783]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _3783 + ceil32(return_data.size) + ceil32(32 * mem[_3783 + mem[_3783]]) + 1
                                            mem[_3783 + ceil32(return_data.size)] = _3799
                                            require _3788 + (32 * _3799) + 32 <= return_data.size
                                            t = _3783 + ceil32(return_data.size) + 32
                                            idx = _3783 + _3788 + 32
                                            while idx < _3783 + _3788 + (32 * _3799) + 32:
                                                mem[t] = mem[idx]
                                                _3432 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            if s == -1:
                                                revert with 0, 17
                                            _3432 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        _3432 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = idx + 1
                                        continue 
                                else:
                                    _3433 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    idx = 0
                                    while idx < _3433:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _3630 = mem[160]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _3638 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = 128
                                            _3682 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _3682:
                                                mem[w] = mem[v + 12 len 20]
                                                _3433 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_3638)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            require ext_code.size(address(cd[164]))
                                            call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _3630 wei
                                                 gas gas_remaining wei
                                                args 0, 128, address(_3638), block.timestamp + 35, mem[mem[64] + 132 len (32 * _3682) + 32]
                                            if ext_call.success:
                                                if s == -1:
                                                    revert with 0, 17
                                                _3433 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            _3433 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        _3433 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = idx + 1
                                        continue 
                            else:
                                if cd[132] != 3:
                                    if 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        idx = 0
                                        while idx < ('cd', 100).length:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _2698 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _2710 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _2718 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _2710
                                                mem[mem[64] + 36] = 128
                                                _2744 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _2744:
                                                    mem[w] = mem[v + 12 len 20]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_2718)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _2698 wei
                                                     gas gas_remaining wei
                                                    args _2710, 128, address(_2718), block.timestamp + 35, mem[mem[64] + 132 len (32 * _2744) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                _3114 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3133 = mem[_3114]
                                                require mem[_3114] <= test266151307()
                                                require _3114 + return_data.size > _3114 + mem[_3114] + 31
                                                _3148 = mem[_3114 + mem[_3114]]
                                                if mem[_3114 + mem[_3114]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_3114 + mem[_3114]]) + 1 < 0 or _3114 + ceil32(return_data.size) + ceil32(32 * mem[_3114 + mem[_3114]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _3114 + ceil32(return_data.size) + ceil32(32 * mem[_3114 + mem[_3114]]) + 1
                                                mem[_3114 + ceil32(return_data.size)] = _3148
                                                require _3133 + (32 * _3148) + 32 <= return_data.size
                                                t = _3114 + ceil32(return_data.size) + 32
                                                idx = _3114 + _3133 + 32
                                                while idx < _3114 + _3133 + (32 * _3148) + 32:
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
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _2700 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _2712 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                _2724 = mem[64]
                                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _2740 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _2740:
                                                    mem[w] = mem[v + 12 len 20]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[_2724 + 68] = address(_2712)
                                                mem[_2724 + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).mem[mem[64] len 4] with:
                                                   value _2700 wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _2724 + (32 * _2740) + -mem[64] + 160]
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
                                    _1718 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                                    staticcall address(_1718).0x70a08231 with:
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
                                    s = ceil32(32 * ('cd', 4).length) + 161
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
                                    _2255 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 418
                                    _2264 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]) + 388
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor4.field_32) + 387]
                                    require _2255 + (32 * _2264) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _2264)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2255 + 419 len ceil32(32 * _2264)]
                                    if _2264 < 1:
                                        revert with 0, 17
                                    if _2264 - 1 >= _2264:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _2264 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = mem[64] + 164
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _3156 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_3156).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3170 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_3170]
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
                                    if 2 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                        revert with 0, 'You are not the IRS.'
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _3290 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = address(cd[164])
                                    mem[mem[64] + 36] = -6
                                    call address(_3290).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[164]), -6
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3296 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3296] == bool(mem[_3296])
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    _3322 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                                    if 15 > !block.timestamp:
                                        revert with 0, 17
                                    _3328 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _3322
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _3334 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                    t = mem[64] + 196
                                    while idx < _3334:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3328 + 100] = this.address
                                    mem[_3328 + 132] = block.timestamp + 15
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3328 + (32 * _3334) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with 0, 'Winnie the pooh approves!'
                                    if 1 >= mem[128]:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        _3616 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _3616:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _3764 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _3772 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _3782 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                _3792 = mem[64]
                                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _3772
                                                mem[mem[64] + 36] = 128
                                                _3804 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _3804:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _3616 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[_3792 + 68] = address(_3782)
                                                mem[_3792 + 100] = block.timestamp + 35
                                                call address(cd[164]).mem[mem[64] len 4] with:
                                                   value _3764 wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _3792 + (32 * _3804) + -mem[64] + 160]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _3616 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                _3846 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3849 = mem[_3846]
                                                require mem[_3846] <= test266151307()
                                                require _3846 + return_data.size > _3846 + mem[_3846] + 31
                                                _3856 = mem[_3846 + mem[_3846]]
                                                if mem[_3846 + mem[_3846]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_3846 + mem[_3846]]) + 1 < 0 or _3846 + ceil32(return_data.size) + ceil32(32 * mem[_3846 + mem[_3846]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _3846 + ceil32(return_data.size) + ceil32(32 * mem[_3846 + mem[_3846]]) + 1
                                                mem[_3846 + ceil32(return_data.size)] = _3856
                                                require _3849 + (32 * _3856) + 32 <= return_data.size
                                                t = _3846 + ceil32(return_data.size) + 32
                                                idx = _3846 + _3849 + 32
                                                while idx < _3846 + _3849 + (32 * _3856) + 32:
                                                    mem[t] = mem[idx]
                                                    _3616 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                if s == -1:
                                                    revert with 0, 17
                                                _3616 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _3616 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        _3617 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _3617:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _3766 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _3774 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _3798 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _3798:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _3617 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_3774)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _3766 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, address(_3774), block.timestamp + 35, mem[mem[64] + 132 len (32 * _3798) + 32]
                                                if ext_call.success:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _3617 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _3617 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _3617 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = 3
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163 len 96] = call.data[calldata.size len 96]
                        if 2 >= ('cd', 36).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 237 len 20]
                        if 1 >= ('cd', 36).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = mem[ceil32(32 * ('cd', 4).length) + 205 len 20]
                        if 0 >= ('cd', 36).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
                        if 1 == cd[132]:
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 0
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = 128
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 161
                            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = this.address
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value uint256(stor4.field_0) wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423 len 32 * ('cd', 36).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            _2275 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = this.address
                            staticcall address(_2275).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            _2313 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = address(cd[164])
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 295] = -6
                            call address(_2313).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), -6
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 259] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 259
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 259] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = ext_call.return_data[0]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = 0
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = 160
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423] = 3
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 455
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = this.address
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = block.timestamp + 15
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 455 len 96]
                            if not ext_call.success:
                                revert with 0, 'Winnie the pooh approves!'
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[192] != 0:
                                idx = 0
                                while idx < ('cd', 100).length:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[128]:
                                            revert with 0, 50
                                        _3448 = mem[160]
                                        if 1 >= mem[128]:
                                            revert with 0, 50
                                        _3457 = mem[192]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                            revert with 0, 50
                                        _3465 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _3489 = mem[64]
                                        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _3457
                                        mem[mem[64] + 36] = 128
                                        _3499 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 161
                                        w = mem[64] + 164
                                        while u < _3499:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_3489 + 68] = address(_3465)
                                        mem[_3489 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _3448 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3489 + (32 * _3499) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        _3653 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3673 = mem[_3653]
                                        require mem[_3653] <= test266151307()
                                        require _3653 + return_data.size > _3653 + mem[_3653] + 31
                                        _3686 = mem[_3653 + mem[_3653]]
                                        if mem[_3653 + mem[_3653]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_3653 + mem[_3653]]) + 1 < 0 or _3653 + ceil32(return_data.size) + ceil32(32 * mem[_3653 + mem[_3653]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _3653 + ceil32(return_data.size) + ceil32(32 * mem[_3653 + mem[_3653]]) + 1
                                        mem[_3653 + ceil32(return_data.size)] = _3686
                                        require _3673 + (32 * _3686) + 32 <= return_data.size
                                        t = _3653 + ceil32(return_data.size) + 32
                                        idx = _3653 + _3673 + 32
                                        while idx < _3653 + _3673 + (32 * _3686) + 32:
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
                                        if 0 >= mem[128]:
                                            revert with 0, 50
                                        _3450 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                            revert with 0, 50
                                        _3459 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _3483 = mem[64]
                                        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _3493 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 161
                                        w = mem[64] + 164
                                        while u < _3493:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_3483 + 68] = address(_3459)
                                        mem[_3483 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _3450 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _3483 + (32 * _3493) + -mem[64] + 160]
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
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 4
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 128] = call.data[calldata.size len 128]
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _1728 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423] = this.address
                                staticcall address(_1728).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 419] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = uint256(stor4.field_0)
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = 64
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args uint256(stor4.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519 len 32 * ('cd', 36).length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419
                                require return_data.size >= 32
                                _2261 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32)
                                require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 419 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 450
                                _2268 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]
                                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]) + 420 > test266151307():
                                    revert with 0, 65
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]) + 420
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419] = _2268
                                require _2261 + (32 * _2268) + 32 <= return_data.size
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451 len ceil32(32 * _2268)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2261 + 451 len ceil32(32 * _2268)]
                                if _2268 < 1:
                                    revert with 0, 17
                                if _2268 - 1 >= _2268:
                                    revert with 0, 50
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = mem[(32 * _2268 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = mem[64] + 164
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor4.field_0) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                    revert with 0, 17
                                if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                    revert with 0, 50
                                _3166 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[mem[64] + 4] = this.address
                                staticcall address(_3166).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3174 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                    revert with 0, 50
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[_3174]
                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                    revert with 0, 50
                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                    revert with 0, 50
                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                    revert with 0, 50
                                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                    revert with 0, 17
                                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                    revert with 0, 17
                                if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                    revert with 0, 18
                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                    revert with 0, 50
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]
                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                    revert with 0, 50
                                if 2 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                    revert with 0, 'You are not the IRS.'
                                if 1 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[192] != 0:
                                    _3434 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    idx = 0
                                    while idx < _3434:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _3632 = mem[160]
                                            if 1 >= mem[128]:
                                                revert with 0, 50
                                            _3641 = mem[192]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _3652 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            _3679 = mem[64]
                                            mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _3641
                                            mem[mem[64] + 36] = 128
                                            _3691 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _3691:
                                                mem[w] = mem[v + 12 len 20]
                                                _3434 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[_3679 + 68] = address(_3652)
                                            mem[_3679 + 100] = block.timestamp + 35
                                            call address(cd[164]).mem[mem[64] len 4] with:
                                               value _3632 wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3679 + (32 * _3691) + -mem[64] + 160]
                                            if not ext_call.success:
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _3434 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            _3785 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3791 = mem[_3785]
                                            require mem[_3785] <= test266151307()
                                            require _3785 + return_data.size > _3785 + mem[_3785] + 31
                                            _3802 = mem[_3785 + mem[_3785]]
                                            if mem[_3785 + mem[_3785]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_3785 + mem[_3785]]) + 1 < 0 or _3785 + ceil32(return_data.size) + ceil32(32 * mem[_3785 + mem[_3785]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _3785 + ceil32(return_data.size) + ceil32(32 * mem[_3785 + mem[_3785]]) + 1
                                            mem[_3785 + ceil32(return_data.size)] = _3802
                                            require _3791 + (32 * _3802) + 32 <= return_data.size
                                            t = _3785 + ceil32(return_data.size) + 32
                                            idx = _3785 + _3791 + 32
                                            while idx < _3785 + _3791 + (32 * _3802) + 32:
                                                mem[t] = mem[idx]
                                                _3434 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            if s == -1:
                                                revert with 0, 17
                                            _3434 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        _3434 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = idx + 1
                                        continue 
                                else:
                                    _3435 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    idx = 0
                                    while idx < _3435:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _3634 = mem[160]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _3643 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            _3671 = mem[64]
                                            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = 128
                                            _3685 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _3685:
                                                mem[w] = mem[v + 12 len 20]
                                                _3435 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[_3671 + 68] = address(_3643)
                                            mem[_3671 + 100] = block.timestamp + 35
                                            require ext_code.size(address(cd[164]))
                                            call address(cd[164]).mem[mem[64] len 4] with:
                                               value _3634 wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3671 + (32 * _3685) + -mem[64] + 160]
                                            if ext_call.success:
                                                if s == -1:
                                                    revert with 0, 17
                                                _3435 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            _3435 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        _3435 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = idx + 1
                                        continue 
                            else:
                                if cd[132] != 3:
                                    if 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        idx = 0
                                        while idx < ('cd', 100).length:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _2704 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _2714 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _2719 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _2714
                                                mem[mem[64] + 36] = 128
                                                _2746 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _2746:
                                                    mem[w] = mem[v + 12 len 20]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_2719)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _2704 wei
                                                     gas gas_remaining wei
                                                    args _2714, 128, address(_2719), block.timestamp + 35, mem[mem[64] + 132 len (32 * _2746) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                _3117 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3138 = mem[_3117]
                                                require mem[_3117] <= test266151307()
                                                require _3117 + return_data.size > _3117 + mem[_3117] + 31
                                                _3152 = mem[_3117 + mem[_3117]]
                                                if mem[_3117 + mem[_3117]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_3117 + mem[_3117]]) + 1 < 0 or _3117 + ceil32(return_data.size) + ceil32(32 * mem[_3117 + mem[_3117]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _3117 + ceil32(return_data.size) + ceil32(32 * mem[_3117 + mem[_3117]]) + 1
                                                mem[_3117 + ceil32(return_data.size)] = _3152
                                                require _3138 + (32 * _3152) + 32 <= return_data.size
                                                t = _3117 + ceil32(return_data.size) + 32
                                                idx = _3117 + _3138 + 32
                                                while idx < _3117 + _3138 + (32 * _3152) + 32:
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
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _2706 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _2716 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                _2730 = mem[64]
                                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _2742 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _2742:
                                                    mem[w] = mem[v + 12 len 20]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[_2730 + 68] = address(_2716)
                                                mem[_2730 + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).mem[mem[64] len 4] with:
                                                   value _2706 wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _2730 + (32 * _2742) + -mem[64] + 160]
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
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 4
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 128] = call.data[calldata.size len 128]
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    _1733 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423] = this.address
                                    staticcall address(_1733).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 419] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = uint256(stor4.field_0)
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = 64
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor4.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419
                                    require return_data.size >= 32
                                    _2260 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32)
                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 419 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 450
                                    _2267 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]) + 420 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor4.field_32) + 419]) + 420
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419] = _2267
                                    require _2260 + (32 * _2267) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451 len ceil32(32 * _2267)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _2260 + 451 len ceil32(32 * _2267)]
                                    if _2267 < 1:
                                        revert with 0, 17
                                    if _2267 - 1 >= _2267:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = mem[(32 * _2267 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = mem[64] + 164
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor4.field_0) wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _3163 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_3163).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3173 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[_3173]
                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                        revert with 0, 18
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < 0:
                                        revert with 0, 'You are not the IRS.'
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 2 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                        revert with 0, 'You are not the IRS.'
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _3293 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = address(cd[164])
                                    mem[mem[64] + 36] = -6
                                    call address(_3293).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[164]), -6
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3297 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3297] == bool(mem[_3297])
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    _3323 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                    if 15 > !block.timestamp:
                                        revert with 0, 17
                                    _3330 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _3323
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _3336 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                    t = mem[64] + 196
                                    while idx < _3336:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_3330 + 100] = this.address
                                    mem[_3330 + 132] = block.timestamp + 15
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _3330 + (32 * _3336) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with 0, 'Winnie the pooh approves!'
                                    if 1 >= mem[128]:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        _3618 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _3618:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _3768 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _3777 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _3784 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _3777
                                                mem[mem[64] + 36] = 128
                                                _3805 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _3805:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _3618 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_3784)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _3768 wei
                                                     gas gas_remaining wei
                                                    args _3777, 128, address(_3784), block.timestamp + 35, mem[mem[64] + 132 len (32 * _3805) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _3618 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                _3847 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3851 = mem[_3847]
                                                require mem[_3847] <= test266151307()
                                                require _3847 + return_data.size > _3847 + mem[_3847] + 31
                                                _3858 = mem[_3847 + mem[_3847]]
                                                if mem[_3847 + mem[_3847]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_3847 + mem[_3847]]) + 1 < 0 or _3847 + ceil32(return_data.size) + ceil32(32 * mem[_3847 + mem[_3847]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _3847 + ceil32(return_data.size) + ceil32(32 * mem[_3847 + mem[_3847]]) + 1
                                                mem[_3847 + ceil32(return_data.size)] = _3858
                                                require _3851 + (32 * _3858) + 32 <= return_data.size
                                                t = _3847 + ceil32(return_data.size) + 32
                                                idx = _3847 + _3851 + 32
                                                while idx < _3847 + _3851 + (32 * _3858) + 32:
                                                    mem[t] = mem[idx]
                                                    _3618 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                if s == -1:
                                                    revert with 0, 17
                                                _3618 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _3618 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        _3619 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _3619:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _3770 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _3779 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _3801 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _3801:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _3619 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_3779)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _3770 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, address(_3779), block.timestamp + 35, mem[mem[64] + 132 len (32 * _3801) + 32]
                                                if ext_call.success:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _3619 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _3619 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _3619 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
}



}
