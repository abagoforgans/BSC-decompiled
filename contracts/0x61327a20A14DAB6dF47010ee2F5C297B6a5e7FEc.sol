contract main {




// =====================  Runtime code  =====================


#
#  - TokenWithdraw(address arg1, uint256 arg2)
#  - sub_810f6cdd(?)
#
address owner;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8b235dca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if tx.origin == msg.sender:
            revert with 0, 'Do not send ETH directly'
        else:
    else:
        if unknown_0x68577e4d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            else:
                mem[164] = msg.sender
                mem[196] = cd[36]
                mem[128] = 68
                mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[160 len 4] = unknown_0xa9059cbb(?????)
                mem[228] = 32
                mem[260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                else:
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    else:
                        mem[292 len 96] = unknown_0xa9059cbb(?????), msg.sender, cd[36], 0
                        mem[360] = 0
                        call address(cd[4]) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, cd[36], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, cd[36], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                else:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                if not mem[96]:
                                else:
                                    require mem[96] < 32
                                    revert
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                if not return_data.size:
                                else:
                                    require return_data.size >= 32
                                    require mem[324] == bool(mem[324])
                                    if not mem[324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
        else:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                else:
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
            else:
                if unknown_0x810f6cdd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require cd[4] == address(cd[4])
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                    require cd[132] <= test266151307()
                    require cd[132] + 35 < calldata.size
                    require ('cd', 132).length <= test266151307()
                    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                    if cd[164] < block.timestamp:
                        revert with 0, 'PancakeRouter: EXPIRED'
                    else:
                        mem[164] = msg.sender
                        mem[196] = this.address
                        mem[228] = cd[36]
                        mem[128] = 100
                        mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[160 len 4] = unknown_0x23b872dd(?????)
                        mem[260] = 32
                        mem[292] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        else:
                            if not ext_code.size(address(cd[4])):
                                revert with 0, 'Address: call to non-contract'
                            else:
                                mem[324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
                                mem[424] = 0
                                call address(cd[4]) with:
                                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        else:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                    else:
                                        if not mem[96]:
                                            mem[328] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                            mem[360] = cd[36]
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[36]
                                            mem[324] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(return_data.size) + 324] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 328] = cd[36]
                                                mem[ceil32(return_data.size) + 360] = 0
                                                mem[ceil32(return_data.size) + 392] = 160
                                                mem[ceil32(return_data.size) + 488] = ('cd', 68).length
                                                idx = 0
                                                s = cd[68] + 36
                                                t = ceil32(return_data.size) + 520
                                                while idx < ('cd', 68).length:
                                                    require cd[s] == address(cd[s])
                                                    mem[t] = address(cd[s])
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(return_data.size) + 424] = this.address
                                                mem[ceil32(return_data.size) + 456] = cd[164]
                                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), cd[164], ('cd', 68).length, mem[ceil32(return_data.size) + 520 len 32 * ('cd', 68).length]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (2 * ceil32(return_data.size)) + 324
                                                    require return_data.size >= 32
                                                    _1968 = mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32
                                                    require mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 355 < ceil32(return_data.size) + return_data.size + 324
                                                    _1976 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324] > test266151307():
                                                        revert with 0, 65
                                                    else:
                                                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 1 < 0:
                                                            revert with 0, 65
                                                        else:
                                                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325
                                                            mem[(2 * ceil32(return_data.size)) + 324] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                                                            require return_data.size >= _1968 + (32 * _1976) + 32
                                                            mem[(2 * ceil32(return_data.size)) + 356 len 32 * _1976] = mem[ceil32(return_data.size) + _1968 + 356 len 32 * _1976]
                                                            if 1 >= _1976:
                                                                revert with 0, 50
                                                            else:
                                                                _2860 = mem[(2 * ceil32(return_data.size)) + 388]
                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                mem[mem[64] + 36] = _2860
                                                                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2860
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2880 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_2880] == bool(mem[_2880])
                                                                    if 1 >= _1976:
                                                                        revert with 0, 50
                                                                    else:
                                                                        _2904 = mem[(2 * ceil32(return_data.size)) + 388]
                                                                        if mem[(2 * ceil32(return_data.size)) + 388] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                                                            revert with 0, 17
                                                                        else:
                                                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 0
                                                                            mem[mem[64] + 36] = 128
                                                                            mem[mem[64] + 132] = ('cd', 100).length
                                                                            idx = 0
                                                                            s = cd[100] + 36
                                                                            t = mem[64] + 164
                                                                            while idx < ('cd', 100).length:
                                                                                require cd[s] == address(cd[s])
                                                                                mem[t] = address(cd[s])
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 68] = this.address
                                                                            mem[mem[64] + 100] = cd[164]
                                                                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                               value 9 * _2904 / 20 wei
                                                                                 gas gas_remaining wei
                                                                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _3696 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _3704 = mem[_3696]
                                                                                require mem[_3696] <= test266151307()
                                                                                require _3696 + mem[_3696] + 31 < _3696 + return_data.size
                                                                                _3712 = mem[_3696 + mem[_3696]]
                                                                                if mem[_3696 + mem[_3696]] > test266151307():
                                                                                    revert with 0, 65
                                                                                else:
                                                                                    if _3696 + ceil32(return_data.size) + ceil32(32 * mem[_3696 + mem[_3696]]) + 1 > test266151307() or ceil32(32 * mem[_3696 + mem[_3696]]) + 1 < 0:
                                                                                        revert with 0, 65
                                                                                    else:
                                                                                        mem[64] = _3696 + ceil32(return_data.size) + ceil32(32 * mem[_3696 + mem[_3696]]) + 1
                                                                                        mem[_3696 + ceil32(return_data.size)] = _3712
                                                                                        require return_data.size >= _3704 + (32 * _3712) + 32
                                                                                        mem[_3696 + ceil32(return_data.size) + 32 len 32 * _3712] = mem[_3696 + _3704 + 32 len 32 * _3712]
                                                                                        if 1 >= ('cd', 100).length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                            if 1 >= _3712:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                _4476 = mem[_3696 + ceil32(return_data.size) + 64]
                                                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                mem[mem[64] + 36] = _4476
                                                                                                require ext_code.size(address(('cd', 100)[1]))
                                                                                                call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _4476
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _4496 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_4496] == bool(mem[_4496])
                                                                                                    if not ('cd', 132).length:
                                                                                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                                        mem[mem[64] + 4] = 0
                                                                                                        mem[mem[64] + 36] = 128
                                                                                                        mem[mem[64] + 132] = ('cd', 132).length
                                                                                                        idx = 0
                                                                                                        s = cd[132] + 36
                                                                                                        t = mem[64] + 164
                                                                                                        while idx < ('cd', 132).length:
                                                                                                            require cd[s] == address(cd[s])
                                                                                                            mem[t] = address(cd[s])
                                                                                                            idx = idx + 1
                                                                                                            s = s + 32
                                                                                                            t = t + 32
                                                                                                            continue 
                                                                                                        mem[mem[64] + 68] = this.address
                                                                                                        mem[mem[64] + 100] = cd[164]
                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                                           value 9 * _2904 / 20 wei
                                                                                                             gas gas_remaining wei
                                                                                                            args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _5204 = mem[64]
                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _5220 = mem[_5204]
                                                                                                            require mem[_5204] <= test266151307()
                                                                                                            require _5204 + mem[_5204] + 31 < _5204 + return_data.size
                                                                                                            _5236 = mem[_5204 + mem[_5204]]
                                                                                                            if mem[_5204 + mem[_5204]] > test266151307():
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                if _5204 + ceil32(return_data.size) + ceil32(32 * mem[_5204 + mem[_5204]]) + 1 > test266151307() or ceil32(32 * mem[_5204 + mem[_5204]]) + 1 < 0:
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    mem[64] = _5204 + ceil32(return_data.size) + ceil32(32 * mem[_5204 + mem[_5204]]) + 1
                                                                                                                    mem[_5204 + ceil32(return_data.size)] = _5236
                                                                                                                    require return_data.size >= _5220 + (32 * _5236) + 32
                                                                                                                    mem[_5204 + ceil32(return_data.size) + 32 len 32 * _5236] = mem[_5204 + _5220 + 32 len 32 * _5236]
                                                                                                                    if 1 >= ('cd', 132).length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                        if 1 >= _5236:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            _5868 = mem[_5204 + ceil32(return_data.size) + 64]
                                                                                                                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                                            mem[mem[64] + 36] = _5868
                                                                                                                            require ext_code.size(address(('cd', 132)[1]))
                                                                                                                            call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _5868
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _5908 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_5908] == bool(mem[_5908])
                                                                                                                                if 1 >= ('cd', 100).length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                    if 1 >= ('cd', 132).length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                        if 1 >= mem[_3696 + ceil32(return_data.size)]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            _5964 = mem[_3696 + ceil32(return_data.size) + 64]
                                                                                                                                            if 1 >= _5236:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                _5996 = mem[_5204 + ceil32(return_data.size) + 64]
                                                                                                                                                mem[mem[64] + 68] = mem[_3696 + ceil32(return_data.size) + 64]
                                                                                                                                                mem[mem[64] + 100] = _5996
                                                                                                                                                mem[mem[64] + 132] = 0
                                                                                                                                                mem[mem[64] + 164] = 0
                                                                                                                                                mem[mem[64] + 196] = msg.sender
                                                                                                                                                mem[mem[64] + 228] = cd[164]
                                                                                                                                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _5964, _5996, 0, 0, msg.sender, cd[164]
                                                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 96
                                                                                                                                                    if ('cd', 132).length:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 0, 50
                                                                                                                                                        else:
                                                                                                                                                            require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                            if 1 >= mem[_3696 + ceil32(return_data.size)]:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3696 + ceil32(return_data.size) + 64], 9 * _2904 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    require return_data.size >= 96
                                                                                                                                                    else:
                                                                                                                                                        if cd[164] > block.timestamp:
                                                                                                                                                            revert with 0, 'Testpoint2'
                                                                                                                                                        else:
                                                                                                                                                            if 1 >= ('cd', 100).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                if 1 >= mem[_3696 + ceil32(return_data.size)]:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3696 + ceil32(return_data.size) + 64], 9 * _2904 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 96
                                                                                                    else:
                                                                                                        if cd[164] > block.timestamp:
                                                                                                            revert with 0, 'Testpoint1'
                                                                                                        else:
                                                                                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = 0
                                                                                                            mem[mem[64] + 36] = 128
                                                                                                            mem[mem[64] + 132] = ('cd', 132).length
                                                                                                            idx = 0
                                                                                                            s = cd[132] + 36
                                                                                                            t = mem[64] + 164
                                                                                                            while idx < ('cd', 132).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            mem[mem[64] + 68] = this.address
                                                                                                            mem[mem[64] + 100] = cd[164]
                                                                                                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                                               value 9 * _2904 / 20 wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _5205 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _5221 = mem[_5205]
                                                                                                                require mem[_5205] <= test266151307()
                                                                                                                require _5205 + mem[_5205] + 31 < _5205 + return_data.size
                                                                                                                _5237 = mem[_5205 + mem[_5205]]
                                                                                                                if mem[_5205 + mem[_5205]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _5205 + ceil32(return_data.size) + ceil32(32 * mem[_5205 + mem[_5205]]) + 1 > test266151307() or ceil32(32 * mem[_5205 + mem[_5205]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _5205 + ceil32(return_data.size) + ceil32(32 * mem[_5205 + mem[_5205]]) + 1
                                                                                                                        mem[_5205 + ceil32(return_data.size)] = _5237
                                                                                                                        require return_data.size >= _5221 + (32 * _5237) + 32
                                                                                                                        mem[_5205 + ceil32(return_data.size) + 32 len 32 * _5237] = mem[_5205 + _5221 + 32 len 32 * _5237]
                                                                                                                        if 1 >= ('cd', 132).length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                            if 1 >= _5237:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                _5870 = mem[_5205 + ceil32(return_data.size) + 64]
                                                                                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                                                mem[mem[64] + 36] = _5870
                                                                                                                                require ext_code.size(address(('cd', 132)[1]))
                                                                                                                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _5870
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _5909 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_5909] == bool(mem[_5909])
                                                                                                                                    if 1 >= ('cd', 100).length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                        if 1 >= ('cd', 132).length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                            if 1 >= mem[_3696 + ceil32(return_data.size)]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                _5966 = mem[_3696 + ceil32(return_data.size) + 64]
                                                                                                                                                if 1 >= _5237:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    _5998 = mem[_5205 + ceil32(return_data.size) + 64]
                                                                                                                                                    mem[mem[64] + 68] = mem[_3696 + ceil32(return_data.size) + 64]
                                                                                                                                                    mem[mem[64] + 100] = _5998
                                                                                                                                                    mem[mem[64] + 132] = 0
                                                                                                                                                    mem[mem[64] + 164] = 0
                                                                                                                                                    mem[mem[64] + 196] = msg.sender
                                                                                                                                                    mem[mem[64] + 228] = cd[164]
                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                        args address(('cd', 100)[1]), address(('cd', 132)[1]), _5966, _5998, 0, 0, msg.sender, cd[164]
                                                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                        if ('cd', 132).length:
                                                                                                                                                            if 1 >= ('cd', 100).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                if 1 >= mem[_3696 + ceil32(return_data.size)]:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3696 + ceil32(return_data.size) + 64], 9 * _2904 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                        else:
                                                                                                                                                            if cd[164] > block.timestamp:
                                                                                                                                                                revert with 0, 'Testpoint2'
                                                                                                                                                            else:
                                                                                                                                                                if 1 >= ('cd', 100).length:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                    if 1 >= mem[_3696 + ceil32(return_data.size)]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                            args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3696 + ceil32(return_data.size) + 64], 9 * _2904 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 96
                                        else:
                                            require mem[96] < 32
                                            revert
                                else:
                                    mem[324] = return_data.size
                                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                    else:
                                        if not return_data.size:
                                            mem[ceil32(return_data.size) + 329] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                            mem[ceil32(return_data.size) + 361] = cd[36]
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[36]
                                            mem[ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = cd[36]
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 160
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = ('cd', 68).length
                                                idx = 0
                                                s = cd[68] + 36
                                                t = ceil32(return_data.size) + ceil32(return_data.size) + 521
                                                while idx < ('cd', 68).length:
                                                    require cd[s] == address(cd[s])
                                                    mem[t] = address(cd[s])
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = this.address
                                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[164]
                                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args cd[36], 0, 160, address(this.address), cd[164], ('cd', 68).length, mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 32 * ('cd', 68).length]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325
                                                    require return_data.size >= 32
                                                    _1970 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                                                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                                                    require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                                                    _1978 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                                                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                                        revert with 0, 65
                                                    else:
                                                        if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                                            revert with 0, 65
                                                        else:
                                                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                                                            require return_data.size >= _1970 + (32 * _1978) + 32
                                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1978] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1970 + 357 len 32 * _1978]
                                                            if 1 >= _1978:
                                                                revert with 0, 50
                                                            else:
                                                                _2864 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                mem[mem[64] + 36] = _2864
                                                                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2864
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2882 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_2882] == bool(mem[_2882])
                                                                    if 1 >= _1978:
                                                                        revert with 0, 50
                                                                    else:
                                                                        _2906 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                                                                        if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                                                            revert with 0, 17
                                                                        else:
                                                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 0
                                                                            mem[mem[64] + 36] = 128
                                                                            mem[mem[64] + 132] = ('cd', 100).length
                                                                            idx = 0
                                                                            s = cd[100] + 36
                                                                            t = mem[64] + 164
                                                                            while idx < ('cd', 100).length:
                                                                                require cd[s] == address(cd[s])
                                                                                mem[t] = address(cd[s])
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 68] = this.address
                                                                            mem[mem[64] + 100] = cd[164]
                                                                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                               value 9 * _2906 / 20 wei
                                                                                 gas gas_remaining wei
                                                                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _3698 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _3706 = mem[_3698]
                                                                                require mem[_3698] <= test266151307()
                                                                                require _3698 + mem[_3698] + 31 < _3698 + return_data.size
                                                                                _3714 = mem[_3698 + mem[_3698]]
                                                                                if mem[_3698 + mem[_3698]] > test266151307():
                                                                                    revert with 0, 65
                                                                                else:
                                                                                    if _3698 + ceil32(return_data.size) + ceil32(32 * mem[_3698 + mem[_3698]]) + 1 > test266151307() or ceil32(32 * mem[_3698 + mem[_3698]]) + 1 < 0:
                                                                                        revert with 0, 65
                                                                                    else:
                                                                                        mem[64] = _3698 + ceil32(return_data.size) + ceil32(32 * mem[_3698 + mem[_3698]]) + 1
                                                                                        mem[_3698 + ceil32(return_data.size)] = _3714
                                                                                        require return_data.size >= _3706 + (32 * _3714) + 32
                                                                                        mem[_3698 + ceil32(return_data.size) + 32 len 32 * _3714] = mem[_3698 + _3706 + 32 len 32 * _3714]
                                                                                        if 1 >= ('cd', 100).length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                            if 1 >= _3714:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                _4480 = mem[_3698 + ceil32(return_data.size) + 64]
                                                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                mem[mem[64] + 36] = _4480
                                                                                                require ext_code.size(address(('cd', 100)[1]))
                                                                                                call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _4480
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _4498 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_4498] == bool(mem[_4498])
                                                                                                    if not ('cd', 132).length:
                                                                                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                                        mem[mem[64] + 4] = 0
                                                                                                        mem[mem[64] + 36] = 128
                                                                                                        mem[mem[64] + 132] = ('cd', 132).length
                                                                                                        idx = 0
                                                                                                        s = cd[132] + 36
                                                                                                        t = mem[64] + 164
                                                                                                        while idx < ('cd', 132).length:
                                                                                                            require cd[s] == address(cd[s])
                                                                                                            mem[t] = address(cd[s])
                                                                                                            idx = idx + 1
                                                                                                            s = s + 32
                                                                                                            t = t + 32
                                                                                                            continue 
                                                                                                        mem[mem[64] + 68] = this.address
                                                                                                        mem[mem[64] + 100] = cd[164]
                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                                           value 9 * _2906 / 20 wei
                                                                                                             gas gas_remaining wei
                                                                                                            args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _5208 = mem[64]
                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _5224 = mem[_5208]
                                                                                                            require mem[_5208] <= test266151307()
                                                                                                            require _5208 + mem[_5208] + 31 < _5208 + return_data.size
                                                                                                            _5240 = mem[_5208 + mem[_5208]]
                                                                                                            if mem[_5208 + mem[_5208]] > test266151307():
                                                                                                                revert with 0, 65
                                                                                                            else:
                                                                                                                if _5208 + ceil32(return_data.size) + ceil32(32 * mem[_5208 + mem[_5208]]) + 1 > test266151307() or ceil32(32 * mem[_5208 + mem[_5208]]) + 1 < 0:
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    mem[64] = _5208 + ceil32(return_data.size) + ceil32(32 * mem[_5208 + mem[_5208]]) + 1
                                                                                                                    mem[_5208 + ceil32(return_data.size)] = _5240
                                                                                                                    require return_data.size >= _5224 + (32 * _5240) + 32
                                                                                                                    mem[_5208 + ceil32(return_data.size) + 32 len 32 * _5240] = mem[_5208 + _5224 + 32 len 32 * _5240]
                                                                                                                    if 1 >= ('cd', 132).length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                        if 1 >= _5240:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            _5876 = mem[_5208 + ceil32(return_data.size) + 64]
                                                                                                                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                                            mem[mem[64] + 36] = _5876
                                                                                                                            require ext_code.size(address(('cd', 132)[1]))
                                                                                                                            call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _5876
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _5912 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_5912] == bool(mem[_5912])
                                                                                                                                if 1 >= ('cd', 100).length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                    if 1 >= ('cd', 132).length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                        if 1 >= mem[_3698 + ceil32(return_data.size)]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            _5972 = mem[_3698 + ceil32(return_data.size) + 64]
                                                                                                                                            if 1 >= _5240:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                _6004 = mem[_5208 + ceil32(return_data.size) + 64]
                                                                                                                                                mem[mem[64] + 68] = mem[_3698 + ceil32(return_data.size) + 64]
                                                                                                                                                mem[mem[64] + 100] = _6004
                                                                                                                                                mem[mem[64] + 132] = 0
                                                                                                                                                mem[mem[64] + 164] = 0
                                                                                                                                                mem[mem[64] + 196] = msg.sender
                                                                                                                                                mem[mem[64] + 228] = cd[164]
                                                                                                                                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _5972, _6004, 0, 0, msg.sender, cd[164]
                                                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 96
                                                                                                                                                    if ('cd', 132).length:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 0, 50
                                                                                                                                                        else:
                                                                                                                                                            require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                            if 1 >= mem[_3698 + ceil32(return_data.size)]:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3698 + ceil32(return_data.size) + 64], 9 * _2906 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    require return_data.size >= 96
                                                                                                                                                    else:
                                                                                                                                                        if cd[164] > block.timestamp:
                                                                                                                                                            revert with 0, 'Testpoint2'
                                                                                                                                                        else:
                                                                                                                                                            if 1 >= ('cd', 100).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                if 1 >= mem[_3698 + ceil32(return_data.size)]:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3698 + ceil32(return_data.size) + 64], 9 * _2906 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 96
                                                                                                    else:
                                                                                                        if cd[164] > block.timestamp:
                                                                                                            revert with 0, 'Testpoint1'
                                                                                                        else:
                                                                                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = 0
                                                                                                            mem[mem[64] + 36] = 128
                                                                                                            mem[mem[64] + 132] = ('cd', 132).length
                                                                                                            idx = 0
                                                                                                            s = cd[132] + 36
                                                                                                            t = mem[64] + 164
                                                                                                            while idx < ('cd', 132).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            mem[mem[64] + 68] = this.address
                                                                                                            mem[mem[64] + 100] = cd[164]
                                                                                                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                                               value 9 * _2906 / 20 wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _5209 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _5225 = mem[_5209]
                                                                                                                require mem[_5209] <= test266151307()
                                                                                                                require _5209 + mem[_5209] + 31 < _5209 + return_data.size
                                                                                                                _5241 = mem[_5209 + mem[_5209]]
                                                                                                                if mem[_5209 + mem[_5209]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _5209 + ceil32(return_data.size) + ceil32(32 * mem[_5209 + mem[_5209]]) + 1 > test266151307() or ceil32(32 * mem[_5209 + mem[_5209]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _5209 + ceil32(return_data.size) + ceil32(32 * mem[_5209 + mem[_5209]]) + 1
                                                                                                                        mem[_5209 + ceil32(return_data.size)] = _5241
                                                                                                                        require return_data.size >= _5225 + (32 * _5241) + 32
                                                                                                                        mem[_5209 + ceil32(return_data.size) + 32 len 32 * _5241] = mem[_5209 + _5225 + 32 len 32 * _5241]
                                                                                                                        if 1 >= ('cd', 132).length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                            if 1 >= _5241:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                _5878 = mem[_5209 + ceil32(return_data.size) + 64]
                                                                                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                                                mem[mem[64] + 36] = _5878
                                                                                                                                require ext_code.size(address(('cd', 132)[1]))
                                                                                                                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _5878
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _5913 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_5913] == bool(mem[_5913])
                                                                                                                                    if 1 >= ('cd', 100).length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                        if 1 >= ('cd', 132).length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                            if 1 >= mem[_3698 + ceil32(return_data.size)]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                _5974 = mem[_3698 + ceil32(return_data.size) + 64]
                                                                                                                                                if 1 >= _5241:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    _6006 = mem[_5209 + ceil32(return_data.size) + 64]
                                                                                                                                                    mem[mem[64] + 68] = mem[_3698 + ceil32(return_data.size) + 64]
                                                                                                                                                    mem[mem[64] + 100] = _6006
                                                                                                                                                    mem[mem[64] + 132] = 0
                                                                                                                                                    mem[mem[64] + 164] = 0
                                                                                                                                                    mem[mem[64] + 196] = msg.sender
                                                                                                                                                    mem[mem[64] + 228] = cd[164]
                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                        args address(('cd', 100)[1]), address(('cd', 132)[1]), _5974, _6006, 0, 0, msg.sender, cd[164]
                                                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                        if ('cd', 132).length:
                                                                                                                                                            if 1 >= ('cd', 100).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                if 1 >= mem[_3698 + ceil32(return_data.size)]:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3698 + ceil32(return_data.size) + 64], 9 * _2906 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                        else:
                                                                                                                                                            if cd[164] > block.timestamp:
                                                                                                                                                                revert with 0, 'Testpoint2'
                                                                                                                                                            else:
                                                                                                                                                                if 1 >= ('cd', 100).length:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                    if 1 >= mem[_3698 + ceil32(return_data.size)]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                            args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3698 + ceil32(return_data.size) + 64], 9 * _2906 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 96
                                        else:
                                            require return_data.size >= 32
                                            require mem[356] == bool(mem[356])
                                            if not mem[356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[ceil32(return_data.size) + 329] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                                mem[ceil32(return_data.size) + 361] = cd[36]
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[36]
                                                mem[ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = cd[36]
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 0
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 160
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = ('cd', 68).length
                                                    idx = 0
                                                    s = cd[68] + 36
                                                    t = ceil32(return_data.size) + ceil32(return_data.size) + 521
                                                    while idx < ('cd', 68).length:
                                                        require cd[s] == address(cd[s])
                                                        mem[t] = address(cd[s])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = this.address
                                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[164]
                                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args cd[36], 0, 160, address(this.address), cd[164], ('cd', 68).length, mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 32 * ('cd', 68).length]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325
                                                        require return_data.size >= 32
                                                        _1971 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                                                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                                                        require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                                                        _1979 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                                                        if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                                                revert with 0, 65
                                                            else:
                                                                mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                                                                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                                                                require return_data.size >= _1971 + (32 * _1979) + 32
                                                                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1979] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1971 + 357 len 32 * _1979]
                                                                if 1 >= _1979:
                                                                    revert with 0, 50
                                                                else:
                                                                    _2866 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                                                                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                    mem[mem[64] + 36] = _2866
                                                                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2866
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2883 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_2883] == bool(mem[_2883])
                                                                        if 1 >= _1979:
                                                                            revert with 0, 50
                                                                        else:
                                                                            _2907 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                                                                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                                                                revert with 0, 17
                                                                            else:
                                                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = 0
                                                                                mem[mem[64] + 36] = 128
                                                                                mem[mem[64] + 132] = ('cd', 100).length
                                                                                idx = 0
                                                                                s = cd[100] + 36
                                                                                t = mem[64] + 164
                                                                                while idx < ('cd', 100).length:
                                                                                    require cd[s] == address(cd[s])
                                                                                    mem[t] = address(cd[s])
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                mem[mem[64] + 68] = this.address
                                                                                mem[mem[64] + 100] = cd[164]
                                                                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                   value 9 * _2907 / 20 wei
                                                                                     gas gas_remaining wei
                                                                                    args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3699 = mem[64]
                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3707 = mem[_3699]
                                                                                    require mem[_3699] <= test266151307()
                                                                                    require _3699 + mem[_3699] + 31 < _3699 + return_data.size
                                                                                    _3715 = mem[_3699 + mem[_3699]]
                                                                                    if mem[_3699 + mem[_3699]] > test266151307():
                                                                                        revert with 0, 65
                                                                                    else:
                                                                                        if _3699 + ceil32(return_data.size) + ceil32(32 * mem[_3699 + mem[_3699]]) + 1 > test266151307() or ceil32(32 * mem[_3699 + mem[_3699]]) + 1 < 0:
                                                                                            revert with 0, 65
                                                                                        else:
                                                                                            mem[64] = _3699 + ceil32(return_data.size) + ceil32(32 * mem[_3699 + mem[_3699]]) + 1
                                                                                            mem[_3699 + ceil32(return_data.size)] = _3715
                                                                                            require return_data.size >= _3707 + (32 * _3715) + 32
                                                                                            mem[_3699 + ceil32(return_data.size) + 32 len 32 * _3715] = mem[_3699 + _3707 + 32 len 32 * _3715]
                                                                                            if 1 >= ('cd', 100).length:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                if 1 >= _3715:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    _4482 = mem[_3699 + ceil32(return_data.size) + 64]
                                                                                                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                    mem[mem[64] + 36] = _4482
                                                                                                    require ext_code.size(address(('cd', 100)[1]))
                                                                                                    call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _4482
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4499 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_4499] == bool(mem[_4499])
                                                                                                        if not ('cd', 132).length:
                                                                                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = 0
                                                                                                            mem[mem[64] + 36] = 128
                                                                                                            mem[mem[64] + 132] = ('cd', 132).length
                                                                                                            idx = 0
                                                                                                            s = cd[132] + 36
                                                                                                            t = mem[64] + 164
                                                                                                            while idx < ('cd', 132).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            mem[mem[64] + 68] = this.address
                                                                                                            mem[mem[64] + 100] = cd[164]
                                                                                                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                                               value 9 * _2907 / 20 wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _5210 = mem[64]
                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _5226 = mem[_5210]
                                                                                                                require mem[_5210] <= test266151307()
                                                                                                                require _5210 + mem[_5210] + 31 < _5210 + return_data.size
                                                                                                                _5242 = mem[_5210 + mem[_5210]]
                                                                                                                if mem[_5210 + mem[_5210]] > test266151307():
                                                                                                                    revert with 0, 65
                                                                                                                else:
                                                                                                                    if _5210 + ceil32(return_data.size) + ceil32(32 * mem[_5210 + mem[_5210]]) + 1 > test266151307() or ceil32(32 * mem[_5210 + mem[_5210]]) + 1 < 0:
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        mem[64] = _5210 + ceil32(return_data.size) + ceil32(32 * mem[_5210 + mem[_5210]]) + 1
                                                                                                                        mem[_5210 + ceil32(return_data.size)] = _5242
                                                                                                                        require return_data.size >= _5226 + (32 * _5242) + 32
                                                                                                                        mem[_5210 + ceil32(return_data.size) + 32 len 32 * _5242] = mem[_5210 + _5226 + 32 len 32 * _5242]
                                                                                                                        if 1 >= ('cd', 132).length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                            if 1 >= _5242:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                _5880 = mem[_5210 + ceil32(return_data.size) + 64]
                                                                                                                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                                                mem[mem[64] + 36] = _5880
                                                                                                                                require ext_code.size(address(('cd', 132)[1]))
                                                                                                                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _5880
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _5914 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_5914] == bool(mem[_5914])
                                                                                                                                    if 1 >= ('cd', 100).length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                        if 1 >= ('cd', 132).length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                            if 1 >= mem[_3699 + ceil32(return_data.size)]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                _5976 = mem[_3699 + ceil32(return_data.size) + 64]
                                                                                                                                                if 1 >= _5242:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    _6008 = mem[_5210 + ceil32(return_data.size) + 64]
                                                                                                                                                    mem[mem[64] + 68] = mem[_3699 + ceil32(return_data.size) + 64]
                                                                                                                                                    mem[mem[64] + 100] = _6008
                                                                                                                                                    mem[mem[64] + 132] = 0
                                                                                                                                                    mem[mem[64] + 164] = 0
                                                                                                                                                    mem[mem[64] + 196] = msg.sender
                                                                                                                                                    mem[mem[64] + 228] = cd[164]
                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                        args address(('cd', 100)[1]), address(('cd', 132)[1]), _5976, _6008, 0, 0, msg.sender, cd[164]
                                                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                        if ('cd', 132).length:
                                                                                                                                                            if 1 >= ('cd', 100).length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                if 1 >= mem[_3699 + ceil32(return_data.size)]:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3699 + ceil32(return_data.size) + 64], 9 * _2907 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 96
                                                                                                                                                        else:
                                                                                                                                                            if cd[164] > block.timestamp:
                                                                                                                                                                revert with 0, 'Testpoint2'
                                                                                                                                                            else:
                                                                                                                                                                if 1 >= ('cd', 100).length:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                    if 1 >= mem[_3699 + ceil32(return_data.size)]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                            args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3699 + ceil32(return_data.size) + 64], 9 * _2907 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 96
                                                                                                        else:
                                                                                                            if cd[164] > block.timestamp:
                                                                                                                revert with 0, 'Testpoint1'
                                                                                                            else:
                                                                                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                                                                                mem[mem[64] + 4] = 0
                                                                                                                mem[mem[64] + 36] = 128
                                                                                                                mem[mem[64] + 132] = ('cd', 132).length
                                                                                                                idx = 0
                                                                                                                s = cd[132] + 36
                                                                                                                t = mem[64] + 164
                                                                                                                while idx < ('cd', 132).length:
                                                                                                                    require cd[s] == address(cd[s])
                                                                                                                    mem[t] = address(cd[s])
                                                                                                                    idx = idx + 1
                                                                                                                    s = s + 32
                                                                                                                    t = t + 32
                                                                                                                    continue 
                                                                                                                mem[mem[64] + 68] = this.address
                                                                                                                mem[mem[64] + 100] = cd[164]
                                                                                                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                                                                   value 9 * _2907 / 20 wei
                                                                                                                     gas gas_remaining wei
                                                                                                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _5211 = mem[64]
                                                                                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _5227 = mem[_5211]
                                                                                                                    require mem[_5211] <= test266151307()
                                                                                                                    require _5211 + mem[_5211] + 31 < _5211 + return_data.size
                                                                                                                    _5243 = mem[_5211 + mem[_5211]]
                                                                                                                    if mem[_5211 + mem[_5211]] > test266151307():
                                                                                                                        revert with 0, 65
                                                                                                                    else:
                                                                                                                        if _5211 + ceil32(return_data.size) + ceil32(32 * mem[_5211 + mem[_5211]]) + 1 > test266151307() or ceil32(32 * mem[_5211 + mem[_5211]]) + 1 < 0:
                                                                                                                            revert with 0, 65
                                                                                                                        else:
                                                                                                                            mem[64] = _5211 + ceil32(return_data.size) + ceil32(32 * mem[_5211 + mem[_5211]]) + 1
                                                                                                                            mem[_5211 + ceil32(return_data.size)] = _5243
                                                                                                                            require return_data.size >= _5227 + (32 * _5243) + 32
                                                                                                                            mem[_5211 + ceil32(return_data.size) + 32 len 32 * _5243] = mem[_5211 + _5227 + 32 len 32 * _5243]
                                                                                                                            if 1 >= ('cd', 132).length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                if 1 >= _5243:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    _5882 = mem[_5211 + ceil32(return_data.size) + 64]
                                                                                                                                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                                                                                                                    mem[mem[64] + 36] = _5882
                                                                                                                                    require ext_code.size(address(('cd', 132)[1]))
                                                                                                                                    call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _5882
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _5915 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_5915] == bool(mem[_5915])
                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                            if 1 >= ('cd', 132).length:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                                                                                                                                if 1 >= mem[_3699 + ceil32(return_data.size)]:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    _5978 = mem[_3699 + ceil32(return_data.size) + 64]
                                                                                                                                                    if 1 >= _5243:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        _6010 = mem[_5211 + ceil32(return_data.size) + 64]
                                                                                                                                                        mem[mem[64] + 68] = mem[_3699 + ceil32(return_data.size) + 64]
                                                                                                                                                        mem[mem[64] + 100] = _6010
                                                                                                                                                        mem[mem[64] + 132] = 0
                                                                                                                                                        mem[mem[64] + 164] = 0
                                                                                                                                                        mem[mem[64] + 196] = msg.sender
                                                                                                                                                        mem[mem[64] + 228] = cd[164]
                                                                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args address(('cd', 100)[1]), address(('cd', 132)[1]), _5978, _6010, 0, 0, msg.sender, cd[164]
                                                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                            if ('cd', 132).length:
                                                                                                                                                                if 1 >= ('cd', 100).length:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                    if 1 >= mem[_3699 + ceil32(return_data.size)]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                            args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3699 + ceil32(return_data.size) + 64], 9 * _2907 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 96
                                                                                                                                                            else:
                                                                                                                                                                if cd[164] > block.timestamp:
                                                                                                                                                                    revert with 0, 'Testpoint2'
                                                                                                                                                                else:
                                                                                                                                                                    if 1 >= ('cd', 100).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        require ('cd', 100)[1] == address(('cd', 100)[1])
                                                                                                                                                                        if 1 >= mem[_3699 + ceil32(return_data.size)]:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                                                                                                                                                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3699 + ceil32(return_data.size) + 64], 9 * _2907 / 20, 0, 0, msg.sender, cd[164]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 96
                else:
                    if unknown_0x8b235dca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        else:
                            call address(cd[4]) with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        else:
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            else:
                                if not address(cd[4]):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                else:
                                    emit OwnershipTransferred(owner, address(cd[4]));
                                    owner = address(cd[4])
}



}
