contract main {




// =====================  Runtime code  =====================


#
#  - sub_3e503088(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdrawBNB() {
    if stor0 != msg.sender:
        revert with 0, 'O'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'O'
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fdb610cd(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x24303f39 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x24303f39 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x24303f39 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function definixCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x24303f39 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x24303f39 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'O'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_24303f39(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ('cd', 100)[1] == address(('cd', 100)[1])
    require ('cd', 100)[2] == ('cd', 100)[2]
    require ext_code.size(address(('cd', 100)[1]))
    call address(('cd', 100)[1]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[0]), ('cd', 100)[2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_73ddc175(?) {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100 > test266151307() or floor32(('cd', 100).length) + 100 < 99:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101 > test266151307() or floor32(('cd', 132).length) + 101 < 100:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132
    while idx < ('cd', 132).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 102 > test266151307() or floor32(('cd', 164).length) + 102 < 101:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 102
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133
    while idx < ('cd', 164).length:
        require cd[s] <= test266151307()
        require cd[164] + cd[s] + 67 < calldata.size
        if cd[(cd[164] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _261 = mem[64]
        if mem[64] + floor32(cd[(cd[164] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[164] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[164] + cd[s] + 36)]) + 1
        mem[_261] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + (32 * cd[(cd[164] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[164] + cd[s] + 68
        w = _261 + 32
        while u < cd[(cd[164] + cd[s] + 36)]:
            require cd[v] == cd[v]
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _261
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _253 = mem[96]
    idx = 0
    while idx < _253:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _295 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _297 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
            revert with 'NH{q', 50
        _299 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100]:
            revert with 'NH{q', 50
        _301 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101]:
            revert with 'NH{q', 50
        _303 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133]
        if idx:
            if _253 < 1:
                revert with 'NH{q', 17
            if idx >= _253 - 1:
                _305 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if 0 >= mem[_303]:
                    revert with 'NH{q', 50
                _307 = mem[_303 + 32]
                if 1 >= mem[_303]:
                    revert with 'NH{q', 50
                _310 = mem[_303 + 64]
                mem[_305 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_305 + 36] = _307
                mem[_305 + 68] = _310
                mem[_305 + 100] = this.address
                mem[_305 + 132] = 128
                mem[_305 + 164] = mem[_305]
                s = 0
                while s < mem[_305]:
                    mem[_305 + s + 196] = mem[_305 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_305]) > mem[_305]:
                    mem[_305 + mem[_305] + 196] = 0
                require ext_code.size(address(_295))
                call address(_295).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _307, _310, address(this.address), Array(len=mem[_305], data=mem[_305 + 196 len ceil32(mem[_305])])
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if 2 >= mem[mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133]]:
                    revert with 'NH{q', 50
                _316 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133] + 96]
                _317 = mem[64]
                mem[mem[64] + 32] = mem[(32 * idx + 1) + floor32(('cd', 4).length) + 141 len 20]
                mem[mem[64] + 64] = address(_299)
                mem[mem[64] + 96] = _316
                _321 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                if 0 >= mem[_303]:
                    revert with 'NH{q', 50
                _325 = mem[_303 + 32]
                if 1 >= mem[_303]:
                    revert with 'NH{q', 50
                _329 = mem[_303 + 64]
                mem[_317 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_317 + 132] = _325
                mem[_317 + 164] = _329
                mem[_317 + 196] = this.address
                mem[_317 + 228] = 128
                _340 = mem[_321]
                mem[_317 + 260] = mem[_321]
                s = 0
                while s < _340:
                    mem[_317 + s + 292] = mem[_321 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_340) > _340:
                    mem[_317 + _340 + 292] = 0
                require ext_code.size(address(_295))
                call address(_295).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _325, _329, address(this.address), 128, mem[_317 + 260 len ceil32(_340) + 32]
        else:
            mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
            mem[mem[64] + 36] = _301
            require ext_code.size(address(_297))
            call address(_297).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _301
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_312] == bool(mem[_312])
            if _253 < 1:
                revert with 'NH{q', 17
            if idx >= _253 - 1:
                _320 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                if 0 >= mem[_303]:
                    revert with 'NH{q', 50
                _327 = mem[_303 + 32]
                if 1 >= mem[_303]:
                    revert with 'NH{q', 50
                _331 = mem[_303 + 64]
                mem[_320 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_320 + 36] = _327
                mem[_320 + 68] = _331
                mem[_320 + 100] = this.address
                mem[_320 + 132] = 128
                mem[_320 + 164] = mem[_320]
                s = 0
                while s < mem[_320]:
                    mem[_320 + s + 196] = mem[_320 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_320]) > mem[_320]:
                    mem[_320 + mem[_320] + 196] = 0
                require ext_code.size(address(_295))
                call address(_295).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _327, _331, address(this.address), Array(len=mem[_320], data=mem[_320 + 196 len ceil32(mem[_320])])
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if 2 >= mem[_303]:
                    revert with 'NH{q', 50
                _337 = mem[_303 + 96]
                _338 = mem[64]
                mem[mem[64] + 32] = mem[(32 * idx + 1) + floor32(('cd', 4).length) + 141 len 20]
                mem[mem[64] + 64] = address(_299)
                mem[mem[64] + 96] = _337
                _342 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                if 0 >= mem[_303]:
                    revert with 'NH{q', 50
                _346 = mem[_303 + 32]
                if 1 >= mem[_303]:
                    revert with 'NH{q', 50
                _348 = mem[_303 + 64]
                mem[_338 + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_338 + 132] = _346
                mem[_338 + 164] = _348
                mem[_338 + 196] = this.address
                mem[_338 + 228] = 128
                _354 = mem[_342]
                mem[_338 + 260] = mem[_342]
                s = 0
                while s < _354:
                    mem[_338 + s + 292] = mem[_342 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_354) > _354:
                    mem[_338 + _354 + 292] = 0
                require ext_code.size(address(_295))
                call address(_295).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _346, _348, address(this.address), 128, mem[_338 + 260 len ceil32(_354) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
