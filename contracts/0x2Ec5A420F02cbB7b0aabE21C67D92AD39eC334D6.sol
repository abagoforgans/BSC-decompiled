contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4693df4a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if msg.value <= 0:
        mem[floor32(('cd', 36).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 64
        mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 197
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _182 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
        _184 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
        if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
        require _182 + (32 * _184) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + _182 + 129
        t = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
        while idx < _184:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _184:
            revert with 'NH{q', 50
        _280 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 161]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _284 = mem[128]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = cd[4]
        require ext_code.size(address(_284))
        call address(_284).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), cd[4]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _290 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_290] == bool(mem[_290])
        if block.timestamp > -7:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 6
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 6, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _376 = mem[_374]
        require mem[_374] <= test266151307()
        require _374 + mem[_374] + 31 < _374 + return_data.size
        _378 = mem[_374 + mem[_374]]
        if mem[_374 + mem[_374]] > test266151307():
            revert with 'NH{q', 65
        if _374 + ceil32(return_data.size) + floor32(mem[_374 + mem[_374]]) + 1 > test266151307() or floor32(mem[_374 + mem[_374]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _374 + ceil32(return_data.size) + floor32(mem[_374 + mem[_374]]) + 1
        mem[_374 + ceil32(return_data.size)] = _378
        require _376 + (32 * _378) + 32 <= return_data.size
        idx = 0
        s = _374 + _376 + 32
        t = _374 + ceil32(return_data.size) + 32
        while idx < _378:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _378:
            revert with 'NH{q', 50
        _464 = mem[_374 + ceil32(return_data.size) + 64]
        _466 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_466 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_466]:
            revert with 'NH{q', 50
        mem[_466 + 32] = mem[172 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_466]:
            revert with 'NH{q', 50
        mem[_466 + 64] = mem[140 len 20]
        mem[_466 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_466 + 100] = _464
        mem[_466 + 132] = 64
        mem[_466 + 164] = mem[_466]
        idx = 0
        s = _466 + 32
        t = _466 + 196
        while idx < mem[_466]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _466 + (32 * mem[_466]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _544 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _546 = mem[_544]
        require mem[_544] <= test266151307()
        require _544 + mem[_544] + 31 < _544 + return_data.size
        _548 = mem[_544 + mem[_544]]
        if mem[_544 + mem[_544]] > test266151307():
            revert with 'NH{q', 65
        if _544 + ceil32(return_data.size) + floor32(mem[_544 + mem[_544]]) + 1 > test266151307() or floor32(mem[_544 + mem[_544]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _544 + ceil32(return_data.size) + floor32(mem[_544 + mem[_544]]) + 1
        mem[_544 + ceil32(return_data.size)] = _548
        require _546 + (32 * _548) + 32 <= return_data.size
        idx = 0
        s = _544 + _546 + 32
        t = _544 + ceil32(return_data.size) + 32
        while idx < _548:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _548:
            revert with 'NH{q', 50
        _600 = mem[_544 + ceil32(return_data.size) + 64]
        if 0 >= mem[_466]:
            revert with 'NH{q', 50
        _604 = mem[_466 + 32]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _464
        require ext_code.size(address(_604))
        call address(_604).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _464
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _610 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_610] == bool(mem[_610])
        if block.timestamp > -7:
            revert with 'NH{q', 17
        _614 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _464
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _616 = mem[_466]
        mem[mem[64] + 164] = mem[_466]
        idx = 0
        s = _466 + 32
        t = mem[64] + 196
        while idx < _616:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_614 + 100] = this.address
        mem[_614 + 132] = block.timestamp + 6
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _614 + (32 * _616) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _644 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _646 = mem[_644]
        require mem[_644] <= test266151307()
        require _644 + mem[_644] + 31 < _644 + return_data.size
        _648 = mem[_644 + mem[_644]]
        if mem[_644 + mem[_644]] > test266151307():
            revert with 'NH{q', 65
        if _644 + ceil32(return_data.size) + floor32(mem[_644 + mem[_644]]) + 1 > test266151307() or floor32(mem[_644 + mem[_644]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _644 + ceil32(return_data.size) + floor32(mem[_644 + mem[_644]]) + 1
        mem[_644 + ceil32(return_data.size)] = _648
        require _646 + (32 * _648) + 32 <= return_data.size
        idx = 0
        s = _644 + _646 + 32
        t = _644 + ceil32(return_data.size) + 32
        while idx < _648:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _648:
            revert with 'NH{q', 50
        return _280, _464, _600, mem[_644 + ceil32(return_data.size) + 64]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].deposit() with:
       value msg.value wei
         gas 50000 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    mem[floor32(('cd', 36).length) + 133] = 64
    mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 197
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _183 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
    _185 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _183 + (32 * _185) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + _183 + 129
    t = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
    while idx < _185:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _185:
        revert with 'NH{q', 50
    _282 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 161]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _286 = mem[128]
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(_286))
    call address(_286).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _291 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_291] == bool(mem[_291])
    if block.timestamp > -7:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 6
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp + 6, ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _375 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _377 = mem[_375]
    require mem[_375] <= test266151307()
    require _375 + mem[_375] + 31 < _375 + return_data.size
    _379 = mem[_375 + mem[_375]]
    if mem[_375 + mem[_375]] > test266151307():
        revert with 'NH{q', 65
    if _375 + ceil32(return_data.size) + floor32(mem[_375 + mem[_375]]) + 1 > test266151307() or floor32(mem[_375 + mem[_375]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _375 + ceil32(return_data.size) + floor32(mem[_375 + mem[_375]]) + 1
    mem[_375 + ceil32(return_data.size)] = _379
    require _377 + (32 * _379) + 32 <= return_data.size
    idx = 0
    s = _375 + _377 + 32
    t = _375 + ceil32(return_data.size) + 32
    while idx < _379:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _379:
        revert with 'NH{q', 50
    _465 = mem[_375 + ceil32(return_data.size) + 64]
    _467 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_467 + 32 len 64] = call.data[calldata.size len 64]
    if 1 >= mem[96]:
        revert with 'NH{q', 50
    if 0 >= mem[_467]:
        revert with 'NH{q', 50
    mem[_467 + 32] = mem[172 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[_467]:
        revert with 'NH{q', 50
    mem[_467 + 64] = mem[140 len 20]
    mem[_467 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_467 + 100] = _465
    mem[_467 + 132] = 64
    mem[_467 + 164] = mem[_467]
    idx = 0
    s = _467 + 32
    t = _467 + 196
    while idx < mem[_467]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _467 + (32 * mem[_467]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _545 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _547 = mem[_545]
    require mem[_545] <= test266151307()
    require _545 + mem[_545] + 31 < _545 + return_data.size
    _549 = mem[_545 + mem[_545]]
    if mem[_545 + mem[_545]] > test266151307():
        revert with 'NH{q', 65
    if _545 + ceil32(return_data.size) + floor32(mem[_545 + mem[_545]]) + 1 > test266151307() or floor32(mem[_545 + mem[_545]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _545 + ceil32(return_data.size) + floor32(mem[_545 + mem[_545]]) + 1
    mem[_545 + ceil32(return_data.size)] = _549
    require _547 + (32 * _549) + 32 <= return_data.size
    idx = 0
    s = _545 + _547 + 32
    t = _545 + ceil32(return_data.size) + 32
    while idx < _549:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _549:
        revert with 'NH{q', 50
    _602 = mem[_545 + ceil32(return_data.size) + 64]
    if 0 >= mem[_467]:
        revert with 'NH{q', 50
    _606 = mem[_467 + 32]
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = _465
    require ext_code.size(address(_606))
    call address(_606).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), _465
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _611 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_611] == bool(mem[_611])
    if block.timestamp > -7:
        revert with 'NH{q', 17
    _615 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _465
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _617 = mem[_467]
    mem[mem[64] + 164] = mem[_467]
    idx = 0
    s = _467 + 32
    t = mem[64] + 196
    while idx < _617:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_615 + 100] = this.address
    mem[_615 + 132] = block.timestamp + 6
    require ext_code.size(address(cd[68]))
    call address(cd[68]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _615 + (32 * _617) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _645 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _647 = mem[_645]
    require mem[_645] <= test266151307()
    require _645 + mem[_645] + 31 < _645 + return_data.size
    _649 = mem[_645 + mem[_645]]
    if mem[_645 + mem[_645]] > test266151307():
        revert with 'NH{q', 65
    if _645 + ceil32(return_data.size) + floor32(mem[_645 + mem[_645]]) + 1 > test266151307() or floor32(mem[_645 + mem[_645]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _645 + ceil32(return_data.size) + floor32(mem[_645 + mem[_645]]) + 1
    mem[_645 + ceil32(return_data.size)] = _649
    require _647 + (32 * _649) + 32 <= return_data.size
    idx = 0
    s = _645 + _647 + 32
    t = _645 + ceil32(return_data.size) + 32
    while idx < _649:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _649:
        revert with 'NH{q', 50
    return _282, _465, _602, mem[_645 + ceil32(return_data.size) + 64]
}



}
