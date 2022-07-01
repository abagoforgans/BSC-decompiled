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
                        _1816 = mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32
                        require mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 355 < ceil32(return_data.size) + return_data.size + 324
                        _1824 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325
                        mem[(2 * ceil32(return_data.size)) + 324] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                        require return_data.size >= _1816 + (32 * _1824) + 32
                        mem[(2 * ceil32(return_data.size)) + 356 len 32 * _1824] = mem[ceil32(return_data.size) + _1816 + 356 len 32 * _1824]
                        if 1 >= _1824:
                            revert with 0, 50
                        _2572 = mem[(2 * ceil32(return_data.size)) + 388]
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = _2572
                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2572
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2592 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2592] == bool(mem[_2592])
                        if 1 >= _1824:
                            revert with 0, 50
                        _2616 = mem[(2 * ceil32(return_data.size)) + 388]
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
                           value 9 * _2616 / 20 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3272 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3280 = mem[_3272]
                        require mem[_3272] <= test266151307()
                        require _3272 + mem[_3272] + 31 < _3272 + return_data.size
                        _3288 = mem[_3272 + mem[_3272]]
                        if mem[_3272 + mem[_3272]] > test266151307():
                            revert with 0, 65
                        if _3272 + ceil32(return_data.size) + ceil32(32 * mem[_3272 + mem[_3272]]) + 1 > test266151307() or ceil32(32 * mem[_3272 + mem[_3272]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _3272 + ceil32(return_data.size) + ceil32(32 * mem[_3272 + mem[_3272]]) + 1
                        mem[_3272 + ceil32(return_data.size)] = _3288
                        require return_data.size >= _3280 + (32 * _3288) + 32
                        mem[_3272 + ceil32(return_data.size) + 32 len 32 * _3288] = mem[_3272 + _3280 + 32 len 32 * _3288]
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if 1 >= _3288:
                            revert with 0, 50
                        _3916 = mem[_3272 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                        mem[mem[64] + 36] = _3916
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _3916
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3936] == bool(mem[_3936])
                        if not ('cd', 132).length:
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= mem[96]:
                                revert with 0, 50
                            _3984 = mem[160]
                            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                            mem[mem[64] + 36] = _3984
                            require ext_code.size(address(('cd', 132)[1]))
                            call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _3984
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4016 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4016] == bool(mem[_4016])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= _3288:
                                revert with 0, 50
                            _4104 = mem[_3272 + ceil32(return_data.size) + 64]
                            if 1 >= mem[96]:
                                revert with 0, 50
                            _4124 = mem[160]
                            mem[mem[64] + 68] = mem[_3272 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 100] = _4124
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = msg.sender
                            mem[mem[64] + 228] = cd[164]
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), address(('cd', 132)[1]), _4104, _4124, 0, 0, msg.sender, cd[164]
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
                                if 1 >= _3288:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3272 + ceil32(return_data.size) + 64], 9 * _2616 / 20, 0, 0, msg.sender, cd[164]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
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
                               value 9 * _2616 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4496 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4504 = mem[_4496]
                            require mem[_4496] <= test266151307()
                            require _4496 + mem[_4496] + 31 < _4496 + return_data.size
                            _4512 = mem[_4496 + mem[_4496]]
                            if mem[_4496 + mem[_4496]] > test266151307():
                                revert with 0, 65
                            if _4496 + ceil32(return_data.size) + ceil32(32 * mem[_4496 + mem[_4496]]) + 1 > test266151307() or ceil32(32 * mem[_4496 + mem[_4496]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _4496 + ceil32(return_data.size) + ceil32(32 * mem[_4496 + mem[_4496]]) + 1
                            mem[_4496 + ceil32(return_data.size)] = _4512
                            require return_data.size >= _4504 + (32 * _4512) + 32
                            mem[_4496 + ceil32(return_data.size) + 32 len 32 * _4512] = mem[_4496 + _4504 + 32 len 32 * _4512]
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= _4512:
                                revert with 0, 50
                            _4796 = mem[_4496 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                            mem[mem[64] + 36] = _4796
                            require ext_code.size(address(('cd', 132)[1]))
                            call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _4796
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4816] == bool(mem[_4816])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= ('cd', 132).length:
                                revert with 0, 50
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            if 1 >= mem[_3272 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4844 = mem[_3272 + ceil32(return_data.size) + 64]
                            if 1 >= _4512:
                                revert with 0, 50
                            _4860 = mem[_4496 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 68] = mem[_3272 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 100] = _4860
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = msg.sender
                            mem[mem[64] + 228] = cd[164]
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), address(('cd', 132)[1]), _4844, _4860, 0, 0, msg.sender, cd[164]
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
                                if 1 >= mem[_3272 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3272 + ceil32(return_data.size) + 64], 9 * _2616 / 20, 0, 0, msg.sender, cd[164]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
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
                            _1818 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                            _1826 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            require return_data.size >= _1818 + (32 * _1826) + 32
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1826] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1818 + 357 len 32 * _1826]
                            if 1 >= _1826:
                                revert with 0, 50
                            _2576 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _2576
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2576
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2594] == bool(mem[_2594])
                            if 1 >= _1826:
                                revert with 0, 50
                            _2618 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
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
                               value 9 * _2618 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3274 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3282 = mem[_3274]
                            require mem[_3274] <= test266151307()
                            require _3274 + mem[_3274] + 31 < _3274 + return_data.size
                            _3290 = mem[_3274 + mem[_3274]]
                            if mem[_3274 + mem[_3274]] > test266151307():
                                revert with 0, 65
                            if _3274 + ceil32(return_data.size) + ceil32(32 * mem[_3274 + mem[_3274]]) + 1 > test266151307() or ceil32(32 * mem[_3274 + mem[_3274]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _3274 + ceil32(return_data.size) + ceil32(32 * mem[_3274 + mem[_3274]]) + 1
                            mem[_3274 + ceil32(return_data.size)] = _3290
                            require return_data.size >= _3282 + (32 * _3290) + 32
                            mem[_3274 + ceil32(return_data.size) + 32 len 32 * _3290] = mem[_3274 + _3282 + 32 len 32 * _3290]
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _3290:
                                revert with 0, 50
                            _3920 = mem[_3274 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                            mem[mem[64] + 36] = _3920
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _3920
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3938 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3938] == bool(mem[_3938])
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _3990 = mem[160]
                                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                mem[mem[64] + 36] = _3990
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _3990
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4018 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4018] == bool(mem[_4018])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _3290:
                                    revert with 0, 50
                                _4110 = mem[_3274 + ceil32(return_data.size) + 64]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _4128 = mem[160]
                                mem[mem[64] + 68] = mem[_3274 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _4128
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _4110, _4128, 0, 0, msg.sender, cd[164]
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
                                    if 1 >= _3290:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3274 + ceil32(return_data.size) + 64], 9 * _2618 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
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
                                   value 9 * _2618 / 20 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4498 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4506 = mem[_4498]
                                require mem[_4498] <= test266151307()
                                require _4498 + mem[_4498] + 31 < _4498 + return_data.size
                                _4514 = mem[_4498 + mem[_4498]]
                                if mem[_4498 + mem[_4498]] > test266151307():
                                    revert with 0, 65
                                if _4498 + ceil32(return_data.size) + ceil32(32 * mem[_4498 + mem[_4498]]) + 1 > test266151307() or ceil32(32 * mem[_4498 + mem[_4498]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _4498 + ceil32(return_data.size) + ceil32(32 * mem[_4498 + mem[_4498]]) + 1
                                mem[_4498 + ceil32(return_data.size)] = _4514
                                require return_data.size >= _4506 + (32 * _4514) + 32
                                mem[_4498 + ceil32(return_data.size) + 32 len 32 * _4514] = mem[_4498 + _4506 + 32 len 32 * _4514]
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _4514:
                                    revert with 0, 50
                                _4800 = mem[_4498 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                mem[mem[64] + 36] = _4800
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _4800
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4818] == bool(mem[_4818])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[_3274 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4848 = mem[_3274 + ceil32(return_data.size) + 64]
                                if 1 >= _4514:
                                    revert with 0, 50
                                _4864 = mem[_4498 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 68] = mem[_3274 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _4864
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _4848, _4864, 0, 0, msg.sender, cd[164]
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
                                    if 1 >= mem[_3274 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3274 + ceil32(return_data.size) + 64], 9 * _2618 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
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
                            _1819 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                            _1827 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                            require return_data.size >= _1819 + (32 * _1827) + 32
                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1827] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1819 + 357 len 32 * _1827]
                            if 1 >= _1827:
                                revert with 0, 50
                            _2578 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
                            mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                            mem[mem[64] + 36] = _2578
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2578
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2595] == bool(mem[_2595])
                            if 1 >= _1827:
                                revert with 0, 50
                            _2619 = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389]
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
                               value 9 * _2619 / 20 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), cd[164], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3275 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3283 = mem[_3275]
                            require mem[_3275] <= test266151307()
                            require _3275 + mem[_3275] + 31 < _3275 + return_data.size
                            _3291 = mem[_3275 + mem[_3275]]
                            if mem[_3275 + mem[_3275]] > test266151307():
                                revert with 0, 65
                            if _3275 + ceil32(return_data.size) + ceil32(32 * mem[_3275 + mem[_3275]]) + 1 > test266151307() or ceil32(32 * mem[_3275 + mem[_3275]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _3275 + ceil32(return_data.size) + ceil32(32 * mem[_3275 + mem[_3275]]) + 1
                            mem[_3275 + ceil32(return_data.size)] = _3291
                            require return_data.size >= _3283 + (32 * _3291) + 32
                            mem[_3275 + ceil32(return_data.size) + 32 len 32 * _3291] = mem[_3275 + _3283 + 32 len 32 * _3291]
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if 1 >= _3291:
                                revert with 0, 50
                            _3922 = mem[_3275 + ceil32(return_data.size) + 64]
                            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                            mem[mem[64] + 36] = _3922
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _3922
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3939 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3939] == bool(mem[_3939])
                            if not ('cd', 132).length:
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _3993 = mem[160]
                                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                mem[mem[64] + 36] = _3993
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _3993
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4019] == bool(mem[_4019])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _3291:
                                    revert with 0, 50
                                _4113 = mem[_3275 + ceil32(return_data.size) + 64]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _4130 = mem[160]
                                mem[mem[64] + 68] = mem[_3275 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _4130
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _4113, _4130, 0, 0, msg.sender, cd[164]
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
                                    if 1 >= _3291:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3275 + ceil32(return_data.size) + 64], 9 * _2619 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
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
                                   value 9 * _2619 / 20 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), cd[164], ('cd', 132).length, mem[mem[64] + 164 len 32 * ('cd', 132).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4499 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4507 = mem[_4499]
                                require mem[_4499] <= test266151307()
                                require _4499 + mem[_4499] + 31 < _4499 + return_data.size
                                _4515 = mem[_4499 + mem[_4499]]
                                if mem[_4499 + mem[_4499]] > test266151307():
                                    revert with 0, 65
                                if _4499 + ceil32(return_data.size) + ceil32(32 * mem[_4499 + mem[_4499]]) + 1 > test266151307() or ceil32(32 * mem[_4499 + mem[_4499]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _4499 + ceil32(return_data.size) + ceil32(32 * mem[_4499 + mem[_4499]]) + 1
                                mem[_4499 + ceil32(return_data.size)] = _4515
                                require return_data.size >= _4507 + (32 * _4515) + 32
                                mem[_4499 + ceil32(return_data.size) + 32 len 32 * _4515] = mem[_4499 + _4507 + 32 len 32 * _4515]
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= _4515:
                                    revert with 0, 50
                                _4802 = mem[_4499 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                                mem[mem[64] + 36] = _4802
                                require ext_code.size(address(('cd', 132)[1]))
                                call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x10ed43c718714eb63d5aa57b78b54704e256024e, _4802
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4819] == bool(mem[_4819])
                                if 1 >= ('cd', 100).length:
                                    revert with 0, 50
                                require ('cd', 100)[1] == address(('cd', 100)[1])
                                if 1 >= ('cd', 132).length:
                                    revert with 0, 50
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                if 1 >= mem[_3275 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4850 = mem[_3275 + ceil32(return_data.size) + 64]
                                if 1 >= _4515:
                                    revert with 0, 50
                                _4866 = mem[_4499 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 68] = mem[_3275 + ceil32(return_data.size) + 64]
                                mem[mem[64] + 100] = _4866
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = msg.sender
                                mem[mem[64] + 228] = cd[164]
                                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[1]), address(('cd', 132)[1]), _4850, _4866, 0, 0, msg.sender, cd[164]
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
                                    if 1 >= mem[_3275 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(('cd', 100)[1]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[_3275 + ceil32(return_data.size) + 64], 9 * _2619 / 20, 0, 0, msg.sender, cd[164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                    if cd[164] > block.timestamp:
                        revert with 0, 'Testpoint2'
}



}
