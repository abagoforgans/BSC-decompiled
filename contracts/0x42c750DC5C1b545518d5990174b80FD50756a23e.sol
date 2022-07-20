contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function recoverEth() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ddab4f8f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_24d5d52d(?) payable {
    require calldata.size - 4 >= 192
    require calldata.size >= 100
    require calldata.size >= 196
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg4 == address(arg4)
    require arg1 == address(arg1)
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require arg5 == address(arg5)
    require arg2 == address(arg2)
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require arg6 == address(arg6)
    require arg3 == address(arg3)
    call address(arg6).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountOutMin(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require (32 * _22) + _21 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _22)] = mem[_21 + 224 len ceil32(32 * _22)]
    if 1 >= _22:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_26a215ec(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[96] = 2
    mem[128] = address(arg4)
    mem[160] = address(arg5)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg7
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg7, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _51 = mem[192 len 4], Mask(224, 32, arg7) >> 32
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 + 223 < return_data.size + 192
    _52 = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require (32 * _52) + _51 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _52)] = mem[_51 + 224 len ceil32(32 * _52)]
    if 1 >= _52:
        revert with 'NH{q', 50
    _93 = mem[ceil32(return_data.size) + 256]
    _94 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_94]:
        revert with 'NH{q', 50
    mem[_94 + 32] = address(arg5)
    if 1 >= mem[_94]:
        revert with 'NH{q', 50
    mem[_94 + 64] = address(arg6)
    mem[_94 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_94 + 100] = _93
    mem[_94 + 132] = 64
    mem[_94 + 164] = mem[_94]
    idx = 0
    s = _94 + 32
    t = _94 + 196
    while idx < mem[_94]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _94 + (32 * mem[_94]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] <= test266151307()
    require _128 + mem[_128] + 31 < _128 + return_data.size
    _130 = mem[_128 + mem[_128]]
    if mem[_128 + mem[_128]] > test266151307():
        revert with 'NH{q', 65
    if _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1 > test266151307() or ceil32(32 * mem[_128 + mem[_128]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1
    mem[_128 + ceil32(return_data.size)] = _130
    require (32 * _130) + _129 + 32 <= return_data.size
    mem[_128 + ceil32(return_data.size) + 32 len ceil32(32 * _130)] = mem[_128 + _129 + 32 len ceil32(32 * _130)]
    if mem[_94] < 1:
        revert with 'NH{q', 17
    if mem[_94] - 1 >= _130:
        revert with 'NH{q', 50
    _156 = mem[(32 * mem[_94] - 1) + _128 + ceil32(return_data.size) + 32]
    _157 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_157]:
        revert with 'NH{q', 50
    mem[_157 + 32] = address(arg6)
    if 1 >= mem[_157]:
        revert with 'NH{q', 50
    mem[_157 + 64] = address(arg4)
    mem[_157 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_157 + 100] = _156
    mem[_157 + 132] = 64
    mem[_157 + 164] = mem[_157]
    idx = 0
    s = _157 + 32
    t = _157 + 196
    while idx < mem[_157]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg3).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _157 + (32 * mem[_157]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _177 = mem[_176]
    require mem[_176] <= test266151307()
    require _176 + mem[_176] + 31 < _176 + return_data.size
    _178 = mem[_176 + mem[_176]]
    if mem[_176 + mem[_176]] > test266151307():
        revert with 'NH{q', 65
    if _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1 > test266151307() or ceil32(32 * mem[_176 + mem[_176]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1
    mem[_176 + ceil32(return_data.size)] = _178
    require (32 * _178) + _177 + 32 <= return_data.size
    mem[_176 + ceil32(return_data.size) + 32 len ceil32(32 * _178)] = mem[_176 + _177 + 32 len ceil32(32 * _178)]
    if mem[_157] < 1:
        revert with 'NH{q', 17
    if mem[_157] - 1 >= _178:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * mem[_157] - 1) + _176 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_de09f6bd(?) payable {
    require calldata.size - 4 >= 224
    require 196 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 100 > !block.timestamp:
        revert with 'NH{q', 17
    mem[96] = 2
    require arg4 == address(arg4)
    mem[128] = address(arg4)
    require arg5 == address(arg5)
    mem[160] = address(arg5)
    require arg4 == address(arg4)
    require arg1 == address(arg1)
    if 100000 > !arg7:
        revert with 'NH{q', 17
    mem[196] = address(arg1)
    mem[228] = arg7 + 100000
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg7 + 100000
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'R1 failed'
    require arg1 == address(arg1)
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg7
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = msg.sender
    mem[ceil32(return_data.size) + 324] = block.timestamp + 100
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg7, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), msg.sender, block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _62 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _63 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require (32 * _63) + _62 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _63)] = mem[ceil32(return_data.size) + _62 + 224 len ceil32(32 * _63)]
    if 1 >= _63:
        revert with 'NH{q', 50
    _106 = mem[(2 * ceil32(return_data.size)) + 256]
    require arg5 == address(arg5)
    mem[128] = address(arg5)
    require arg6 == address(arg6)
    mem[160] = address(arg6)
    require arg5 == address(arg5)
    require arg2 == address(arg2)
    if 100000 > !mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _106 + 100000
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _106 + 100000
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    if not mem[_111]:
        revert with 0, 'R2 failed'
    require arg2 == address(arg2)
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _106
    mem[mem[64] + 36] = 1
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
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp + 100
    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _106, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _146 = mem[_145]
    require mem[_145] <= test266151307()
    require _145 + mem[_145] + 31 < _145 + return_data.size
    _147 = mem[_145 + mem[_145]]
    if mem[_145 + mem[_145]] > test266151307():
        revert with 'NH{q', 65
    if _145 + ceil32(return_data.size) + ceil32(32 * mem[_145 + mem[_145]]) + 1 > test266151307() or ceil32(32 * mem[_145 + mem[_145]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _145 + ceil32(return_data.size) + ceil32(32 * mem[_145 + mem[_145]]) + 1
    mem[_145 + ceil32(return_data.size)] = _147
    require (32 * _147) + _146 + 32 <= return_data.size
    mem[_145 + ceil32(return_data.size) + 32 len ceil32(32 * _147)] = mem[_145 + _146 + 32 len ceil32(32 * _147)]
    if 1 >= _147:
        revert with 'NH{q', 50
    _171 = mem[_145 + ceil32(return_data.size) + 64]
    require arg6 == address(arg6)
    mem[128] = address(arg6)
    require arg4 == address(arg4)
    mem[160] = address(arg4)
    require arg6 == address(arg6)
    require arg3 == address(arg3)
    if 100000 > !_171:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = address(arg3)
    mem[mem[64] + 36] = _171 + 100000
    call address(arg6).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), _171 + 100000
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_176] == bool(mem[_176])
    if not mem[_176]:
        revert with 0, 'R3 failed'
    require arg3 == address(arg3)
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _171
    mem[mem[64] + 36] = 1
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
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp + 100
    call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _171, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _191 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_191] <= test266151307()
    require _191 + mem[_191] + 31 < _191 + return_data.size
    if mem[_191 + mem[_191]] > test266151307():
        revert with 'NH{q', 65
    if _191 + ceil32(return_data.size) + ceil32(32 * mem[_191 + mem[_191]]) + 1 > test266151307() or ceil32(32 * mem[_191 + mem[_191]]) + 1 < 0:
        revert with 'NH{q', 65
    require (32 * mem[_191 + mem[_191]]) + mem[_191] + 32 <= return_data.size
}

function sub_3e62c577(?) payable {
    require calldata.size - 4 >= 224
    require 196 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg4 == address(arg4)
    mem[100] = this.address
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg5 == address(arg5)
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg6 == address(arg6)
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 120 > !block.timestamp:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    require arg4 == address(arg4)
    require arg1 == address(arg1)
    mem[(4 * ceil32(return_data.size)) + 196] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 228] = -1
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'R1 failed', mem[(6 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
    require arg5 == address(arg5)
    require arg2 == address(arg2)
    mem[(6 * ceil32(return_data.size)) + 196] = address(arg2)
    mem[(6 * ceil32(return_data.size)) + 228] = -1
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1, mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = 32
        mem[(8 * ceil32(return_data.size)) + 228] = 9
        mem[(8 * ceil32(return_data.size)) + 260] = 'R2 failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 192
           len (13 * ceil32(return_data.size)) + 100
    require arg6 == address(arg6)
    require arg3 == address(arg3)
    mem[(8 * ceil32(return_data.size)) + 196] = address(arg3)
    mem[(8 * ceil32(return_data.size)) + 228] = -1
    call address(arg6).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = 32
        mem[(8 * ceil32(return_data.size)) + 228] = 9
        mem[(8 * ceil32(return_data.size)) + 260] = 'R3 failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 192
           len (15 * ceil32(return_data.size)) + 100
    require arg4 == address(arg4)
    mem[(4 * ceil32(return_data.size)) + 128] = address(arg4)
    require arg5 == address(arg5)
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
    require arg1 == address(arg1)
    mem[(8 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = arg7
    mem[(8 * ceil32(return_data.size)) + 228] = 1
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 120
    require ext_code.size(address(arg1))
    call address(arg1).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg5 == address(arg5)
    if 0 >= mem[(4 * ceil32(return_data.size)) + 96]:
        revert with 'NH{q', 50
    mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
    require arg6 == address(arg6)
    if 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
        revert with 'NH{q', 50
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg6)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    mem[mem[64] + 4] = this.address
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _65 = mem[_64]
    if mem[_64] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    _66 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _65 - ext_call.return_data[0]
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _67 = mem[(4 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _67:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_66 + 100] = this.address
    mem[_66 + 132] = block.timestamp + 120
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _66 + (32 * _67) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg6 == address(arg6)
    if 0 >= mem[(4 * ceil32(return_data.size)) + 96]:
        revert with 'NH{q', 50
    mem[(4 * ceil32(return_data.size)) + 128] = address(arg6)
    require arg4 == address(arg4)
    if 1 >= mem[(4 * ceil32(return_data.size)) + 96]:
        revert with 'NH{q', 50
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    mem[mem[64] + 4] = this.address
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    if mem[_92] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _93 - ext_call.return_data[0]
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _95 = mem[(4 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(4 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _95:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 120
    require ext_code.size(address(arg3))
    call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _93 - ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * _95) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4 == address(arg4)
    mem[mem[64] + 4] = this.address
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _108 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_108] <= ext_call.return_data[0]:
        revert with 0, 'R'
}

function sub_d8b628a1(?) payable {
    require calldata.size - 4 >= 224
    require 196 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg4 == address(arg4)
    mem[100] = this.address
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 100 > !block.timestamp:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 96] = 2
    require arg4 == address(arg4)
    mem[ceil32(return_data.size) + 128] = address(arg4)
    require arg5 == address(arg5)
    mem[ceil32(return_data.size) + 160] = address(arg5)
    require arg4 == address(arg4)
    require arg1 == address(arg1)
    if 100000 > !arg7:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 196] = address(arg1)
    mem[ceil32(return_data.size) + 228] = arg7 + 100000
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg7 + 100000
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 9
        mem[(2 * ceil32(return_data.size)) + 260] = 'R1 failed'
        revert with memory
          from (2 * ceil32(return_data.size)) + 192
           len ceil32(return_data.size) + 100
    require arg1 == address(arg1)
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg7
    mem[(2 * ceil32(return_data.size)) + 228] = 1
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 100
    call address(arg1).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _69 = mem[_68]
    require mem[_68] <= test266151307()
    require _68 + mem[_68] + 31 < _68 + return_data.size
    _70 = mem[_68 + mem[_68]]
    if mem[_68 + mem[_68]] > test266151307():
        revert with 'NH{q', 65
    if _68 + ceil32(return_data.size) + ceil32(32 * mem[_68 + mem[_68]]) + 1 > test266151307() or ceil32(32 * mem[_68 + mem[_68]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _68 + ceil32(return_data.size) + ceil32(32 * mem[_68 + mem[_68]]) + 1
    mem[_68 + ceil32(return_data.size)] = _70
    require (32 * _70) + _69 + 32 <= return_data.size
    mem[_68 + ceil32(return_data.size) + 32 len ceil32(32 * _70)] = mem[_68 + _69 + 32 len ceil32(32 * _70)]
    if 1 >= _70:
        revert with 'NH{q', 50
    _117 = mem[_68 + ceil32(return_data.size) + 64]
    require arg5 == address(arg5)
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 128] = address(arg5)
    require arg6 == address(arg6)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 160] = address(arg6)
    require arg5 == address(arg5)
    require arg2 == address(arg2)
    if 100000 > !_117:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _117 + 100000
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _117 + 100000
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_122] == bool(mem[_122])
    if not mem[_122]:
        revert with 0, 'R2 failed'
    require arg2 == address(arg2)
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _117
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _127 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _127:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 100
    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _117, 1, 160, address(this.address), block.timestamp + 100, mem[mem[64] + 164 len (32 * _127) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _161 = mem[_160]
    require mem[_160] <= test266151307()
    require _160 + mem[_160] + 31 < _160 + return_data.size
    _162 = mem[_160 + mem[_160]]
    if mem[_160 + mem[_160]] > test266151307():
        revert with 'NH{q', 65
    if _160 + ceil32(return_data.size) + ceil32(32 * mem[_160 + mem[_160]]) + 1 > test266151307() or ceil32(32 * mem[_160 + mem[_160]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _160 + ceil32(return_data.size) + ceil32(32 * mem[_160 + mem[_160]]) + 1
    mem[_160 + ceil32(return_data.size)] = _162
    require (32 * _162) + _161 + 32 <= return_data.size
    mem[_160 + ceil32(return_data.size) + 32 len ceil32(32 * _162)] = mem[_160 + _161 + 32 len ceil32(32 * _162)]
    if 1 >= _162:
        revert with 'NH{q', 50
    _190 = mem[_160 + ceil32(return_data.size) + 64]
    require arg6 == address(arg6)
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 128] = address(arg6)
    require arg4 == address(arg4)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 160] = address(arg4)
    require arg6 == address(arg6)
    require arg3 == address(arg3)
    if 100000 > !_190:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = address(arg3)
    mem[mem[64] + 36] = _190 + 100000
    call address(arg6).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), _190 + 100000
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _195 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_195] == bool(mem[_195])
    if not mem[_195]:
        revert with 0, 'R3 failed'
    require arg3 == address(arg3)
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _190
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _200 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _200:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 100
    call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _190, 1, 160, address(this.address), block.timestamp + 100, mem[mem[64] + 164 len (32 * _200) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _214 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _215 = mem[_214]
    require mem[_214] <= test266151307()
    require _214 + mem[_214] + 31 < _214 + return_data.size
    _216 = mem[_214 + mem[_214]]
    if mem[_214 + mem[_214]] > test266151307():
        revert with 'NH{q', 65
    if _214 + ceil32(return_data.size) + ceil32(32 * mem[_214 + mem[_214]]) + 1 > test266151307() or ceil32(32 * mem[_214 + mem[_214]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _214 + ceil32(return_data.size) + ceil32(32 * mem[_214 + mem[_214]]) + 1
    mem[_214 + ceil32(return_data.size)] = _216
    require (32 * _216) + _215 + 32 <= return_data.size
    mem[_214 + ceil32(return_data.size) + 32 len ceil32(32 * _216)] = mem[_214 + _215 + 32 len ceil32(32 * _216)]
    if 1 >= _216:
        revert with 'NH{q', 50
    if mem[_214 + ceil32(return_data.size) + 64] <= ext_call.return_data[0]:
        revert with 0, 'R'
}



}
