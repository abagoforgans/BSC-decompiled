contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_de7a2242(?) payable {
  stop
}

function sub_a48a9b85(?) {
    if stor0 != msg.sender:
        revert with 0, 'No Permisson'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4cf8e050(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'No Permisson'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b4e592ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_af7a6d65(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'No Permisson'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_774ce9b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'No Permisson'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_91be63ad(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if stor0 != msg.sender:
        revert with 0, 'No Permisson'
    mem[100] = this.address
    mem[132] = address(arg1)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0x22ea0179500526edb610f148ec0c614155678491902d5fffffffffffffffffff:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg2)
        mem[ceil32(return_data.size) + 160] = address(arg3)
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg4
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 388
        t = ceil32(return_data.size) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp + 60
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _49 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223
        _51 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 < 0 or (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = _51
        require return_data.size >= _49 + (32 * _51) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _51] = mem[ceil32(return_data.size) + _49 + 224 len 32 * _51]
        if 1 >= _51:
            revert with 0, 50
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    else:
        mem[ceil32(return_data.size) + 100] = address(arg1)
        mem[ceil32(return_data.size) + 132] = -1
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg4
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 388
        t = (2 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _50 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223
        _52 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 < 0 or (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = _52
        require return_data.size >= _50 + (32 * _52) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _52] = mem[(2 * ceil32(return_data.size)) + _50 + 224 len 32 * _52]
        if 1 >= _52:
            revert with 0, 50
        mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_2186e529(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (128 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _57 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_57] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_57 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_57 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_57 + 96] = cd[(s + 96)]
        mem[t] = _57
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        revert with 0, 'No Permisson'
    _112 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _112:
        if idx >= mem[96]:
            revert with 0, 50
        _116 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 0, 50
        _120 = mem[mem[(32 * idx) + 128] + 64]
        if idx >= mem[96]:
            revert with 0, 50
        _124 = mem[mem[(32 * idx) + 128] + 96]
        if stor0 != msg.sender:
            revert with 0, 'No Permisson'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_116)
        require ext_code.size(address(_120))
        staticcall address(_120).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_116)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_130] >= 0x22ea0179500526edb610f148ec0c614155678491902d5fffffffffffffffffff:
            _132 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_132]:
                revert with 0, 50
            mem[_132 + 32] = address(_120)
            if 1 >= mem[_132]:
                revert with 0, 50
            mem[_132 + 64] = address(_124)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_132 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_132 + 100] = s
            mem[_132 + 132] = 0
            mem[_132 + 164] = 160
            mem[_132 + 260] = mem[_132]
            s = 0
            t = _132 + 292
            u = _132 + 32
            while s < mem[_132]:
                mem[t] = mem[u + 12 len 20]
                _112 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_132 + 196] = this.address
            mem[_132 + 228] = block.timestamp + 60
            require ext_code.size(address(_116))
            call address(_116).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _132 + (32 * mem[_132]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _170 = mem[_168]
            require mem[_168] <= test266151307()
            require _168 + return_data.size > _168 + mem[_168] + 31
            _172 = mem[_168 + mem[_168]]
            if mem[_168 + mem[_168]] > test266151307():
                revert with 0, 65
            if (32 * mem[_168 + mem[_168]]) + 32 < 0 or _168 + ceil32(return_data.size) + (32 * mem[_168 + mem[_168]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _168 + ceil32(return_data.size) + (32 * mem[_168 + mem[_168]]) + 32
            mem[_168 + ceil32(return_data.size)] = _172
            require return_data.size >= _170 + (32 * _172) + 32
            t = _168 + _170 + 32
            u = _168 + ceil32(return_data.size) + 32
            s = 0
            while s < _172:
                mem[u] = mem[t]
                _112 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if 1 >= _172:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            _112 = mem[96]
            idx = idx + 1
            s = mem[_168 + ceil32(return_data.size) + 64]
            continue 
        mem[mem[64] + 4] = address(_116)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_120))
        call address(_120).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_116), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_137] == bool(mem[_137])
        _143 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_143]:
            revert with 0, 50
        mem[_143 + 32] = address(_120)
        if 1 >= mem[_143]:
            revert with 0, 50
        mem[_143 + 64] = address(_124)
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[_143 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_143 + 100] = s
        mem[_143 + 132] = 0
        mem[_143 + 164] = 160
        mem[_143 + 260] = mem[_143]
        s = 0
        t = _143 + 292
        u = _143 + 32
        while s < mem[_143]:
            mem[t] = mem[u + 12 len 20]
            _112 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_143 + 196] = this.address
        mem[_143 + 228] = block.timestamp + 60
        require ext_code.size(address(_116))
        call address(_116).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _143 + (32 * mem[_143]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _171 = mem[_169]
        require mem[_169] <= test266151307()
        require _169 + return_data.size > _169 + mem[_169] + 31
        _173 = mem[_169 + mem[_169]]
        if mem[_169 + mem[_169]] > test266151307():
            revert with 0, 65
        if (32 * mem[_169 + mem[_169]]) + 32 < 0 or _169 + ceil32(return_data.size) + (32 * mem[_169 + mem[_169]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _169 + ceil32(return_data.size) + (32 * mem[_169 + mem[_169]]) + 32
        mem[_169 + ceil32(return_data.size)] = _173
        require return_data.size >= _171 + (32 * _173) + 32
        t = _169 + _171 + 32
        u = _169 + ceil32(return_data.size) + 32
        s = 0
        while s < _173:
            mem[u] = mem[t]
            _112 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 1 >= _173:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        _112 = mem[96]
        idx = idx + 1
        s = mem[_169 + ceil32(return_data.size) + 64]
        continue 
    if s < cd[68]:
        revert with 0, 'less out'
    return s
}



}
