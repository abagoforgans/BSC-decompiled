contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c9d78c8(?)
#  - TokenWithdraw(address arg1, uint256 arg2)
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
        if uint32(call.func_hash) >> 224 != unknown_0x0c9d78c8(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x68577e4d(?????):
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
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
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[164] = msg.sender
                mem[196] = cd[36]
                mem[128] = 68
                mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[160 len 4] = transfer(address arg1, uint256 arg2)
                mem[228] = 32
                mem[260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transfer(address arg1, uint256 arg2), msg.sender, cd[36], 0
                mem[360] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, cd[36], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, cd[36], 0) << 288)
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
            require not msg.value
            require calldata.size - 4 >= 224
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
            require cd[164] == address(cd[164])
            if cd[196] < block.timestamp:
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
                mem[ceil32(return_data.size) + 456] = cd[196]
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], 0, 160, address(this.address), cd[196], ('cd', 68).length, mem[ceil32(return_data.size) + 520 len 32 * ('cd', 68).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 324
                require return_data.size >= 32
                _1720 = mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32
                require mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 355 < ceil32(return_data.size) + return_data.size + 324
                _1728 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 324 len 4], Mask(224, 32, cd[36]) >> 32 + 324]) + 325
                mem[(2 * ceil32(return_data.size)) + 324] = _1728
                require return_data.size >= _1720 + (32 * _1728) + 32
                mem[(2 * ceil32(return_data.size)) + 356 len 32 * _1728] = mem[ceil32(return_data.size) + _1720 + 356 len 32 * _1728]
                if _1728 < 1:
                    revert with 0, 17
                if _1728 - 1 >= _1728:
                    revert with 0, 50
                _2596 = mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 356]
                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                mem[mem[64] + 36] = _2596
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2596
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2616] == bool(mem[_2616])
                if _1728 < 1:
                    revert with 0, 17
                if _1728 - 1 >= _1728:
                    revert with 0, 50
                _2648 = mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 356]
                if mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 356] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
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
                mem[mem[64] + 100] = cd[196]
                require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 9 * _2648 / 20 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), cd[196], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3400 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3408 = mem[_3400]
                require mem[_3400] <= test266151307()
                require _3400 + mem[_3400] + 31 < _3400 + return_data.size
                _3416 = mem[_3400 + mem[_3400]]
                if mem[_3400 + mem[_3400]] > test266151307():
                    revert with 0, 65
                if _3400 + ceil32(return_data.size) + ceil32(32 * mem[_3400 + mem[_3400]]) + 1 > test266151307() or ceil32(32 * mem[_3400 + mem[_3400]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _3400 + ceil32(return_data.size) + ceil32(32 * mem[_3400 + mem[_3400]]) + 1
                mem[_3400 + ceil32(return_data.size)] = _3416
                require return_data.size >= _3408 + (32 * _3416) + 32
                mem[_3400 + ceil32(return_data.size) + 32 len 32 * _3416] = mem[_3400 + _3408 + 32 len 32 * _3416]
                if 1 >= ('cd', 100).length:
                    revert with 0, 50
                require ('cd', 100)[1] == address(('cd', 100)[1])
                if _3416 < 1:
                    revert with 0, 17
                if _3416 - 1 >= _3416:
                    revert with 0, 50
                _4144 = mem[(32 * _3416 - 1) + _3400 + ceil32(return_data.size) + 32]
                if mem[(32 * _3416 - 1) + _3400 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                mem[mem[64] + 36] = 2 * _4144
                require ext_code.size(address(('cd', 100)[1]))
                call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _4144
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4168] == bool(mem[_4168])
                if not ('cd', 132).length:
                    if mem[(2 * ceil32(return_data.size)) + 324] < 1:
                        revert with 0, 17
                    if mem[(2 * ceil32(return_data.size)) + 324] - 1 >= mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 50
                    _4212 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 324] - 1) + (2 * ceil32(return_data.size)) + 356]
                    mem[mem[64] + 4] = address(cd[164])
                    mem[mem[64] + 36] = _4212
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[164]), _4212
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4244] == bool(mem[_4244])
                    if 1 >= ('cd', 100).length:
                        revert with 0, 50
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if _3416 < 1:
                        revert with 0, 17
                    if _3416 - 1 >= _3416:
                        revert with 0, 50
                    _4312 = mem[(32 * _3416 - 1) + _3400 + ceil32(return_data.size) + 32]
                    if mem[(32 * _3416 - 1) + _3400 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(cd[164])
                    mem[mem[64] + 36] = 2 * _4312
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[164]), 2 * _4312
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4348] == bool(mem[_4348])
                    if 1 >= ('cd', 100).length:
                        revert with 0, 50
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if _3416 < 1:
                        revert with 0, 17
                    if _3416 - 1 >= _3416:
                        revert with 0, 50
                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 9 * _2648 / 20 wei
                         gas gas_remaining wei
                        args address(('cd', 100)[1]), mem[(32 * _3416 - 1) + _3400 + ceil32(return_data.size) + 32], 0, 0, msg.sender, cd[196]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if cd[196] > block.timestamp:
                        revert with 0, 'Testpoint1'
                else:
                    _4184 = mem[64]
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
                    mem[_4184 + 68] = this.address
                    mem[_4184 + 100] = cd[196]
                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.mem[mem[64] len 4] with:
                       value 9 * _2648 / 20 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4184 + (32 * ('cd', 132).length) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4816 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4824 = mem[_4816]
                    require mem[_4816] <= test266151307()
                    require _4816 + mem[_4816] + 31 < _4816 + return_data.size
                    _4832 = mem[_4816 + mem[_4816]]
                    if mem[_4816 + mem[_4816]] > test266151307():
                        revert with 0, 65
                    if _4816 + ceil32(return_data.size) + ceil32(32 * mem[_4816 + mem[_4816]]) + 1 > test266151307() or ceil32(32 * mem[_4816 + mem[_4816]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _4816 + ceil32(return_data.size) + ceil32(32 * mem[_4816 + mem[_4816]]) + 1
                    mem[_4816 + ceil32(return_data.size)] = _4832
                    require return_data.size >= _4824 + (32 * _4832) + 32
                    mem[_4816 + ceil32(return_data.size) + 32 len 32 * _4832] = mem[_4816 + _4824 + 32 len 32 * _4832]
                    if 1 >= ('cd', 132).length:
                        revert with 0, 50
                    require ('cd', 132)[1] == address(('cd', 132)[1])
                    if _4832 < 1:
                        revert with 0, 17
                    if _4832 - 1 >= _4832:
                        revert with 0, 50
                    _5248 = mem[(32 * _4832 - 1) + _4816 + ceil32(return_data.size) + 32]
                    if mem[(32 * _4832 - 1) + _4816 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                    mem[mem[64] + 36] = 2 * _5248
                    require ext_code.size(address(('cd', 132)[1]))
                    call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _5248
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5272] == bool(mem[_5272])
                    if 1 >= ('cd', 100).length:
                        revert with 0, 50
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if 1 >= ('cd', 132).length:
                        revert with 0, 50
                    require ('cd', 132)[1] == address(('cd', 132)[1])
                    if mem[_3400 + ceil32(return_data.size)] < 1:
                        revert with 0, 17
                    if mem[_3400 + ceil32(return_data.size)] - 1 >= mem[_3400 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _5308 = mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32]
                    if _4832 < 1:
                        revert with 0, 17
                    if _4832 - 1 >= _4832:
                        revert with 0, 50
                    _5336 = mem[(32 * _4832 - 1) + _4816 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 68] = mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 100] = _5336
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = msg.sender
                    mem[mem[64] + 228] = cd[196]
                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 100)[1]), address(('cd', 132)[1]), _5308, _5336, 0, 0, msg.sender, cd[196]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    if cd[196] > block.timestamp:
                        revert with 0, 'Testpoint1'
                    if not ('cd', 132).length:
                        if mem[(2 * ceil32(return_data.size)) + 324] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + 324] - 1 >= mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 50
                        _5420 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 324] - 1) + (2 * ceil32(return_data.size)) + 356]
                        mem[mem[64] + 4] = address(cd[164])
                        mem[mem[64] + 36] = _5420
                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[164]), _5420
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5440 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5440] == bool(mem[_5440])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if mem[_3400 + ceil32(return_data.size)] < 1:
                            revert with 0, 17
                        if mem[_3400 + ceil32(return_data.size)] - 1 >= mem[_3400 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _5472 = mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(cd[164])
                        mem[mem[64] + 36] = 2 * _5472
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[164]), 2 * _5472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5496] == bool(mem[_5496])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if mem[_3400 + ceil32(return_data.size)] < 1:
                            revert with 0, 17
                        if mem[_3400 + ceil32(return_data.size)] - 1 >= mem[_3400 + ceil32(return_data.size)]:
                            revert with 0, 50
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 9 * _2648 / 20 wei
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), mem[(32 * mem[_3400 + ceil32(return_data.size)] - 1) + _3400 + ceil32(return_data.size) + 32], 0, 0, msg.sender, cd[196]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if cd[196] > block.timestamp:
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
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[196]
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], 0, 160, address(this.address), cd[196], ('cd', 68).length, mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 32 * ('cd', 68).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325
                    require return_data.size >= 32
                    _1722 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                    _1730 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = _1730
                    require return_data.size >= _1722 + (32 * _1730) + 32
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1730] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1722 + 357 len 32 * _1730]
                    if _1730 < 1:
                        revert with 0, 17
                    if _1730 - 1 >= _1730:
                        revert with 0, 50
                    _2600 = mem[(32 * _1730 - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                    mem[mem[64] + 36] = _2600
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2600
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2618] == bool(mem[_2618])
                    if _1730 < 1:
                        revert with 0, 17
                    if _1730 - 1 >= _1730:
                        revert with 0, 50
                    _2650 = mem[(32 * _1730 - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                    if mem[(32 * _1730 - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
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
                    mem[mem[64] + 100] = cd[196]
                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value 9 * _2650 / 20 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), cd[196], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3402 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3410 = mem[_3402]
                    require mem[_3402] <= test266151307()
                    require _3402 + mem[_3402] + 31 < _3402 + return_data.size
                    _3418 = mem[_3402 + mem[_3402]]
                    if mem[_3402 + mem[_3402]] > test266151307():
                        revert with 0, 65
                    if _3402 + ceil32(return_data.size) + ceil32(32 * mem[_3402 + mem[_3402]]) + 1 > test266151307() or ceil32(32 * mem[_3402 + mem[_3402]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _3402 + ceil32(return_data.size) + ceil32(32 * mem[_3402 + mem[_3402]]) + 1
                    mem[_3402 + ceil32(return_data.size)] = _3418
                    require return_data.size >= _3410 + (32 * _3418) + 32
                    mem[_3402 + ceil32(return_data.size) + 32 len 32 * _3418] = mem[_3402 + _3410 + 32 len 32 * _3418]
                    if 1 >= ('cd', 100).length:
                        revert with 0, 50
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if _3418 < 1:
                        revert with 0, 17
                    if _3418 - 1 >= _3418:
                        revert with 0, 50
                    _4146 = mem[(32 * _3418 - 1) + _3402 + ceil32(return_data.size) + 32]
                    if mem[(32 * _3418 - 1) + _3402 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                    mem[mem[64] + 36] = 2 * _4146
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _4146
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4170] == bool(mem[_4170])
                    if not ('cd', 132).length:
                        if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] < 1:
                            revert with 0, 17
                        if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1 >= mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325]:
                            revert with 0, 50
                        _4216 = mem[(32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                        mem[mem[64] + 4] = address(cd[164])
                        mem[mem[64] + 36] = _4216
                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[164]), _4216
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4248] == bool(mem[_4248])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if _3418 < 1:
                            revert with 0, 17
                        if _3418 - 1 >= _3418:
                            revert with 0, 50
                        _4314 = mem[(32 * _3418 - 1) + _3402 + ceil32(return_data.size) + 32]
                        if mem[(32 * _3418 - 1) + _3402 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(cd[164])
                        mem[mem[64] + 36] = 2 * _4314
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[164]), 2 * _4314
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4352 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4352] == bool(mem[_4352])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if _3418 < 1:
                            revert with 0, 17
                        if _3418 - 1 >= _3418:
                            revert with 0, 50
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 9 * _2650 / 20 wei
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), mem[(32 * _3418 - 1) + _3402 + ceil32(return_data.size) + 32], 0, 0, msg.sender, cd[196]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if cd[196] > block.timestamp:
                            revert with 0, 'Testpoint1'
                    else:
                        _4186 = mem[64]
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
                        mem[_4186 + 68] = this.address
                        mem[_4186 + 100] = cd[196]
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.mem[mem[64] len 4] with:
                           value 9 * _2650 / 20 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4186 + (32 * ('cd', 132).length) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4818 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4826 = mem[_4818]
                        require mem[_4818] <= test266151307()
                        require _4818 + mem[_4818] + 31 < _4818 + return_data.size
                        _4834 = mem[_4818 + mem[_4818]]
                        if mem[_4818 + mem[_4818]] > test266151307():
                            revert with 0, 65
                        if _4818 + ceil32(return_data.size) + ceil32(32 * mem[_4818 + mem[_4818]]) + 1 > test266151307() or ceil32(32 * mem[_4818 + mem[_4818]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _4818 + ceil32(return_data.size) + ceil32(32 * mem[_4818 + mem[_4818]]) + 1
                        mem[_4818 + ceil32(return_data.size)] = _4834
                        require return_data.size >= _4826 + (32 * _4834) + 32
                        mem[_4818 + ceil32(return_data.size) + 32 len 32 * _4834] = mem[_4818 + _4826 + 32 len 32 * _4834]
                        if 1 >= ('cd', 132).length:
                            revert with 0, 50
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        if _4834 < 1:
                            revert with 0, 17
                        if _4834 - 1 >= _4834:
                            revert with 0, 50
                        _5250 = mem[(32 * _4834 - 1) + _4818 + ceil32(return_data.size) + 32]
                        if mem[(32 * _4834 - 1) + _4818 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = 2 * _5250
                        require ext_code.size(address(('cd', 132)[1]))
                        call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _5250
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5274] == bool(mem[_5274])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if 1 >= ('cd', 132).length:
                            revert with 0, 50
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        if mem[_3402 + ceil32(return_data.size)] < 1:
                            revert with 0, 17
                        if mem[_3402 + ceil32(return_data.size)] - 1 >= mem[_3402 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _5312 = mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32]
                        if _4834 < 1:
                            revert with 0, 17
                        if _4834 - 1 >= _4834:
                            revert with 0, 50
                        _5342 = mem[(32 * _4834 - 1) + _4818 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 68] = mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 100] = _5342
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = msg.sender
                        mem[mem[64] + 228] = cd[196]
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), address(('cd', 132)[1]), _5312, _5342, 0, 0, msg.sender, cd[196]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        if cd[196] > block.timestamp:
                            revert with 0, 'Testpoint1'
                        if not ('cd', 132).length:
                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] < 1:
                                revert with 0, 17
                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1 >= mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325]:
                                revert with 0, 50
                            _5424 = mem[(32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = _5424
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), _5424
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5442] == bool(mem[_5442])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if mem[_3402 + ceil32(return_data.size)] < 1:
                                revert with 0, 17
                            if mem[_3402 + ceil32(return_data.size)] - 1 >= mem[_3402 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _5474 = mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = 2 * _5474
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), 2 * _5474
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5498 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5498] == bool(mem[_5498])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if mem[_3402 + ceil32(return_data.size)] < 1:
                                revert with 0, 17
                            if mem[_3402 + ceil32(return_data.size)] - 1 >= mem[_3402 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 9 * _2650 / 20 wei
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), mem[(32 * mem[_3402 + ceil32(return_data.size)] - 1) + _3402 + ceil32(return_data.size) + 32], 0, 0, msg.sender, cd[196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if cd[196] > block.timestamp:
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
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[196]
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], 0, 160, address(this.address), cd[196], ('cd', 68).length, mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 32 * ('cd', 68).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325
                    require return_data.size >= 32
                    _1723 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 356 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 325
                    _1731 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4], Mask(224, 32, cd[36]) >> 32 + 325]) + 326
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] = _1731
                    require return_data.size >= _1723 + (32 * _1731) + 32
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357 len 32 * _1731] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1723 + 357 len 32 * _1731]
                    if _1731 < 1:
                        revert with 0, 17
                    if _1731 - 1 >= _1731:
                        revert with 0, 50
                    _2602 = mem[(32 * _1731 - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                    mem[mem[64] + 36] = _2602
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, _2602
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2619] == bool(mem[_2619])
                    if _1731 < 1:
                        revert with 0, 17
                    if _1731 - 1 >= _1731:
                        revert with 0, 50
                    _2651 = mem[(32 * _1731 - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                    if mem[(32 * _1731 - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
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
                    mem[mem[64] + 100] = cd[196]
                    require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                    call 0xad02320a81606fbb760c32e065495a8ddbf322a8.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value 9 * _2651 / 20 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), cd[196], ('cd', 100).length, mem[mem[64] + 164 len 32 * ('cd', 100).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3403 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3411 = mem[_3403]
                    require mem[_3403] <= test266151307()
                    require _3403 + mem[_3403] + 31 < _3403 + return_data.size
                    _3419 = mem[_3403 + mem[_3403]]
                    if mem[_3403 + mem[_3403]] > test266151307():
                        revert with 0, 65
                    if _3403 + ceil32(return_data.size) + ceil32(32 * mem[_3403 + mem[_3403]]) + 1 > test266151307() or ceil32(32 * mem[_3403 + mem[_3403]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _3403 + ceil32(return_data.size) + ceil32(32 * mem[_3403 + mem[_3403]]) + 1
                    mem[_3403 + ceil32(return_data.size)] = _3419
                    require return_data.size >= _3411 + (32 * _3419) + 32
                    mem[_3403 + ceil32(return_data.size) + 32 len 32 * _3419] = mem[_3403 + _3411 + 32 len 32 * _3419]
                    if 1 >= ('cd', 100).length:
                        revert with 0, 50
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if _3419 < 1:
                        revert with 0, 17
                    if _3419 - 1 >= _3419:
                        revert with 0, 50
                    _4147 = mem[(32 * _3419 - 1) + _3403 + ceil32(return_data.size) + 32]
                    if mem[(32 * _3419 - 1) + _3403 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                    mem[mem[64] + 36] = 2 * _4147
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _4147
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4171] == bool(mem[_4171])
                    if not ('cd', 132).length:
                        if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] < 1:
                            revert with 0, 17
                        if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1 >= mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325]:
                            revert with 0, 50
                        _4218 = mem[(32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                        mem[mem[64] + 4] = address(cd[164])
                        mem[mem[64] + 36] = _4218
                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[164]), _4218
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4250] == bool(mem[_4250])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if _3419 < 1:
                            revert with 0, 17
                        if _3419 - 1 >= _3419:
                            revert with 0, 50
                        _4315 = mem[(32 * _3419 - 1) + _3403 + ceil32(return_data.size) + 32]
                        if mem[(32 * _3419 - 1) + _3403 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(cd[164])
                        mem[mem[64] + 36] = 2 * _4315
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[164]), 2 * _4315
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4354] == bool(mem[_4354])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if _3419 < 1:
                            revert with 0, 17
                        if _3419 - 1 >= _3419:
                            revert with 0, 50
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 9 * _2651 / 20 wei
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), mem[(32 * _3419 - 1) + _3403 + ceil32(return_data.size) + 32], 0, 0, msg.sender, cd[196]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if cd[196] > block.timestamp:
                            revert with 0, 'Testpoint1'
                    else:
                        _4187 = mem[64]
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
                        mem[_4187 + 68] = this.address
                        mem[_4187 + 100] = cd[196]
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.mem[mem[64] len 4] with:
                           value 9 * _2651 / 20 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4187 + (32 * ('cd', 132).length) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4819 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4827 = mem[_4819]
                        require mem[_4819] <= test266151307()
                        require _4819 + mem[_4819] + 31 < _4819 + return_data.size
                        _4835 = mem[_4819 + mem[_4819]]
                        if mem[_4819 + mem[_4819]] > test266151307():
                            revert with 0, 65
                        if _4819 + ceil32(return_data.size) + ceil32(32 * mem[_4819 + mem[_4819]]) + 1 > test266151307() or ceil32(32 * mem[_4819 + mem[_4819]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _4819 + ceil32(return_data.size) + ceil32(32 * mem[_4819 + mem[_4819]]) + 1
                        mem[_4819 + ceil32(return_data.size)] = _4835
                        require return_data.size >= _4827 + (32 * _4835) + 32
                        mem[_4819 + ceil32(return_data.size) + 32 len 32 * _4835] = mem[_4819 + _4827 + 32 len 32 * _4835]
                        if 1 >= ('cd', 132).length:
                            revert with 0, 50
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        if _4835 < 1:
                            revert with 0, 17
                        if _4835 - 1 >= _4835:
                            revert with 0, 50
                        _5251 = mem[(32 * _4835 - 1) + _4819 + ceil32(return_data.size) + 32]
                        if mem[(32 * _4835 - 1) + _4819 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64] + 4] = 0xad02320a81606fbb760c32e065495a8ddbf322a8
                        mem[mem[64] + 36] = 2 * _5251
                        require ext_code.size(address(('cd', 132)[1]))
                        call address(('cd', 132)[1]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0xad02320a81606fbb760c32e065495a8ddbf322a8, 2 * _5251
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5275] == bool(mem[_5275])
                        if 1 >= ('cd', 100).length:
                            revert with 0, 50
                        require ('cd', 100)[1] == address(('cd', 100)[1])
                        if 1 >= ('cd', 132).length:
                            revert with 0, 50
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        if mem[_3403 + ceil32(return_data.size)] < 1:
                            revert with 0, 17
                        if mem[_3403 + ceil32(return_data.size)] - 1 >= mem[_3403 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _5314 = mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32]
                        if _4835 < 1:
                            revert with 0, 17
                        if _4835 - 1 >= _4835:
                            revert with 0, 50
                        _5345 = mem[(32 * _4835 - 1) + _4819 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 68] = mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 100] = _5345
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = msg.sender
                        mem[mem[64] + 228] = cd[196]
                        require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                        call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), address(('cd', 132)[1]), _5314, _5345, 0, 0, msg.sender, cd[196]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        if cd[196] > block.timestamp:
                            revert with 0, 'Testpoint1'
                        if not ('cd', 132).length:
                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] < 1:
                                revert with 0, 17
                            if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1 >= mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325]:
                                revert with 0, 50
                            _5426 = mem[(32 * mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 325] - 1) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 357]
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = _5426
                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), _5426
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5443] == bool(mem[_5443])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if mem[_3403 + ceil32(return_data.size)] < 1:
                                revert with 0, 17
                            if mem[_3403 + ceil32(return_data.size)] - 1 >= mem[_3403 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _5475 = mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = 2 * _5475
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), 2 * _5475
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5499] == bool(mem[_5499])
                            if 1 >= ('cd', 100).length:
                                revert with 0, 50
                            require ('cd', 100)[1] == address(('cd', 100)[1])
                            if mem[_3403 + ceil32(return_data.size)] < 1:
                                revert with 0, 17
                            if mem[_3403 + ceil32(return_data.size)] - 1 >= mem[_3403 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(0xad02320a81606fbb760c32e065495a8ddbf322a8)
                            call 0xad02320a81606fbb760c32e065495a8ddbf322a8.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 9 * _2651 / 20 wei
                                 gas gas_remaining wei
                                args address(('cd', 100)[1]), mem[(32 * mem[_3403 + ceil32(return_data.size)] - 1) + _3403 + ceil32(return_data.size) + 32], 0, 0, msg.sender, cd[196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if cd[196] > block.timestamp:
                                revert with 0, 'Testpoint1'
}



}
