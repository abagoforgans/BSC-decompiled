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
        if unknown_0x68577e4d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[164] = msg.sender
            mem[196] = cd[36]
            mem[128] = 68
            mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[160 len 4] = unknown_0xa9059cbb(?????)
            mem[228] = 32
            mem[260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
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
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[324] == bool(mem[324])
                if not mem[324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x810f6cdd(?????):
                    if unknown_0x8b235dca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call address(cd[4]) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(cd[4]));
                        owner = address(cd[4])
                else:
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
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
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
                            revert with 0, 'SafeERC20: low-level call failed'
                        require not mem[96]
                        mem[328] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                        mem[360] = cd[36]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[36]
                        mem[324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 324
                        require return_data.size >= 32
                        _1452 = mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32
                        require mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 355 < ceil32(return_data.size) + return_data.size + 324
                        _1460 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325
                        mem[(2 * ceil32(return_data.size)) + 324] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                        require return_data.size >= _1452 + (32 * _1460) + 32
                        mem[(2 * ceil32(return_data.size)) + 356 len 32 * _1460] = mem[ceil32(return_data.size) + _1452 + 356 len 32 * _1460]
                        if 1 >= _1460:
                            revert with 0, 50
                        _2032 = mem[(2 * ceil32(return_data.size)) + 388]
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = _2032
                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2032
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2052] == bool(mem[_2052])
                        if 1 >= _1460:
                            revert with 0, 50
                        _2076 = mem[(2 * ceil32(return_data.size)) + 388]
                        if mem[(2 * ceil32(return_data.size)) + 388] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                            revert with 0, 17
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
                           value 9 * _2076 / 20 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2556 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2564 = mem[_2556]
                        require mem[_2556] <= test266151307()
                        require _2556 + mem[_2556] + 31 < _2556 + return_data.size
                        _2572 = mem[_2556 + mem[_2556]]
                        if mem[_2556 + mem[_2556]] > test266151307():
                            revert with 0, 65
                        if _2556 + ceil32(return_data.size) + ceil32(32 * mem[_2556 + mem[_2556]]) + 1 > test266151307() or ceil32(32 * mem[_2556 + mem[_2556]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2556 + ceil32(return_data.size) + ceil32(32 * mem[_2556 + mem[_2556]]) + 1
                        mem[_2556 + ceil32(return_data.size)] = _2572
                        require return_data.size >= _2564 + (32 * _2572) + 32
                        mem[_2556 + ceil32(return_data.size) + 32 len 32 * _2572] = mem[_2556 + _2564 + 32 len 32 * _2572]
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if 1 >= _2572:
                            revert with 0, 50
                        _3020 = mem[_2556 + ceil32(return_data.size) + 64]
                        if mem[_2556 + ceil32(return_data.size) + 64] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = 2 * _3020
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _3020
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3044] == bool(mem[_3044])
                        if not ('cd', 132).length:
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _2572:
                                revert with 0, 50
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2556 + ceil32(return_data.size) + 64], 9 * _2076 / 20, 0, 0, msg.sender, cd[164]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
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
                               value 9 * _2076 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3428 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3436 = mem[_3428]
                            require mem[_3428] <= test266151307()
                            require _3428 + mem[_3428] + 31 < _3428 + return_data.size
                            _3444 = mem[_3428 + mem[_3428]]
                            if mem[_3428 + mem[_3428]] > test266151307():
                                revert with 0, 65
                            if _3428 + ceil32(return_data.size) + ceil32(32 * mem[_3428 + mem[_3428]]) + 1 > test266151307() or ceil32(32 * mem[_3428 + mem[_3428]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _3428 + ceil32(return_data.size) + ceil32(32 * mem[_3428 + mem[_3428]]) + 1
                            mem[_3428 + ceil32(return_data.size)] = _3444
                            require return_data.size >= _3436 + (32 * _3444) + 32
                            mem[_3428 + ceil32(return_data.size) + 32 len 32 * _3444] = mem[_3428 + _3436 + 32 len 32 * _3444]
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= _3444:
                                revert with 0, 50
                            _3708 = mem[_3428 + ceil32(return_data.size) + 64]
                            if mem[_3428 + ceil32(return_data.size) + 64] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = 2 * _3708
                            require ext_code.size(address(('cd', 132)[1]))
                            call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _3708
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3732 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3732] == bool(mem[_3732])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= mem[_2556 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3760 = mem[_2556 + ceil32(return_data.size) + 64]
                            if 1 >= _3444:
                                revert with 0, 50
                            _3776 = mem[_3428 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 68] = mem[_2556 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 100] = _3776
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = msg.sender
                            mem[mem[64] + 228] = cd[164]
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), address(('cd', 132)[1]), _3760, _3776, 0, 0, msg.sender, cd[164]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if cd[164] > block.timestamp:
                                revert with 0, 'Testpoint1'
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= mem[_2556 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2556 + ceil32(return_data.size) + 64], 9 * _2076 / 20, 0, 0, msg.sender, cd[164]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if cd[164] > block.timestamp:
                                    revert with 0, 'Testpoint1'
                    else:
                        mem[324] = return_data.size
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
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
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325
                            require return_data.size >= 32
                            _1454 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                            _1462 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            require return_data.size >= _1454 + (32 * _1462) + 32
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1462] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1454 + 357 len 32 * _1462]
                            if 1 >= _1462:
                                revert with 0, 50
                            _2036 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _2036
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2036
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2054] == bool(mem[_2054])
                            if 1 >= _1462:
                                revert with 0, 50
                            _2078 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                revert with 0, 17
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
                               value 9 * _2078 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2558 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2566 = mem[_2558]
                            require mem[_2558] <= test266151307()
                            require _2558 + mem[_2558] + 31 < _2558 + return_data.size
                            _2574 = mem[_2558 + mem[_2558]]
                            if mem[_2558 + mem[_2558]] > test266151307():
                                revert with 0, 65
                            if _2558 + ceil32(return_data.size) + ceil32(32 * mem[_2558 + mem[_2558]]) + 1 > test266151307() or ceil32(32 * mem[_2558 + mem[_2558]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2558 + ceil32(return_data.size) + ceil32(32 * mem[_2558 + mem[_2558]]) + 1
                            mem[_2558 + ceil32(return_data.size)] = _2574
                            require return_data.size >= _2566 + (32 * _2574) + 32
                            mem[_2558 + ceil32(return_data.size) + 32 len 32 * _2574] = mem[_2558 + _2566 + 32 len 32 * _2574]
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _2574:
                                revert with 0, 50
                            _3022 = mem[_2558 + ceil32(return_data.size) + 64]
                            if mem[_2558 + ceil32(return_data.size) + 64] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = 2 * _3022
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _3022
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3046 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3046] == bool(mem[_3046])
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= _2574:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2558 + ceil32(return_data.size) + 64], 9 * _2078 / 20, 0, 0, msg.sender, cd[164]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
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
                                   value 9 * _2078 / 20 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3430 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3438 = mem[_3430]
                                require mem[_3430] <= test266151307()
                                require _3430 + mem[_3430] + 31 < _3430 + return_data.size
                                _3446 = mem[_3430 + mem[_3430]]
                                if mem[_3430 + mem[_3430]] > test266151307():
                                    revert with 0, 65
                                if _3430 + ceil32(return_data.size) + ceil32(32 * mem[_3430 + mem[_3430]]) + 1 > test266151307() or ceil32(32 * mem[_3430 + mem[_3430]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _3430 + ceil32(return_data.size) + ceil32(32 * mem[_3430 + mem[_3430]]) + 1
                                mem[_3430 + ceil32(return_data.size)] = _3446
                                require return_data.size >= _3438 + (32 * _3446) + 32
                                mem[_3430 + ceil32(return_data.size) + 32 len 32 * _3446] = mem[_3430 + _3438 + 32 len 32 * _3446]
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _3446:
                                    revert with 0, 50
                                _3710 = mem[_3430 + ceil32(return_data.size) + 64]
                                if mem[_3430 + ceil32(return_data.size) + 64] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                mem[mem[64] + 36] = 2 * _3710
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _3710
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3734 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3734] == bool(mem[_3734])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[_2558 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3764 = mem[_2558 + ceil32(return_data.size) + 64]
                                if 1 >= _3446:
                                    revert with 0, 50
                                _3780 = mem[_3430 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 68] = mem[_2558 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _3780
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _3764, _3780, 0, 0, msg.sender, cd[164]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if cd[164] > block.timestamp:
                                    revert with 0, 'Testpoint1'
                                if not ('cd', 132).length:
                                    if 1 >= ('cd', 100).length:
                                        revert with 0, 50
                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                    if 1 >= mem[_2558 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2558 + ceil32(return_data.size) + 64], 9 * _2078 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if cd[164] > block.timestamp:
                                        revert with 0, 'Testpoint1'
                        else:
                            require return_data.size >= 32
                            require mem[356] == bool(mem[356])
                            if not mem[356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(return_data.size) + 329] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                            mem[ceil32(return_data.size) + 361] = cd[36]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, cd[36]
                            mem[ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325
                            require return_data.size >= 32
                            _1455 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                            _1463 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            require return_data.size >= _1455 + (32 * _1463) + 32
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1463] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1455 + 357 len 32 * _1463]
                            if 1 >= _1463:
                                revert with 0, 50
                            _2038 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _2038
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2038
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2055 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2055] == bool(mem[_2055])
                            if 1 >= _1463:
                                revert with 0, 50
                            _2079 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                revert with 0, 17
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
                               value 9 * _2079 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2559 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2567 = mem[_2559]
                            require mem[_2559] <= test266151307()
                            require _2559 + mem[_2559] + 31 < _2559 + return_data.size
                            _2575 = mem[_2559 + mem[_2559]]
                            if mem[_2559 + mem[_2559]] > test266151307():
                                revert with 0, 65
                            if _2559 + ceil32(return_data.size) + ceil32(32 * mem[_2559 + mem[_2559]]) + 1 > test266151307() or ceil32(32 * mem[_2559 + mem[_2559]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2559 + ceil32(return_data.size) + ceil32(32 * mem[_2559 + mem[_2559]]) + 1
                            mem[_2559 + ceil32(return_data.size)] = _2575
                            require return_data.size >= _2567 + (32 * _2575) + 32
                            mem[_2559 + ceil32(return_data.size) + 32 len 32 * _2575] = mem[_2559 + _2567 + 32 len 32 * _2575]
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _2575:
                                revert with 0, 50
                            _3023 = mem[_2559 + ceil32(return_data.size) + 64]
                            if mem[_2559 + ceil32(return_data.size) + 64] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = 2 * _3023
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _3023
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3047 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3047] == bool(mem[_3047])
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= _2575:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2559 + ceil32(return_data.size) + 64], 9 * _2079 / 20, 0, 0, msg.sender, cd[164]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
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
                                   value 9 * _2079 / 20 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3431 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3439 = mem[_3431]
                                require mem[_3431] <= test266151307()
                                require _3431 + mem[_3431] + 31 < _3431 + return_data.size
                                _3447 = mem[_3431 + mem[_3431]]
                                if mem[_3431 + mem[_3431]] > test266151307():
                                    revert with 0, 65
                                if _3431 + ceil32(return_data.size) + ceil32(32 * mem[_3431 + mem[_3431]]) + 1 > test266151307() or ceil32(32 * mem[_3431 + mem[_3431]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _3431 + ceil32(return_data.size) + ceil32(32 * mem[_3431 + mem[_3431]]) + 1
                                mem[_3431 + ceil32(return_data.size)] = _3447
                                require return_data.size >= _3439 + (32 * _3447) + 32
                                mem[_3431 + ceil32(return_data.size) + 32 len 32 * _3447] = mem[_3431 + _3439 + 32 len 32 * _3447]
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _3447:
                                    revert with 0, 50
                                _3711 = mem[_3431 + ceil32(return_data.size) + 64]
                                if mem[_3431 + ceil32(return_data.size) + 64] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                mem[mem[64] + 36] = 2 * _3711
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _3711
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3735 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3735] == bool(mem[_3735])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[_2559 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3766 = mem[_2559 + ceil32(return_data.size) + 64]
                                if 1 >= _3447:
                                    revert with 0, 50
                                _3782 = mem[_3431 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 68] = mem[_2559 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _3782
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _3766, _3782, 0, 0, msg.sender, cd[164]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if cd[164] > block.timestamp:
                                    revert with 0, 'Testpoint1'
                                if not ('cd', 132).length:
                                    if 1 >= ('cd', 100).length:
                                        revert with 0, 50
                                    require ('cd', 100)[1] == address(('cd', 100)[1])
                                    if 1 >= mem[_2559 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2559 + ceil32(return_data.size) + 64], 9 * _2079 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if cd[164] > block.timestamp:
                                        revert with 0, 'Testpoint1'
}



}
