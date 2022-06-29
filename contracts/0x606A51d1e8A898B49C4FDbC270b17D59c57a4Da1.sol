contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_bcfa65a4(?) payable {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_76bf39a3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_37823795(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getReserves(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function sub_1ebe1f00(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_52c290f7(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (96 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 96
        _22 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_22] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_22 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_22 + 64] = cd[(s + 64)]
        mem[t] = _22
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _23 = mem[64]
    mem[mem[64] + 32] = cd[4]
    mem[mem[64] + 64] = 96
    _24 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    s = mem[64] + 160
    t = 128
    while idx < _24:
        _42 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_42 + 44 len 20]
        mem[s + 64] = mem[_42 + 76 len 20]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[_23 + 96] = cd[68]
    _46 = mem[64]
    mem[mem[64]] = _23 + (96 * _24) + -mem[64] + 128
    mem[64] = _23 + (96 * _24) + 160
    if 0 >= mem[96]:
        revert with 0, 50
    _49 = mem[mem[128] + 32]
    mem[_23 + (96 * _24) + 160] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
    mem[_23 + (96 * _24) + 164] = this.address
    mem[_23 + (96 * _24) + 196] = address(_49)
    mem[_23 + (96 * _24) + 228] = cd[4]
    mem[_23 + (96 * _24) + 260] = 128
    _51 = mem[_46]
    mem[_23 + (96 * _24) + 292] = mem[_46]
    mem[_23 + (96 * _24) + 324 len ceil32(_51)] = mem[_46 + 32 len ceil32(_51)]
    if ceil32(_51) > _51:
        mem[_23 + (96 * _24) + _51 + 324] = 0
    require ext_code.size(0x932864723b12bfd86e8cb9083582185f221de4e)
    call 0x0932864723b12bfd86e8cb9083582185f221de4e.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(_49), cd[4], 128, mem[_23 + (96 * _24) + 292 len ceil32(_51) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg5.length >= 96
    require cd[(arg5 + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 68)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 68)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 97
    mem[96] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    require arg5.length + 36 >= cd[(arg5 + 68)] + (96 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 68
    idx = 0
    s = arg5 + cd[(arg5 + 68)] + 68
    t = 128
    while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        require arg5 + arg5.length + -s + 36 >= 96
        _52 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_52] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_52 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_52 + 64] = cd[(s + 64)]
        mem[t] = _52
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _102 = mem[96]
    idx = 0
    s = 1
    while idx < _102:
        if idx >= mem[96]:
            revert with 0, 50
        _106 = mem[(32 * idx) + 128]
        if s:
            _111 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[mem[64] + 36] = cd[(arg5 + 36)]
            require ext_code.size(address(_111))
            call address(_111).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[(arg5 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_117] == bool(mem[_117])
            _127 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_127 + 32 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_127]:
                revert with 0, 50
            mem[_127 + 32] = mem[_106 + 44 len 20]
            if 1 >= mem[_127]:
                revert with 0, 50
            mem[_127 + 64] = mem[_106 + 76 len 20]
            _135 = mem[_106]
            mem[_127 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_127 + 100] = cd[(arg5 + 36)]
            mem[_127 + 132] = 0
            mem[_127 + 164] = 160
            mem[_127 + 260] = mem[_127]
            s = 0
            t = _127 + 292
            u = _127 + 32
            while s < mem[_127]:
                mem[t] = mem[u + 12 len 20]
                _102 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_127 + 196] = this.address
            mem[_127 + 228] = block.timestamp
            require ext_code.size(address(_135))
            call address(_135).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _127 + (32 * mem[_127]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _201 = mem[_199]
            require mem[_199] <= test266151307()
            require _199 + return_data.size > _199 + mem[_199] + 31
            _203 = mem[_199 + mem[_199]]
            if mem[_199 + mem[_199]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_199 + mem[_199]]) + 1 < 0 or _199 + ceil32(return_data.size) + ceil32(32 * mem[_199 + mem[_199]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _199 + ceil32(return_data.size) + ceil32(32 * mem[_199 + mem[_199]]) + 1
            mem[_199 + ceil32(return_data.size)] = _203
            require _201 + (32 * _203) + 32 <= return_data.size
            t = _199 + _201 + 32
            u = _199 + ceil32(return_data.size) + 32
            s = 0
            while s < _203:
                mem[u] = mem[t]
                _102 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _245 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _203
            s = 0
            t = mem[64] + 64
            u = _199 + ceil32(return_data.size) + 32
            while s < _203:
                mem[t] = mem[u]
                _102 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            emit 0xda45105b: mem[mem[64] len _245 + (32 * _203) + -mem[64] + 64]
            _286 = mem[_106 + 32]
            if mem[_199 + ceil32(return_data.size)] < 1:
                revert with 0, 17
            if mem[_199 + ceil32(return_data.size)] - 1 >= mem[_199 + ceil32(return_data.size)]:
                revert with 0, 50
            _292 = mem[(32 * mem[_199 + ceil32(return_data.size)] - 1) + _199 + ceil32(return_data.size) + 32]
            mem[mem[64]] = mem[_106 + 44 len 20]
            mem[mem[64] + 32] = cd[(arg5 + 36)]
            mem[mem[64] + 64] = address(_286)
            mem[mem[64] + 96] = _292
            emit Swap(mem[mem[64]], cd[(arg5 + 36)], address(_286), _292);
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 == idx:
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                if mem[_199 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_199 + ceil32(return_data.size)] - 1 >= mem[_199 + ceil32(return_data.size)]:
                    revert with 0, 50
                if False and cd[(arg5 + 100)] > 0:
                    revert with 0, 17
                if mem[(32 * mem[_199 + ceil32(return_data.size)] - 1) + _199 + ceil32(return_data.size) + 32] < 0:
                    revert with 0, 17
                if mem[(32 * mem[_199 + ceil32(return_data.size)] - 1) + _199 + ceil32(return_data.size) + 32] <= cd[(arg5 + 36)]:
                    revert with 0, 'This tx does not generate profit'
            if idx == -1:
                revert with 0, 17
            _102 = mem[96]
            idx = idx + 1
            s = 0
            continue 
        _107 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_107))
        staticcall address(_107).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_115]
        _120 = mem[_106 + 32]
        mem[mem[64] + 4] = mem[_106 + 12 len 20]
        mem[mem[64] + 36] = _118
        require ext_code.size(address(_120))
        call address(_120).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _118
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_125] == bool(mem[_125])
        _138 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_138 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_138]:
            revert with 0, 50
        mem[_138 + 32] = mem[_106 + 44 len 20]
        if 1 >= mem[_138]:
            revert with 0, 50
        mem[_138 + 64] = mem[_106 + 76 len 20]
        _145 = mem[_106]
        mem[_138 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_138 + 100] = _118
        mem[_138 + 132] = 0
        mem[_138 + 164] = 160
        mem[_138 + 260] = mem[_138]
        t = 0
        u = _138 + 292
        v = _138 + 32
        while t < mem[_138]:
            mem[u] = mem[v + 12 len 20]
            _102 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[_138 + 196] = this.address
        mem[_138 + 228] = block.timestamp
        require ext_code.size(address(_145))
        call address(_145).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _138 + (32 * mem[_138]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _200 = mem[_198]
        require mem[_198] <= test266151307()
        require _198 + return_data.size > _198 + mem[_198] + 31
        _202 = mem[_198 + mem[_198]]
        if mem[_198 + mem[_198]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_198 + mem[_198]]) + 1 < 0 or _198 + ceil32(return_data.size) + ceil32(32 * mem[_198 + mem[_198]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _198 + ceil32(return_data.size) + ceil32(32 * mem[_198 + mem[_198]]) + 1
        mem[_198 + ceil32(return_data.size)] = _202
        require _200 + (32 * _202) + 32 <= return_data.size
        u = _198 + _200 + 32
        v = _198 + ceil32(return_data.size) + 32
        t = 0
        while t < _202:
            mem[v] = mem[u]
            _102 = mem[96]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        _244 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _202
        t = 0
        u = mem[64] + 64
        v = _198 + ceil32(return_data.size) + 32
        while t < _202:
            mem[u] = mem[v]
            _102 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        emit 0xda45105b: mem[mem[64] len _244 + (32 * _202) + -mem[64] + 64]
        _282 = mem[_106 + 32]
        if mem[_198 + ceil32(return_data.size)] < 1:
            revert with 0, 17
        if mem[_198 + ceil32(return_data.size)] - 1 >= mem[_198 + ceil32(return_data.size)]:
            revert with 0, 50
        _290 = mem[(32 * mem[_198 + ceil32(return_data.size)] - 1) + _198 + ceil32(return_data.size) + 32]
        mem[mem[64]] = mem[_106 + 44 len 20]
        mem[mem[64] + 32] = _118
        mem[mem[64] + 64] = address(_282)
        mem[mem[64] + 96] = _290
        emit Swap(mem[mem[64]], _118, address(_282), _290);
        if mem[96] < 1:
            revert with 0, 17
        if mem[96] - 1 == idx:
            if gas_remaining < gas_remaining:
                revert with 0, 17
            if mem[_198 + ceil32(return_data.size)] < 1:
                revert with 0, 17
            if mem[_198 + ceil32(return_data.size)] - 1 >= mem[_198 + ceil32(return_data.size)]:
                revert with 0, 50
            if False and cd[(arg5 + 100)] > 0:
                revert with 0, 17
            if mem[(32 * mem[_198 + ceil32(return_data.size)] - 1) + _198 + ceil32(return_data.size) + 32] < 0:
                revert with 0, 17
            if mem[(32 * mem[_198 + ceil32(return_data.size)] - 1) + _198 + ceil32(return_data.size) + 32] <= cd[(arg5 + 36)]:
                revert with 0, 'This tx does not generate profit'
        if idx == -1:
            revert with 0, 17
        _102 = mem[96]
        idx = idx + 1
        s = s
        continue 
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = stor0
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, stor0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_110] == bool(mem[_110])
    emit 0xc7b0eb33: address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}

function sub_ba6dc572(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (96 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 96
        _60 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_60] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_60 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_60 + 64] = cd[(s + 64)]
        mem[t] = _60
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require cd[100] == bool(cd[100])
    _118 = mem[96]
    idx = 0
    s = 1
    while idx < _118:
        if idx >= mem[96]:
            revert with 0, 50
        _120 = mem[(32 * idx) + 128]
        if s:
            _124 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(_124))
            call address(_124).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_129] == bool(mem[_129])
            _137 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_137 + 32 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_137]:
                revert with 0, 50
            mem[_137 + 32] = mem[_120 + 44 len 20]
            if 1 >= mem[_137]:
                revert with 0, 50
            mem[_137 + 64] = mem[_120 + 76 len 20]
            _143 = mem[_120]
            mem[_137 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_137 + 100] = cd[4]
            mem[_137 + 132] = 0
            mem[_137 + 164] = 160
            mem[_137 + 260] = mem[_137]
            s = 0
            t = _137 + 292
            u = _137 + 32
            while s < mem[_137]:
                mem[t] = mem[u + 12 len 20]
                _118 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_137 + 196] = this.address
            mem[_137 + 228] = block.timestamp
            require ext_code.size(address(_143))
            call address(_143).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _137 + (32 * mem[_137]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _241 = mem[_239]
            require mem[_239] <= test266151307()
            require _239 + return_data.size > _239 + mem[_239] + 31
            _243 = mem[_239 + mem[_239]]
            if mem[_239 + mem[_239]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_239 + mem[_239]]) + 1 < 0 or _239 + ceil32(return_data.size) + ceil32(32 * mem[_239 + mem[_239]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _239 + ceil32(return_data.size) + ceil32(32 * mem[_239 + mem[_239]]) + 1
            mem[_239 + ceil32(return_data.size)] = _243
            require _241 + (32 * _243) + 32 <= return_data.size
            t = _239 + _241 + 32
            u = _239 + ceil32(return_data.size) + 32
            s = 0
            while s < _243:
                mem[u] = mem[t]
                _118 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _317 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _243
            s = 0
            t = mem[64] + 64
            u = _239 + ceil32(return_data.size) + 32
            while s < _243:
                mem[t] = mem[u]
                _118 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            emit 0xda45105b: mem[mem[64] len _317 + (32 * _243) + -mem[64] + 64]
            _390 = mem[_120 + 32]
            if mem[_239 + ceil32(return_data.size)] < 1:
                revert with 0, 17
            if mem[_239 + ceil32(return_data.size)] - 1 >= mem[_239 + ceil32(return_data.size)]:
                revert with 0, 50
            _396 = mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32]
            mem[mem[64]] = mem[_120 + 44 len 20]
            mem[mem[64] + 32] = cd[4]
            mem[mem[64] + 64] = address(_390)
            mem[mem[64] + 96] = _396
            emit Swap(mem[mem[64]], cd[4], address(_390), _396);
            if mem[96] < 1:
                revert with 0, 17
            if not cd[100]:
                if mem[96] - 1 == idx:
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    if mem[_239 + ceil32(return_data.size)] < 1:
                        revert with 0, 17
                    if mem[_239 + ceil32(return_data.size)] - 1 >= mem[_239 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if False and cd[68] > 0:
                        revert with 0, 17
                    if mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32] < 0:
                        revert with 0, 17
                    if mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32] <= cd[4]:
                        revert with 0, 'This tx does not generate profit'
                if idx == -1:
                    revert with 0, 17
                _118 = mem[96]
                idx = idx + 1
                s = 0
                continue 
            if mem[96] - 1 != idx:
                if mem[96] < 1:
                    revert with 0, 17
                if mem[96] - 1 == idx:
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    if mem[_239 + ceil32(return_data.size)] < 1:
                        revert with 0, 17
                    if mem[_239 + ceil32(return_data.size)] - 1 >= mem[_239 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if False and cd[68] > 0:
                        revert with 0, 17
                    if mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32] < 0:
                        revert with 0, 17
                    if mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32] <= cd[4]:
                        revert with 0, 'This tx does not generate profit'
                if idx == -1:
                    revert with 0, 17
                _118 = mem[96]
                idx = idx + 1
                s = 0
                continue 
            if mem[_239 + ceil32(return_data.size)] < 1:
                revert with 0, 17
            if mem[_239 + ceil32(return_data.size)] - 1 >= mem[_239 + ceil32(return_data.size)]:
                revert with 0, 50
            _413 = mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32]
            if not mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32]:
                _417 = mem[64]
                mem[64] = mem[64] + 64
                mem[_417] = 1
                mem[_417 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _423 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[idx + _423 + 68] = mem[_417 + idx + 32]
                    _118 = mem[96]
                    idx = idx + 32
                    continue 
                mem[_423 + 69] = 0
                revert with memory
                  from mem[64]
                   len _423 + -mem[64] + 100
            s = 0
            idx = mem[(32 * mem[_239 + ceil32(return_data.size)] - 1) + _239 + ceil32(return_data.size) + 32]
            while idx:
                if s == -1:
                    revert with 0, 17
                _118 = mem[96]
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _447 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _413
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[_447]:
                        revert with 0, 50
                    mem[t + _447 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    _118 = mem[96]
                    t = t - 1
                    idx = idx / 10
                    continue 
                _478 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _482 = mem[_447]
                mem[mem[64] + 36] = mem[_447]
                idx = 0
                while idx < _482:
                    mem[idx + _478 + 68] = mem[_447 + idx + 32]
                    _118 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_482) > _482:
                    mem[_478 + _482 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_482) + _478 + -mem[64] + 68
            mem[_447 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _413
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not t:
                    revert with 0, 17
                if t - 1 >= mem[_447]:
                    revert with 0, 50
                mem[t + _447 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                _118 = mem[96]
                t = t - 1
                idx = idx / 10
                continue 
            _479 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _483 = mem[_447]
            mem[mem[64] + 36] = mem[_447]
            idx = 0
            while idx < _483:
                mem[idx + _479 + 68] = mem[_447 + idx + 32]
                _118 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_483) > _483:
                mem[_479 + _483 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_483) + _479 + -mem[64] + 68
        _121 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_121))
        staticcall address(_121).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _130 = mem[_128]
        _132 = mem[_120 + 32]
        mem[mem[64] + 4] = mem[_120 + 12 len 20]
        mem[mem[64] + 36] = _130
        require ext_code.size(address(_132))
        call address(_132).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_136] == bool(mem[_136])
        _146 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_146 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_146]:
            revert with 0, 50
        mem[_146 + 32] = mem[_120 + 44 len 20]
        if 1 >= mem[_146]:
            revert with 0, 50
        mem[_146 + 64] = mem[_120 + 76 len 20]
        _153 = mem[_120]
        mem[_146 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_146 + 100] = _130
        mem[_146 + 132] = 0
        mem[_146 + 164] = 160
        mem[_146 + 260] = mem[_146]
        t = 0
        u = _146 + 292
        v = _146 + 32
        while t < mem[_146]:
            mem[u] = mem[v + 12 len 20]
            _118 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[_146 + 196] = this.address
        mem[_146 + 228] = block.timestamp
        require ext_code.size(address(_153))
        call address(_153).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _146 + (32 * mem[_146]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _240 = mem[_238]
        require mem[_238] <= test266151307()
        require _238 + return_data.size > _238 + mem[_238] + 31
        _242 = mem[_238 + mem[_238]]
        if mem[_238 + mem[_238]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_238 + mem[_238]]) + 1 < 0 or _238 + ceil32(return_data.size) + ceil32(32 * mem[_238 + mem[_238]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _238 + ceil32(return_data.size) + ceil32(32 * mem[_238 + mem[_238]]) + 1
        mem[_238 + ceil32(return_data.size)] = _242
        require _240 + (32 * _242) + 32 <= return_data.size
        u = _238 + _240 + 32
        v = _238 + ceil32(return_data.size) + 32
        t = 0
        while t < _242:
            mem[v] = mem[u]
            _118 = mem[96]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _242
        t = 0
        u = mem[64] + 64
        v = _238 + ceil32(return_data.size) + 32
        while t < _242:
            mem[u] = mem[v]
            _118 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        emit 0xda45105b: mem[mem[64] len _316 + (32 * _242) + -mem[64] + 64]
        _386 = mem[_120 + 32]
        if mem[_238 + ceil32(return_data.size)] < 1:
            revert with 0, 17
        if mem[_238 + ceil32(return_data.size)] - 1 >= mem[_238 + ceil32(return_data.size)]:
            revert with 0, 50
        _394 = mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32]
        mem[mem[64]] = mem[_120 + 44 len 20]
        mem[mem[64] + 32] = _130
        mem[mem[64] + 64] = address(_386)
        mem[mem[64] + 96] = _394
        emit Swap(mem[mem[64]], _130, address(_386), _394);
        if mem[96] < 1:
            revert with 0, 17
        if not cd[100]:
            if mem[96] - 1 == idx:
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                if mem[_238 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_238 + ceil32(return_data.size)] - 1 >= mem[_238 + ceil32(return_data.size)]:
                    revert with 0, 50
                if False and cd[68] > 0:
                    revert with 0, 17
                if mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32] < 0:
                    revert with 0, 17
                if mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32] <= cd[4]:
                    revert with 0, 'This tx does not generate profit'
            if idx == -1:
                revert with 0, 17
            _118 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if mem[96] - 1 != idx:
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 == idx:
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                if mem[_238 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_238 + ceil32(return_data.size)] - 1 >= mem[_238 + ceil32(return_data.size)]:
                    revert with 0, 50
                if False and cd[68] > 0:
                    revert with 0, 17
                if mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32] < 0:
                    revert with 0, 17
                if mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32] <= cd[4]:
                    revert with 0, 'This tx does not generate profit'
            if idx == -1:
                revert with 0, 17
            _118 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if mem[_238 + ceil32(return_data.size)] < 1:
            revert with 0, 17
        if mem[_238 + ceil32(return_data.size)] - 1 >= mem[_238 + ceil32(return_data.size)]:
            revert with 0, 50
        _412 = mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32]
        if not mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32]:
            _415 = mem[64]
            mem[64] = mem[64] + 64
            mem[_415] = 1
            mem[_415 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _420 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 1
            idx = 0
            while idx < 1:
                mem[idx + _420 + 68] = mem[_415 + idx + 32]
                _118 = mem[96]
                idx = idx + 32
                continue 
            mem[_420 + 69] = 0
            revert with memory
              from mem[64]
               len _420 + -mem[64] + 100
        s = 0
        idx = mem[(32 * mem[_238 + ceil32(return_data.size)] - 1) + _238 + ceil32(return_data.size) + 32]
        while idx:
            if s == -1:
                revert with 0, 17
            _118 = mem[96]
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _446 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _412
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not t:
                    revert with 0, 17
                if t - 1 >= mem[_446]:
                    revert with 0, 50
                mem[t + _446 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                _118 = mem[96]
                t = t - 1
                idx = idx / 10
                continue 
            _476 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _480 = mem[_446]
            mem[mem[64] + 36] = mem[_446]
            idx = 0
            while idx < _480:
                mem[idx + _476 + 68] = mem[_446 + idx + 32]
                _118 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_480) > _480:
                mem[_476 + _480 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_480) + _476 + -mem[64] + 68
        mem[_446 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _412
        while idx:
            if 48 > !(idx % 10):
                revert with 0, 17
            if not t:
                revert with 0, 17
            if t - 1 >= mem[_446]:
                revert with 0, 50
            mem[t + _446 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            _118 = mem[96]
            t = t - 1
            idx = idx / 10
            continue 
        _477 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _481 = mem[_446]
        mem[mem[64] + 36] = mem[_446]
        idx = 0
        while idx < _481:
            mem[idx + _477 + 68] = mem[_446 + idx + 32]
            _118 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(_481) > _481:
            mem[_477 + _481 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_481) + _477 + -mem[64] + 68
}

function sub_5ad646a1(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (96 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 96
        _75 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_75] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_75 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_75 + 64] = cd[(s + 64)]
        mem[t] = _75
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require cd[100] == bool(cd[100])
    if cd[4] != msg.value:
        revert with 0, 'You have to check the value'
    if 0 >= mem[96]:
        revert with 0, 50
    if mem[mem[128] + 44 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        revert with 0, 'If you execute payable, the first token in should be WBNB'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _87 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_87]
    emit Log(mem[mem[64]]);
    _148 = mem[96]
    idx = 0
    s = 1
    while idx < _148:
        if idx >= mem[96]:
            revert with 0, 50
        _150 = mem[(32 * idx) + 128]
        if s:
            _154 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(_154))
            call address(_154).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_159] == bool(mem[_159])
            _167 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_167 + 32 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_167]:
                revert with 0, 50
            mem[_167 + 32] = mem[_150 + 44 len 20]
            if 1 >= mem[_167]:
                revert with 0, 50
            mem[_167 + 64] = mem[_150 + 76 len 20]
            _173 = mem[_150]
            mem[_167 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_167 + 100] = cd[4]
            mem[_167 + 132] = 0
            mem[_167 + 164] = 160
            mem[_167 + 260] = mem[_167]
            s = 0
            t = _167 + 292
            u = _167 + 32
            while s < mem[_167]:
                mem[t] = mem[u + 12 len 20]
                _148 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_167 + 196] = this.address
            mem[_167 + 228] = block.timestamp
            require ext_code.size(address(_173))
            call address(_173).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _167 + (32 * mem[_167]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _271 = mem[_269]
            require mem[_269] <= test266151307()
            require _269 + return_data.size > _269 + mem[_269] + 31
            _273 = mem[_269 + mem[_269]]
            if mem[_269 + mem[_269]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_269 + mem[_269]]) + 1 < 0 or _269 + ceil32(return_data.size) + ceil32(32 * mem[_269 + mem[_269]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _269 + ceil32(return_data.size) + ceil32(32 * mem[_269 + mem[_269]]) + 1
            mem[_269 + ceil32(return_data.size)] = _273
            require _271 + (32 * _273) + 32 <= return_data.size
            t = _269 + _271 + 32
            u = _269 + ceil32(return_data.size) + 32
            s = 0
            while s < _273:
                mem[u] = mem[t]
                _148 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _347 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _273
            s = 0
            t = mem[64] + 64
            u = _269 + ceil32(return_data.size) + 32
            while s < _273:
                mem[t] = mem[u]
                _148 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            emit 0xda45105b: mem[mem[64] len _347 + (32 * _273) + -mem[64] + 64]
            _420 = mem[_150 + 32]
            if mem[_269 + ceil32(return_data.size)] < 1:
                revert with 0, 17
            if mem[_269 + ceil32(return_data.size)] - 1 >= mem[_269 + ceil32(return_data.size)]:
                revert with 0, 50
            _426 = mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32]
            mem[mem[64]] = mem[_150 + 44 len 20]
            mem[mem[64] + 32] = cd[4]
            mem[mem[64] + 64] = address(_420)
            mem[mem[64] + 96] = _426
            emit Swap(mem[mem[64]], cd[4], address(_420), _426);
            if mem[96] < 1:
                revert with 0, 17
            if not cd[100]:
                if mem[96] - 1 == idx:
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    if mem[_269 + ceil32(return_data.size)] < 1:
                        revert with 0, 17
                    if mem[_269 + ceil32(return_data.size)] - 1 >= mem[_269 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if False and cd[68] > 0:
                        revert with 0, 17
                    if mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32] < 0:
                        revert with 0, 17
                    if mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32] <= cd[4]:
                        revert with 0, 'This tx does not generate profit'
                if idx == -1:
                    revert with 0, 17
                _148 = mem[96]
                idx = idx + 1
                s = 0
                continue 
            if mem[96] - 1 != idx:
                if mem[96] < 1:
                    revert with 0, 17
                if mem[96] - 1 == idx:
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    if mem[_269 + ceil32(return_data.size)] < 1:
                        revert with 0, 17
                    if mem[_269 + ceil32(return_data.size)] - 1 >= mem[_269 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if False and cd[68] > 0:
                        revert with 0, 17
                    if mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32] < 0:
                        revert with 0, 17
                    if mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32] <= cd[4]:
                        revert with 0, 'This tx does not generate profit'
                if idx == -1:
                    revert with 0, 17
                _148 = mem[96]
                idx = idx + 1
                s = 0
                continue 
            if mem[_269 + ceil32(return_data.size)] < 1:
                revert with 0, 17
            if mem[_269 + ceil32(return_data.size)] - 1 >= mem[_269 + ceil32(return_data.size)]:
                revert with 0, 50
            _443 = mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32]
            if not mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32]:
                _447 = mem[64]
                mem[64] = mem[64] + 64
                mem[_447] = 1
                mem[_447 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _453 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[idx + _453 + 68] = mem[_447 + idx + 32]
                    _148 = mem[96]
                    idx = idx + 32
                    continue 
                mem[_453 + 69] = 0
                revert with memory
                  from mem[64]
                   len _453 + -mem[64] + 100
            s = 0
            idx = mem[(32 * mem[_269 + ceil32(return_data.size)] - 1) + _269 + ceil32(return_data.size) + 32]
            while idx:
                if s == -1:
                    revert with 0, 17
                _148 = mem[96]
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _477 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _443
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[_477]:
                        revert with 0, 50
                    mem[t + _477 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    _148 = mem[96]
                    t = t - 1
                    idx = idx / 10
                    continue 
                _508 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _512 = mem[_477]
                mem[mem[64] + 36] = mem[_477]
                idx = 0
                while idx < _512:
                    mem[idx + _508 + 68] = mem[_477 + idx + 32]
                    _148 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_512) > _512:
                    mem[_508 + _512 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_512) + _508 + -mem[64] + 68
            mem[_477 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _443
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not t:
                    revert with 0, 17
                if t - 1 >= mem[_477]:
                    revert with 0, 50
                mem[t + _477 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                _148 = mem[96]
                t = t - 1
                idx = idx / 10
                continue 
            _509 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _513 = mem[_477]
            mem[mem[64] + 36] = mem[_477]
            idx = 0
            while idx < _513:
                mem[idx + _509 + 68] = mem[_477 + idx + 32]
                _148 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_513) > _513:
                mem[_509 + _513 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_513) + _509 + -mem[64] + 68
        _151 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_151))
        staticcall address(_151).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _160 = mem[_158]
        _162 = mem[_150 + 32]
        mem[mem[64] + 4] = mem[_150 + 12 len 20]
        mem[mem[64] + 36] = _160
        require ext_code.size(address(_162))
        call address(_162).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _160
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_166] == bool(mem[_166])
        _176 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_176 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_176]:
            revert with 0, 50
        mem[_176 + 32] = mem[_150 + 44 len 20]
        if 1 >= mem[_176]:
            revert with 0, 50
        mem[_176 + 64] = mem[_150 + 76 len 20]
        _183 = mem[_150]
        mem[_176 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_176 + 100] = _160
        mem[_176 + 132] = 0
        mem[_176 + 164] = 160
        mem[_176 + 260] = mem[_176]
        t = 0
        u = _176 + 292
        v = _176 + 32
        while t < mem[_176]:
            mem[u] = mem[v + 12 len 20]
            _148 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[_176 + 196] = this.address
        mem[_176 + 228] = block.timestamp
        require ext_code.size(address(_183))
        call address(_183).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _176 + (32 * mem[_176]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _270 = mem[_268]
        require mem[_268] <= test266151307()
        require _268 + return_data.size > _268 + mem[_268] + 31
        _272 = mem[_268 + mem[_268]]
        if mem[_268 + mem[_268]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_268 + mem[_268]]) + 1 < 0 or _268 + ceil32(return_data.size) + ceil32(32 * mem[_268 + mem[_268]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _268 + ceil32(return_data.size) + ceil32(32 * mem[_268 + mem[_268]]) + 1
        mem[_268 + ceil32(return_data.size)] = _272
        require _270 + (32 * _272) + 32 <= return_data.size
        u = _268 + _270 + 32
        v = _268 + ceil32(return_data.size) + 32
        t = 0
        while t < _272:
            mem[v] = mem[u]
            _148 = mem[96]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        _346 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _272
        t = 0
        u = mem[64] + 64
        v = _268 + ceil32(return_data.size) + 32
        while t < _272:
            mem[u] = mem[v]
            _148 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        emit 0xda45105b: mem[mem[64] len _346 + (32 * _272) + -mem[64] + 64]
        _416 = mem[_150 + 32]
        if mem[_268 + ceil32(return_data.size)] < 1:
            revert with 0, 17
        if mem[_268 + ceil32(return_data.size)] - 1 >= mem[_268 + ceil32(return_data.size)]:
            revert with 0, 50
        _424 = mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32]
        mem[mem[64]] = mem[_150 + 44 len 20]
        mem[mem[64] + 32] = _160
        mem[mem[64] + 64] = address(_416)
        mem[mem[64] + 96] = _424
        emit Swap(mem[mem[64]], _160, address(_416), _424);
        if mem[96] < 1:
            revert with 0, 17
        if not cd[100]:
            if mem[96] - 1 == idx:
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                if mem[_268 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_268 + ceil32(return_data.size)] - 1 >= mem[_268 + ceil32(return_data.size)]:
                    revert with 0, 50
                if False and cd[68] > 0:
                    revert with 0, 17
                if mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32] < 0:
                    revert with 0, 17
                if mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32] <= cd[4]:
                    revert with 0, 'This tx does not generate profit'
            if idx == -1:
                revert with 0, 17
            _148 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if mem[96] - 1 != idx:
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 == idx:
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                if mem[_268 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_268 + ceil32(return_data.size)] - 1 >= mem[_268 + ceil32(return_data.size)]:
                    revert with 0, 50
                if False and cd[68] > 0:
                    revert with 0, 17
                if mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32] < 0:
                    revert with 0, 17
                if mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32] <= cd[4]:
                    revert with 0, 'This tx does not generate profit'
            if idx == -1:
                revert with 0, 17
            _148 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if mem[_268 + ceil32(return_data.size)] < 1:
            revert with 0, 17
        if mem[_268 + ceil32(return_data.size)] - 1 >= mem[_268 + ceil32(return_data.size)]:
            revert with 0, 50
        _442 = mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32]
        if not mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32]:
            _445 = mem[64]
            mem[64] = mem[64] + 64
            mem[_445] = 1
            mem[_445 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _450 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 1
            idx = 0
            while idx < 1:
                mem[idx + _450 + 68] = mem[_445 + idx + 32]
                _148 = mem[96]
                idx = idx + 32
                continue 
            mem[_450 + 69] = 0
            revert with memory
              from mem[64]
               len _450 + -mem[64] + 100
        s = 0
        idx = mem[(32 * mem[_268 + ceil32(return_data.size)] - 1) + _268 + ceil32(return_data.size) + 32]
        while idx:
            if s == -1:
                revert with 0, 17
            _148 = mem[96]
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _476 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _442
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not t:
                    revert with 0, 17
                if t - 1 >= mem[_476]:
                    revert with 0, 50
                mem[t + _476 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                _148 = mem[96]
                t = t - 1
                idx = idx / 10
                continue 
            _506 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _510 = mem[_476]
            mem[mem[64] + 36] = mem[_476]
            idx = 0
            while idx < _510:
                mem[idx + _506 + 68] = mem[_476 + idx + 32]
                _148 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_510) > _510:
                mem[_506 + _510 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_510) + _506 + -mem[64] + 68
        mem[_476 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _442
        while idx:
            if 48 > !(idx % 10):
                revert with 0, 17
            if not t:
                revert with 0, 17
            if t - 1 >= mem[_476]:
                revert with 0, 50
            mem[t + _476 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            _148 = mem[96]
            t = t - 1
            idx = idx / 10
            continue 
        _507 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _511 = mem[_476]
        mem[mem[64] + 36] = mem[_476]
        idx = 0
        while idx < _511:
            mem[idx + _507 + 68] = mem[_476 + idx + 32]
            _148 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(_511) > _511:
            mem[_507 + _511 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_511) + _507 + -mem[64] + 68
}



}
