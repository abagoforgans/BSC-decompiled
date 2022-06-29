contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function sub_36175cdb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'noTu'
    stor0 = address(arg1)
}

function sub_5b628742(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'noTu'
    stor1 = address(arg1)
}

function sub_df823489(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'noTu'
    stor2 = address(arg1)
}

function sub_3a7a7203(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if address(arg2) != stor1:
        if address(arg2) != stor2:
            revert with 0, 'noTu'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b7075176(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if msg.sender == stor1:
        mem[96] = 2
        mem[128] = stor0
        mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if arg1 <= 0:
            revert with 0, 'd'
        mem[196] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[228] = arg1
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg1
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
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
        mem[ceil32(return_data.size) + 292] = address(arg2)
        mem[ceil32(return_data.size) + 324] = block.timestamp + 10
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(arg2), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _45 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _47 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _45 + (32 * _47) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _45 + 224
        s = (2 * ceil32(return_data.size)) + 224
        while idx < ceil32(return_data.size) + _45 + (32 * _47) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if stor2 != msg.sender:
            revert with 0, 'noTu'
        mem[96] = 2
        mem[128] = stor0
        mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if arg1 <= 0:
            revert with 0, 'd'
        mem[196] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[228] = arg1
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg1
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
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
        mem[ceil32(return_data.size) + 292] = address(arg2)
        mem[ceil32(return_data.size) + 324] = block.timestamp + 10
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(arg2), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _46 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _48 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _46 + (32 * _48) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _46 + 224
        s = (2 * ceil32(return_data.size)) + 224
        while idx < ceil32(return_data.size) + _46 + (32 * _48) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}

function sub_feac6bc6(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if msg.sender == stor1:
        mem[96] = 2
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = stor0
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
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _67 = mem[192 len 4], Mask(224, 32, arg4) >> 32
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
        _69 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        require _67 + (32 * _69) + 32 <= return_data.size
        idx = _67 + 224
        s = ceil32(return_data.size) + 224
        while idx < _67 + (32 * _69) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _69:
            revert with 'NH{q', 50
        if mem[ceil32(return_data.size) + 256] < arg4:
            revert with 0, 'u'
        mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[mem[64] + 36] = arg3
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == bool(mem[_123])
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = arg4
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
        mem[mem[64] + 132] = block.timestamp + 10
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _149 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _151 = mem[_149]
        require mem[_149] <= test266151307()
        require _149 + mem[_149] + 31 < _149 + return_data.size
        _153 = mem[_149 + mem[_149]]
        if mem[_149 + mem[_149]] > test266151307():
            revert with 'NH{q', 65
        if _149 + ceil32(return_data.size) + floor32(mem[_149 + mem[_149]]) + 1 > test266151307() or floor32(mem[_149 + mem[_149]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _149 + ceil32(return_data.size) + floor32(mem[_149 + mem[_149]]) + 1
        mem[_149 + ceil32(return_data.size)] = _153
        require _151 + (32 * _153) + 32 <= return_data.size
        idx = _149 + _151 + 32
        s = _149 + ceil32(return_data.size) + 32
        while idx < _149 + _151 + (32 * _153) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if stor2 != msg.sender:
            revert with 0, 'noTu'
        mem[96] = 2
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = stor0
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
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg4) >> 32
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
        _70 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        require _68 + (32 * _70) + 32 <= return_data.size
        idx = _68 + 224
        s = ceil32(return_data.size) + 224
        while idx < _68 + (32 * _70) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _70:
            revert with 'NH{q', 50
        if mem[ceil32(return_data.size) + 256] < arg4:
            revert with 0, 'u'
        mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[mem[64] + 36] = arg3
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _124 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_124] == bool(mem[_124])
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = arg4
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
        mem[mem[64] + 132] = block.timestamp + 10
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _152 = mem[_150]
        require mem[_150] <= test266151307()
        require _150 + mem[_150] + 31 < _150 + return_data.size
        _154 = mem[_150 + mem[_150]]
        if mem[_150 + mem[_150]] > test266151307():
            revert with 'NH{q', 65
        if _150 + ceil32(return_data.size) + floor32(mem[_150 + mem[_150]]) + 1 > test266151307() or floor32(mem[_150 + mem[_150]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _150 + ceil32(return_data.size) + floor32(mem[_150 + mem[_150]]) + 1
        mem[_150 + ceil32(return_data.size)] = _154
        require _152 + (32 * _154) + 32 <= return_data.size
        idx = _150 + _152 + 32
        s = _150 + ceil32(return_data.size) + 32
        while idx < _150 + _152 + (32 * _154) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}



}
