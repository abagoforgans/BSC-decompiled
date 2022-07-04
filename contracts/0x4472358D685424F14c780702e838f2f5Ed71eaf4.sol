contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function checkBal(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdrawTokensFromContract(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if not arg1:
        revert with 0, 'Token cannot be zero address.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Amount exceeds Balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
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
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _64 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _64 + (32 * _67) + 32 <= return_data.size
        idx = 0
        s = _64 + 224
        t = ceil32(return_data.size) + 224
        while idx < _67:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _67:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    else:
        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
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
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _66 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
            _69 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require _66 + (32 * _69) + 32 <= return_data.size
            idx = 0
            s = _66 + 224
            t = ceil32(return_data.size) + 224
            while idx < _69:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _69:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 256]
        else:
            mem[96] = 3
            mem[128] = arg1
            mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _65 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
            _68 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require _65 + (32 * _68) + 32 <= return_data.size
            idx = 0
            s = _65 + 256
            t = ceil32(return_data.size) + 256
            while idx < _68:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 2 >= _68:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_52c06da4(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 164).length) + 128 > test266151307() or (32 * ('cd', 164).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[(32 * ('cd', 164).length) + 132] = msg.sender
    mem[(32 * ('cd', 164).length) + 164] = this.address
    mem[(32 * ('cd', 164).length) + 196] = cd[68]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    mem[(32 * ('cd', 164).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 132] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 164] = -1
    require ext_code.size(address(cd[4]))
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
    mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 132] = cd[68]
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 164] = cd[100]
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 196] = 160
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 292] = ('cd', 164).length
    idx = 0
    s = 128
    t = (32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 324
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 228] = address(cd[132])
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + 300
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 164).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _58 = mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require (32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 159 < (32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 128
    _59 = mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]
    if mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 160 > test266151307() or (32 * mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 128] = _59
    require _58 + (32 * _59) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _58 + 160
    t = (32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 160
    while idx < _59:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(cd[36]) == 0xad86d0e9764ba90ddd68747d64bffbd79879a238:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _76 = mem[_75]
        require mem[_75] == mem[_75]
        mem[mem[64] + 4] = 0x8e01cc26d6dd73581347c4370573ce9e59e74802
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x8e01cc26d6dd73581347c4370573ce9e59e74802, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_79] == bool(mem[_79])
        require ext_code.size(0x8e01cc26d6dd73581347c4370573ce9e59e74802)
        call 0x8e01cc26d6dd73581347c4370573ce9e59e74802.swapToAddress(address arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) with:
             gas gas_remaining wei
            args 0xad86d0e9764ba90ddd68747d64bffbd79879a238, _76, 1, 0x1614f18fc94f47967a3fbe5ffcd46d4e7da3d787, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
