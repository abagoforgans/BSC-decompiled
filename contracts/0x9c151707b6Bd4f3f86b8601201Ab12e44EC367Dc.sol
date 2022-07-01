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
                        _1464 = mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32
                        require mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 355 < ceil32(return_data.size) + return_data.size + 324
                        _1472 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325
                        mem[(2 * ceil32(return_data.size)) + 324] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                        require return_data.size >= _1464 + (32 * _1472) + 32
                        mem[(2 * ceil32(return_data.size)) + 356 len 32 * _1472] = mem[ceil32(return_data.size) + _1464 + 356 len 32 * _1472]
                        if 1 >= _1472:
                            revert with 0, 50
                        _2044 = mem[(2 * ceil32(return_data.size)) + 388]
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = _2044
                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2044
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2064] == bool(mem[_2064])
                        if 1 >= _1472:
                            revert with 0, 50
                        _2088 = mem[(2 * ceil32(return_data.size)) + 388]
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
                           value 9 * _2088 / 20 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2568 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2576 = mem[_2568]
                        require mem[_2568] <= test266151307()
                        require _2568 + mem[_2568] + 31 < _2568 + return_data.size
                        _2584 = mem[_2568 + mem[_2568]]
                        if mem[_2568 + mem[_2568]] > test266151307():
                            revert with 0, 65
                        if _2568 + ceil32(return_data.size) + ceil32(32 * mem[_2568 + mem[_2568]]) + 1 > test266151307() or ceil32(32 * mem[_2568 + mem[_2568]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2568 + ceil32(return_data.size) + ceil32(32 * mem[_2568 + mem[_2568]]) + 1
                        mem[_2568 + ceil32(return_data.size)] = _2584
                        require return_data.size >= _2576 + (32 * _2584) + 32
                        mem[_2568 + ceil32(return_data.size) + 32 len 32 * _2584] = mem[_2568 + _2576 + 32 len 32 * _2584]
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if 1 >= _2584:
                            revert with 0, 50
                        _3036 = mem[_2568 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = _3036
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _3036
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3056 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3056] == bool(mem[_3056])
                        if not ('cd', 132).length:
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _2584:
                                revert with 0, 50
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2568 + ceil32(return_data.size) + 64], 9 * _2088 / 20, 0, 0, msg.sender, cd[164]
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
                               value 9 * _2088 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3440 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3448 = mem[_3440]
                            require mem[_3440] <= test266151307()
                            require _3440 + mem[_3440] + 31 < _3440 + return_data.size
                            _3456 = mem[_3440 + mem[_3440]]
                            if mem[_3440 + mem[_3440]] > test266151307():
                                revert with 0, 65
                            if _3440 + ceil32(return_data.size) + ceil32(32 * mem[_3440 + mem[_3440]]) + 1 > test266151307() or ceil32(32 * mem[_3440 + mem[_3440]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _3440 + ceil32(return_data.size) + ceil32(32 * mem[_3440 + mem[_3440]]) + 1
                            mem[_3440 + ceil32(return_data.size)] = _3456
                            require return_data.size >= _3448 + (32 * _3456) + 32
                            mem[_3440 + ceil32(return_data.size) + 32 len 32 * _3456] = mem[_3440 + _3448 + 32 len 32 * _3456]
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= _3456:
                                revert with 0, 50
                            _3724 = mem[_3440 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _3724
                            require ext_code.size(address(('cd', 132)[1]))
                            call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _3724
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3744 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3744] == bool(mem[_3744])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= mem[_2568 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3772 = mem[_2568 + ceil32(return_data.size) + 64]
                            if 1 >= _3456:
                                revert with 0, 50
                            _3788 = mem[_3440 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 68] = mem[_2568 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 100] = _3788
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = msg.sender
                            mem[mem[64] + 228] = cd[164]
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), address(('cd', 132)[1]), _3772, _3788, 0, 0, msg.sender, cd[164]
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
                                if 1 >= mem[_2568 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2568 + ceil32(return_data.size) + 64], 9 * _2088 / 20, 0, 0, msg.sender, cd[164]
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
                            _1466 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                            _1474 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            require return_data.size >= _1466 + (32 * _1474) + 32
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1474] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1466 + 357 len 32 * _1474]
                            if 1 >= _1474:
                                revert with 0, 50
                            _2048 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _2048
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2048
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2066] == bool(mem[_2066])
                            if 1 >= _1474:
                                revert with 0, 50
                            _2090 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
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
                               value 9 * _2090 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2570 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2578 = mem[_2570]
                            require mem[_2570] <= test266151307()
                            require _2570 + mem[_2570] + 31 < _2570 + return_data.size
                            _2586 = mem[_2570 + mem[_2570]]
                            if mem[_2570 + mem[_2570]] > test266151307():
                                revert with 0, 65
                            if _2570 + ceil32(return_data.size) + ceil32(32 * mem[_2570 + mem[_2570]]) + 1 > test266151307() or ceil32(32 * mem[_2570 + mem[_2570]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2570 + ceil32(return_data.size) + ceil32(32 * mem[_2570 + mem[_2570]]) + 1
                            mem[_2570 + ceil32(return_data.size)] = _2586
                            require return_data.size >= _2578 + (32 * _2586) + 32
                            mem[_2570 + ceil32(return_data.size) + 32 len 32 * _2586] = mem[_2570 + _2578 + 32 len 32 * _2586]
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _2586:
                                revert with 0, 50
                            _3040 = mem[_2570 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _3040
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _3040
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3058 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3058] == bool(mem[_3058])
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= _2586:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2570 + ceil32(return_data.size) + 64], 9 * _2090 / 20, 0, 0, msg.sender, cd[164]
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
                                   value 9 * _2090 / 20 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3442 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3450 = mem[_3442]
                                require mem[_3442] <= test266151307()
                                require _3442 + mem[_3442] + 31 < _3442 + return_data.size
                                _3458 = mem[_3442 + mem[_3442]]
                                if mem[_3442 + mem[_3442]] > test266151307():
                                    revert with 0, 65
                                if _3442 + ceil32(return_data.size) + ceil32(32 * mem[_3442 + mem[_3442]]) + 1 > test266151307() or ceil32(32 * mem[_3442 + mem[_3442]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _3442 + ceil32(return_data.size) + ceil32(32 * mem[_3442 + mem[_3442]]) + 1
                                mem[_3442 + ceil32(return_data.size)] = _3458
                                require return_data.size >= _3450 + (32 * _3458) + 32
                                mem[_3442 + ceil32(return_data.size) + 32 len 32 * _3458] = mem[_3442 + _3450 + 32 len 32 * _3458]
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _3458:
                                    revert with 0, 50
                                _3728 = mem[_3442 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                mem[mem[64] + 36] = _3728
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _3728
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3746] == bool(mem[_3746])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[_2570 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3776 = mem[_2570 + ceil32(return_data.size) + 64]
                                if 1 >= _3458:
                                    revert with 0, 50
                                _3792 = mem[_3442 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 68] = mem[_2570 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _3792
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _3776, _3792, 0, 0, msg.sender, cd[164]
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
                                    if 1 >= mem[_2570 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2570 + ceil32(return_data.size) + 64], 9 * _2090 / 20, 0, 0, msg.sender, cd[164]
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
                            _1467 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                            _1475 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            require return_data.size >= _1467 + (32 * _1475) + 32
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1475] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1467 + 357 len 32 * _1475]
                            if 1 >= _1475:
                                revert with 0, 50
                            _2050 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _2050
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2050
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2067] == bool(mem[_2067])
                            if 1 >= _1475:
                                revert with 0, 50
                            _2091 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
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
                               value 9 * _2091 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2571 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2579 = mem[_2571]
                            require mem[_2571] <= test266151307()
                            require _2571 + mem[_2571] + 31 < _2571 + return_data.size
                            _2587 = mem[_2571 + mem[_2571]]
                            if mem[_2571 + mem[_2571]] > test266151307():
                                revert with 0, 65
                            if _2571 + ceil32(return_data.size) + ceil32(32 * mem[_2571 + mem[_2571]]) + 1 > test266151307() or ceil32(32 * mem[_2571 + mem[_2571]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2571 + ceil32(return_data.size) + ceil32(32 * mem[_2571 + mem[_2571]]) + 1
                            mem[_2571 + ceil32(return_data.size)] = _2587
                            require return_data.size >= _2579 + (32 * _2587) + 32
                            mem[_2571 + ceil32(return_data.size) + 32 len 32 * _2587] = mem[_2571 + _2579 + 32 len 32 * _2587]
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _2587:
                                revert with 0, 50
                            _3042 = mem[_2571 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _3042
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _3042
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3059 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3059] == bool(mem[_3059])
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= _2587:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2571 + ceil32(return_data.size) + 64], 9 * _2091 / 20, 0, 0, msg.sender, cd[164]
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
                                   value 9 * _2091 / 20 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3443 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3451 = mem[_3443]
                                require mem[_3443] <= test266151307()
                                require _3443 + mem[_3443] + 31 < _3443 + return_data.size
                                _3459 = mem[_3443 + mem[_3443]]
                                if mem[_3443 + mem[_3443]] > test266151307():
                                    revert with 0, 65
                                if _3443 + ceil32(return_data.size) + ceil32(32 * mem[_3443 + mem[_3443]]) + 1 > test266151307() or ceil32(32 * mem[_3443 + mem[_3443]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _3443 + ceil32(return_data.size) + ceil32(32 * mem[_3443 + mem[_3443]]) + 1
                                mem[_3443 + ceil32(return_data.size)] = _3459
                                require return_data.size >= _3451 + (32 * _3459) + 32
                                mem[_3443 + ceil32(return_data.size) + 32 len 32 * _3459] = mem[_3443 + _3451 + 32 len 32 * _3459]
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _3459:
                                    revert with 0, 50
                                _3730 = mem[_3443 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                                mem[mem[64] + 36] = _3730
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _3730
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3747] == bool(mem[_3747])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[_2571 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3778 = mem[_2571 + ceil32(return_data.size) + 64]
                                if 1 >= _3459:
                                    revert with 0, 50
                                _3794 = mem[_3443 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 68] = mem[_2571 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _3794
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _3778, _3794, 0, 0, msg.sender, cd[164]
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
                                    if 1 >= mem[_2571 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_2571 + ceil32(return_data.size) + 64], 9 * _2091 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if cd[164] > block.timestamp:
                                        revert with 0, 'Testpoint1'
}



}
