contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor2;

function sub_b960122a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = cd[4] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), stor2, ('cd', 4).length, mem[ceil32(return_data.size) + 260 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    return 0
}

function sub_c7d89ef8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.value
    mem[132] = 64
    mem[164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=('cd', 4).length, data=mem[196 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _47 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 127 < return_data.size + 96
    _48 = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _48
    require (32 * _48) + _47 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _48)] = mem[_47 + 128 len ceil32(32 * _48)]
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= _48:
        revert with 'NH{q', 50
    _90 = mem[(32 * ('cd', 4).length - 1) + ceil32(return_data.size) + 128]
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    mem[mem[64] + 4] = this.address
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _94 = mem[_93]
    _95 = mem[64]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 164
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_95 + 68] = this.address
    mem[_95 + 100] = stor2
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _95 + (32 * ('cd', 4).length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    mem[mem[64] + 4] = this.address
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _132 = mem[_131]
    if mem[_131] < _94:
        revert with 'NH{q', 17
    if mem[_131] - _94 > mem[_131]:
        revert with 0, 'ds-math-sub-underflow'
    _135 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _132 - _94
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 100
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _135 + (32 * ('cd', 36).length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _157 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _158 = mem[_157]
    require mem[_157] <= test266151307()
    require _157 + mem[_157] + 31 < _157 + return_data.size
    _159 = mem[_157 + mem[_157]]
    if mem[_157 + mem[_157]] > test266151307():
        revert with 'NH{q', 65
    if _157 + ceil32(return_data.size) + ceil32(32 * mem[_157 + mem[_157]]) + 1 > test266151307() or ceil32(32 * mem[_157 + mem[_157]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _157 + ceil32(return_data.size) + ceil32(32 * mem[_157 + mem[_157]]) + 1
    mem[_157 + ceil32(return_data.size)] = _159
    require (32 * _159) + _158 + 32 <= return_data.size
    mem[_157 + ceil32(return_data.size) + 32 len ceil32(32 * _159)] = mem[_157 + _158 + 32 len ceil32(32 * _159)]
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= _159:
        revert with 'NH{q', 50
    _178 = mem[(32 * ('cd', 36).length - 1) + _157 + ceil32(return_data.size) + 32]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = stor2
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, stor2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _181 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_181] == bool(mem[_181])
    _183 = mem[64]
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _132 - _94
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_183 + 100] = this.address
    mem[_183 + 132] = stor2
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _183 + (32 * ('cd', 36).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    if 0 > eth.balance(this.address):
        revert with 0, 'ds-math-sub-underflow'
    return _90, _132 - _94, 0, _178, 0, 0
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0xb960122a(?????) == uint32(call.func_hash) >> 224:
        require calldata.size - 4 >= 32
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
        staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = cd[4] + 36
        t = ceil32(return_data.size) + 292
        while idx < ('cd', 4).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(this.address), stor2, ('cd', 4).length, mem[ceil32(return_data.size) + 292 len 32 * ('cd', 4).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        if 0 > gas_remaining:
            revert with 0, 'ds-math-sub-underflow'
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
        staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        return 0
    if uint32(call.func_hash) >> 224 != unknown_0xc7d89ef8(?????):
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[132] = msg.value
    mem[164] = 64
    mem[196] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 228
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=('cd', 4).length, data=mem[228 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 32
    _64 = mem[128 len 4], Mask(224, 32, msg.value) >> 32
    require mem[128 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 159 < return_data.size + 128
    _65 = mem[mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    if mem[mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 128] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 129
    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    require (32 * _65) + _64 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160 len ceil32(32 * _65)] = mem[_64 + 160 len ceil32(32 * _65)]
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= _65:
        revert with 'NH{q', 50
    _117 = mem[(32 * ('cd', 4).length - 1) + ceil32(return_data.size) + 160]
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    mem[mem[64] + 4] = this.address
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _121 = mem[_120]
    _122 = mem[64]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 164
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_122 + 68] = this.address
    mem[_122 + 100] = stor2
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _122 + (32 * ('cd', 4).length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    mem[mem[64] + 4] = this.address
    staticcall address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _158 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _159 = mem[_158]
    if mem[_158] < _121:
        revert with 'NH{q', 17
    if mem[_158] - _121 > mem[_158]:
        revert with 0, 'ds-math-sub-underflow'
    _162 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _159 - _121
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 100
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _162 + (32 * ('cd', 36).length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _184 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _185 = mem[_184]
    require mem[_184] <= test266151307()
    require _184 + mem[_184] + 31 < _184 + return_data.size
    _186 = mem[_184 + mem[_184]]
    if mem[_184 + mem[_184]] > test266151307():
        revert with 'NH{q', 65
    if _184 + ceil32(return_data.size) + ceil32(32 * mem[_184 + mem[_184]]) + 1 > test266151307() or ceil32(32 * mem[_184 + mem[_184]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _184 + ceil32(return_data.size) + ceil32(32 * mem[_184 + mem[_184]]) + 1
    mem[_184 + ceil32(return_data.size)] = _186
    require (32 * _186) + _185 + 32 <= return_data.size
    mem[_184 + ceil32(return_data.size) + 32 len ceil32(32 * _186)] = mem[_184 + _185 + 32 len ceil32(32 * _186)]
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= _186:
        revert with 'NH{q', 50
    _205 = mem[(32 * ('cd', 36).length - 1) + _184 + ceil32(return_data.size) + 32]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = stor2
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, stor2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _208 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_208] == bool(mem[_208])
    _210 = mem[64]
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _159 - _121
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_210 + 100] = this.address
    mem[_210 + 132] = stor2
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _210 + (32 * ('cd', 36).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if 0 > gas_remaining:
        revert with 0, 'ds-math-sub-underflow'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    if 0 > eth.balance(this.address):
        revert with 0, 'ds-math-sub-underflow'
    return _117, _159 - _121, 0, _205, 0, 0
}



}
