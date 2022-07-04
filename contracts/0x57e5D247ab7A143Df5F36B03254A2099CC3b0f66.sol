contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address ROUTERAddress;
address stor3;

function ROUTER() {
    return ROUTERAddress
}

function sub_3955a2bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    stor0[address(arg1)] = 1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    ROUTERAddress = arg1
    stor3 = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawPartial(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2885592(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor0[msg.sender]
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0[msg.sender]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d318cfd0(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == uint8(cd[68])
    require cd[100] == uint8(cd[100])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _109 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = msg.value
    call address(_109).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 100 < uint8(cd[68]):
        revert with 0, 17
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 102] = msg.value
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 4).length) + -mem[64] + 194]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _162 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _163 = mem[_162]
    require mem[_162] <= test266151307()
    require _162 + return_data.size > _162 + mem[_162] + 31
    _164 = mem[_162 + mem[_162]]
    if mem[_162 + mem[_162]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_162 + mem[_162]]) + 1 < 0 or _162 + ceil32(return_data.size) + ceil32(32 * mem[_162 + mem[_162]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _162 + ceil32(return_data.size) + ceil32(32 * mem[_162 + mem[_162]]) + 1
    mem[_162 + ceil32(return_data.size)] = _164
    require _163 + (32 * _164) + 32 <= return_data.size
    mem[_162 + ceil32(return_data.size) + 32 len ceil32(32 * _164)] = mem[_162 + _163 + 32 len ceil32(32 * _164)]
    if mem[96] < 1:
        revert with 0, 17
    if mem[96] - 1 >= _164:
        revert with 0, 50
    _207 = mem[(32 * mem[96] - 1) + _162 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[96] - 1) + _162 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[68]) + 100) > -1 / mem[(32 * mem[96] - 1) + _162 + ceil32(return_data.size) + 32]:
        revert with 0, 17
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _207 * uint8(-uint8(cd[68]) + 100) / 100
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = stor1
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(stor3)
    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _207 * uint8(-uint8(cd[68]) + 100) / 100, 128, stor1, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _245 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = stor1
    staticcall address(_245).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _249 = mem[_248]
    if not mem[_248]:
        revert with 0, 'Broke'
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _252 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _249
    call address(_252).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, _249
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _256 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_256] == bool(mem[_256])
    if 100 < uint8(cd[100]):
        revert with 0, 17
    _258 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _249
    mem[mem[64] + 36] = 64
    _259 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 100
    while idx < _259:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _258 + (32 * _259) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _277 = mem[_276]
    require mem[_276] <= test266151307()
    require _276 + return_data.size > _276 + mem[_276] + 31
    _278 = mem[_276 + mem[_276]]
    if mem[_276 + mem[_276]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_276 + mem[_276]]) + 1 < 0 or _276 + ceil32(return_data.size) + ceil32(32 * mem[_276 + mem[_276]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _276 + ceil32(return_data.size) + ceil32(32 * mem[_276 + mem[_276]]) + 1
    mem[_276 + ceil32(return_data.size)] = _278
    require _277 + (32 * _278) + 32 <= return_data.size
    mem[_276 + ceil32(return_data.size) + 32 len ceil32(32 * _278)] = mem[_276 + _277 + 32 len ceil32(32 * _278)]
    if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
        revert with 0, 17
    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= _278:
        revert with 0, 50
    _291 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _276 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _276 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[100]) + 100) > -1 / mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _276 + ceil32(return_data.size) + 32]:
        revert with 0, 17
    _292 = mem[64]
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _249
    mem[mem[64] + 36] = _291 * uint8(-uint8(cd[100]) + 100) / 100
    mem[mem[64] + 68] = 160
    _293 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 196
    while idx < _293:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_292 + 100] = msg.sender
    mem[_292 + 132] = block.timestamp
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _292 + (32 * _293) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4762e988(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _42 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + 101] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + 133] = msg.value
    call address(_42).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while uint8(idx) < 100:
        if 100 < uint8(idx):
            revert with 0, 17
        if msg.value and uint8(-uint8(idx) + 100) > -1 / msg.value:
            revert with 0, 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.value * uint8(-uint8(idx) + 100) / 100
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_117]
        require mem[_117] <= test266151307()
        require _117 + return_data.size > _117 + mem[_117] + 31
        _119 = mem[_117 + mem[_117]]
        if mem[_117 + mem[_117]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_117 + mem[_117]]) + 1 < 0 or _117 + ceil32(return_data.size) + ceil32(32 * mem[_117 + mem[_117]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _117 + ceil32(return_data.size) + ceil32(32 * mem[_117 + mem[_117]]) + 1
        mem[_117 + ceil32(return_data.size)] = _119
        require _118 + (32 * _119) + 32 <= return_data.size
        t = _117 + ceil32(return_data.size) + 32
        s = _117 + _118 + 32
        while s < _117 + _118 + (32 * _119) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[96] < 1:
            revert with 0, 17
        if mem[96] - 1 >= _119:
            revert with 0, 50
        _149 = mem[(32 * mem[96] - 1) + _117 + ceil32(return_data.size) + 32]
        _150 = mem[64]
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _149
        mem[mem[64] + 36] = 128
        _151 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < _151:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_150 + 68] = stor1
        mem[_150 + 100] = block.timestamp
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _150 + (32 * _151) + -mem[64] + 160]
        if ext_call.success:
            if not uint8(idx):
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 1
                mem[_174 + 32] = '0'
                _175 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[idx + _175 + 68] = mem[idx + _174 + 32]
                    idx = idx + 32
                    continue 
                mem[_175 + 69] = 0
                revert with memory
                  from mem[64]
                   len _175 + -mem[64] + 100
            t = 0
            s = uint8(t)
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _191 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                s = t
                idx = uint8(t)
                while idx:
                    if s < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if s - 1 >= mem[_191]:
                        revert with 0, 50
                    mem[s + _191 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    s = s - 1
                    idx = idx / 10
                    continue 
                _206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _208 = mem[_191]
                mem[mem[64] + 36] = mem[_191]
                idx = 0
                while idx < _208:
                    mem[idx + _206 + 68] = mem[idx + _191 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_208) > _208:
                    mem[_206 + _208 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_208) + _206 + -mem[64] + 68
            mem[_191 + 32 len t] = call.data[calldata.size len t]
            s = t
            idx = uint8(t)
            while idx:
                if s < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if s - 1 >= mem[_191]:
                    revert with 0, 50
                mem[s + _191 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            _207 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _209 = mem[_191]
            mem[mem[64] + 36] = mem[_191]
            idx = 0
            while idx < _209:
                mem[idx + _207 + 68] = mem[idx + _191 + 32]
                idx = idx + 32
                continue 
            if ceil32(_209) > _209:
                mem[_207 + _209 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_209) + _207 + -mem[64] + 68
        if return_data.size <= 3:
            if return_data.size:
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_177] = return_data.size
                mem[_177 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if return_data.size:
                    _178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_178] = return_data.size
                    mem[_178 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                if return_data.size < 68:
                    if return_data.size:
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_185] = return_data.size
                        mem[_185 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _179 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    _180 = mem[mem[64]]
                    if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                        if return_data.size:
                            _186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_186] = return_data.size
                            mem[_186 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[mem[64] + mem[mem[64]]] > test266151307():
                            if return_data.size:
                                _187 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_187] = return_data.size
                                mem[_187 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                if return_data.size:
                                    _188 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_188] = return_data.size
                                    mem[_188 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                if not _179 + _180:
                                    if return_data.size:
                                        _189 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_189] = return_data.size
                                        mem[_189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    revert with 0, '100'
}

function sub_2eef3878(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == uint8(cd[68])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _139 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = ROUTERAddress
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = msg.value
    call address(_139).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, msg.value
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 100 < uint8(cd[68]):
        revert with 0, 17
    if msg.value and uint8(-uint8(cd[68]) + 100) > -1 / msg.value:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 102] = msg.value * uint8(-uint8(cd[68]) + 100) / 100
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor3.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 4).length) + -mem[64] + 194]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _207 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _208 = mem[_207]
    require mem[_207] <= test266151307()
    require _207 + return_data.size > _207 + mem[_207] + 31
    _209 = mem[_207 + mem[_207]]
    if mem[_207 + mem[_207]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_207 + mem[_207]]) + 1 < 0 or _207 + ceil32(return_data.size) + ceil32(32 * mem[_207 + mem[_207]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _207 + ceil32(return_data.size) + ceil32(32 * mem[_207 + mem[_207]]) + 1
    mem[_207 + ceil32(return_data.size)] = _209
    require _208 + (32 * _209) + 32 <= return_data.size
    mem[_207 + ceil32(return_data.size) + 32 len ceil32(32 * _209)] = mem[_207 + _208 + 32 len ceil32(32 * _209)]
    if mem[96] < 1:
        revert with 0, 17
    if mem[96] - 1 >= _209:
        revert with 0, 50
    _267 = mem[(32 * mem[96] - 1) + _207 + ceil32(return_data.size) + 32]
    _268 = mem[64]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _267
    mem[mem[64] + 36] = 128
    _269 = mem[96]
    mem[mem[64] + 132] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < _269:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_268 + 68] = stor1
    mem[_268 + 100] = block.timestamp
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _268 + (32 * _269) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _320 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = stor1
    staticcall address(_320).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _323 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _324 = mem[_323]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _326 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 4] = ROUTERAddress
    mem[mem[64] + 36] = _324
    call address(_326).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, _324
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _329 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_329] == bool(mem[_329])
    idx = 0
    while uint8(idx) < 100:
        if 100 < uint8(idx):
            revert with 0, 17
        if _324 and uint8(-uint8(idx) + 100) > -1 / _324:
            revert with 0, 17
        _366 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _324 * uint8(-uint8(idx) + 100) / 100
        mem[mem[64] + 36] = 64
        _367 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + 100
        while s < _367:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall stor3.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _366 + (32 * _367) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _401 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _402 = mem[_401]
        require mem[_401] <= test266151307()
        require _401 + return_data.size > _401 + mem[_401] + 31
        _403 = mem[_401 + mem[_401]]
        if mem[_401 + mem[_401]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_401 + mem[_401]]) + 1 < 0 or _401 + ceil32(return_data.size) + ceil32(32 * mem[_401 + mem[_401]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _401 + ceil32(return_data.size) + ceil32(32 * mem[_401 + mem[_401]]) + 1
        mem[_401 + ceil32(return_data.size)] = _403
        require _402 + (32 * _403) + 32 <= return_data.size
        t = _401 + ceil32(return_data.size) + 32
        s = _401 + _402 + 32
        while s < _401 + _402 + (32 * _403) + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
            revert with 0, 17
        if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= _403:
            revert with 0, 50
        _433 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + _401 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _324
        mem[mem[64] + 36] = _433
        mem[mem[64] + 68] = 160
        _435 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 97]
        s = 0
        t = ceil32(32 * ('cd', 4).length) + 129
        u = mem[64] + 196
        while s < _435:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = stor1
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(stor3)
        call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _324, _433, 160, stor1, block.timestamp, mem[mem[64] + 164 len (32 * _435) + 32]
        if ext_call.success:
            if not uint8(idx):
                _458 = mem[64]
                mem[64] = mem[64] + 64
                mem[_458] = 1
                mem[_458 + 32] = '0'
                _459 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 1
                idx = 0
                while idx < 1:
                    mem[idx + _459 + 68] = mem[idx + _458 + 32]
                    idx = idx + 32
                    continue 
                mem[_459 + 69] = 0
                revert with memory
                  from mem[64]
                   len _459 + -mem[64] + 100
            t = 0
            s = uint8(t)
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _475 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                s = t
                idx = uint8(t)
                while idx:
                    if s < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if s - 1 >= mem[_475]:
                        revert with 0, 50
                    mem[s + _475 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    s = s - 1
                    idx = idx / 10
                    continue 
                _490 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _492 = mem[_475]
                mem[mem[64] + 36] = mem[_475]
                idx = 0
                while idx < _492:
                    mem[idx + _490 + 68] = mem[idx + _475 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_492) > _492:
                    mem[_490 + _492 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_492) + _490 + -mem[64] + 68
            mem[_475 + 32 len t] = call.data[calldata.size len t]
            s = t
            idx = uint8(t)
            while idx:
                if s < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if s - 1 >= mem[_475]:
                    revert with 0, 50
                mem[s + _475 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                s = s - 1
                idx = idx / 10
                continue 
            _491 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _493 = mem[_475]
            mem[mem[64] + 36] = mem[_475]
            idx = 0
            while idx < _493:
                mem[idx + _491 + 68] = mem[idx + _475 + 32]
                idx = idx + 32
                continue 
            if ceil32(_493) > _493:
                mem[_491 + _493 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_493) + _491 + -mem[64] + 68
        if return_data.size <= 3:
            if return_data.size:
                _461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_461] = return_data.size
                mem[_461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if return_data.size:
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_462] = return_data.size
                    mem[_462 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                if return_data.size < 68:
                    if return_data.size:
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_469] = return_data.size
                        mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    _463 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if 0, Mask(224, 32, _324) >> 32 > test266151307() or 0, Mask(224, 32, _324) >> 32 + 36 > return_data.size:
                        if return_data.size:
                            _470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_470] = return_data.size
                            mem[_470 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[mem[64] + 0, Mask(224, 32, _324) >> 32] > test266151307():
                            if return_data.size:
                                _471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_471] = return_data.size
                                mem[_471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if 0, Mask(224, 32, _324) >> 32 + mem[mem[64] + 0, Mask(224, 32, _324) >> 32] + 32 > return_data.size - 4:
                                if return_data.size:
                                    _472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_472] = return_data.size
                                    mem[_472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[64] + floor32(0, Mask(224, 32, _324) >> 32 + mem[mem[64] + 0, Mask(224, 32, _324) >> 32] + 31) + 1 < mem[64] or mem[64] + floor32(0, Mask(224, 32, _324) >> 32 + mem[mem[64] + 0, Mask(224, 32, _324) >> 32] + 31) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + floor32(0, Mask(224, 32, _324) >> 32 + mem[mem[64] + 0, Mask(224, 32, _324) >> 32] + 31) + 1
                                if not _463 + 0, Mask(224, 32, _324) >> 32:
                                    if return_data.size:
                                        _473 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_473] = return_data.size
                                        mem[_473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    revert with 0, '100'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x51cff8d9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3955a2bc(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x3955a2bc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor0[cd[4]])
                if unknown_0x3aeac4e1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require stor0[msg.sender]
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require unknown_0x4762e988(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = cd[4] + 36
                s = 160
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                _191 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + 133] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + 165] = msg.value
                call address(_191).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, msg.value
                mem[ceil32(32 * ('cd', 4).length) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                while uint8(idx) < 100:
                    if 100 < uint8(idx):
                        revert with 0, 17
                    if msg.value and uint8(-uint8(idx) + 100) > -1 / msg.value:
                        revert with 0, 17
                    _357 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.value * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    _363 = mem[128]
                    mem[mem[64] + 68] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 100
                    while s < _363:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _357 + (32 * _363) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _514 = mem[_511]
                    require mem[_511] <= test266151307()
                    require _511 + return_data.size > _511 + mem[_511] + 31
                    _517 = mem[_511 + mem[_511]]
                    if mem[_511 + mem[_511]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_511 + mem[_511]]) + 1 < 0 or _511 + ceil32(return_data.size) + ceil32(32 * mem[_511 + mem[_511]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _511 + ceil32(return_data.size) + ceil32(32 * mem[_511 + mem[_511]]) + 1
                    mem[_511 + ceil32(return_data.size)] = _517
                    require _514 + (32 * _517) + 32 <= return_data.size
                    t = _511 + ceil32(return_data.size) + 32
                    s = _511 + _514 + 32
                    while s < _511 + _514 + (32 * _517) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[128] < 1:
                        revert with 0, 17
                    if mem[128] - 1 >= _517:
                        revert with 0, 50
                    _649 = mem[(32 * mem[128] - 1) + _511 + ceil32(return_data.size) + 32]
                    _650 = mem[64]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _649
                    mem[mem[64] + 36] = 128
                    _653 = mem[128]
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 164
                    while s < _653:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_650 + 68] = stor1
                    mem[_650 + 100] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.mem[mem[64] len 4] with:
                       value msg.value wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _650 + (32 * _653) + -mem[64] + 160]
                    if ext_call.success:
                        if not uint8(idx):
                            _772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_772] = 1
                            mem[_772 + 32] = '0'
                            _775 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _775 + 68] = mem[idx + _772 + 32]
                                idx = idx + 32
                                continue 
                            mem[_775 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _775 + -mem[64] + 100
                        t = 0
                        s = uint8(t)
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        _856 = mem[64]
                        mem[mem[64]] = t
                        mem[64] = mem[64] + ceil32(t) + 32
                        if not t:
                            s = t
                            idx = uint8(t)
                            while idx:
                                if s < 1:
                                    revert with 0, 17
                                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if idx < 10 * idx / 10:
                                    revert with 0, 17
                                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                    revert with 0, 17
                                if s - 1 >= mem[_856]:
                                    revert with 0, 50
                                mem[s + _856 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _919 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _923 = mem[_856]
                            mem[mem[64] + 36] = mem[_856]
                            idx = 0
                            while idx < _923:
                                mem[idx + _919 + 68] = mem[idx + _856 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_923) > _923:
                                mem[_919 + _923 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_923) + _919 + -mem[64] + 68
                        mem[_856 + 32 len t] = call.data[calldata.size len t]
                        s = t
                        idx = uint8(t)
                        while idx:
                            if s < 1:
                                revert with 0, 17
                            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if idx < 10 * idx / 10:
                                revert with 0, 17
                            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                revert with 0, 17
                            if s - 1 >= mem[_856]:
                                revert with 0, 50
                            mem[s + _856 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _920 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _924 = mem[_856]
                        mem[mem[64] + 36] = mem[_856]
                        idx = 0
                        while idx < _924:
                            mem[idx + _920 + 68] = mem[idx + _856 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_924) > _924:
                            mem[_920 + _924 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_924) + _920 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _783 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_783] = return_data.size
                            mem[_783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_788] = return_data.size
                                mem[_788 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _798 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_798] = return_data.size
                                    mem[_798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _789 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                _790 = mem[mem[64]]
                                if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                                    if return_data.size:
                                        _799 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_799] = return_data.size
                                        mem[_799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + mem[mem[64]]] > test266151307():
                                        if return_data.size:
                                            _800 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_800] = return_data.size
                                            mem[_800 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _801 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_801] = return_data.size
                                                mem[_801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                            if not _789 + _790:
                                                if return_data.size:
                                                    _804 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_804] = return_data.size
                                                    mem[_804 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x2eef3878(?????):
                    require unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return ROUTERAddress
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = cd[4] + 36
                s = 160
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = cd[36] + 36
                s = ceil32(32 * ('cd', 4).length) + 161
                while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[68] == uint8(cd[68])
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                _353 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                call address(_353).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, msg.value
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 100 < uint8(cd[68]):
                    revert with 0, 17
                if msg.value and uint8(-uint8(cd[68]) + 100) > -1 / msg.value:
                    revert with 0, 17
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = msg.value * uint8(-uint8(cd[68]) + 100) / 100
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = 64
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198] = ('cd', 4).length
                idx = 0
                s = 160
                t = mem[64] + 100
                while idx < mem[128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * ('cd', 4).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _510 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _513 = mem[_510]
                require mem[_510] <= test266151307()
                require _510 + return_data.size > _510 + mem[_510] + 31
                _516 = mem[_510 + mem[_510]]
                if mem[_510 + mem[_510]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_510 + mem[_510]]) + 1 < 0 or _510 + ceil32(return_data.size) + ceil32(32 * mem[_510 + mem[_510]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _510 + ceil32(return_data.size) + ceil32(32 * mem[_510 + mem[_510]]) + 1
                mem[_510 + ceil32(return_data.size)] = _516
                require _513 + (32 * _516) + 32 <= return_data.size
                mem[_510 + ceil32(return_data.size) + 32 len ceil32(32 * _516)] = mem[_510 + _513 + 32 len ceil32(32 * _516)]
                if mem[128] < 1:
                    revert with 0, 17
                if mem[128] - 1 >= _516:
                    revert with 0, 50
                _647 = mem[(32 * mem[128] - 1) + _510 + ceil32(return_data.size) + 32]
                _648 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _647
                mem[mem[64] + 36] = 128
                _652 = mem[128]
                mem[mem[64] + 132] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 164
                while idx < _652:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_648 + 68] = stor1
                mem[_648 + 100] = block.timestamp
                require ext_code.size(stor3)
                call stor3.mem[mem[64] len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _648 + (32 * _652) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _762 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = stor1
                staticcall address(_762).0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _768 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _771 = mem[_768]
                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                _776 = mem[ceil32(32 * ('cd', 4).length) + 161]
                mem[mem[64] + 4] = ROUTERAddress
                mem[mem[64] + 36] = _771
                call address(_776).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ROUTERAddress, _771
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _782 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_782] == bool(mem[_782])
                idx = 0
                while uint8(idx) < 100:
                    if 100 < uint8(idx):
                        revert with 0, 17
                    if _771 and uint8(-uint8(idx) + 100) > -1 / _771:
                        revert with 0, 17
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _771 * uint8(-uint8(idx) + 100) / 100
                    mem[mem[64] + 36] = 64
                    _872 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 100
                    while s < _872:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _771 * uint8(-uint8(idx) + 100) / 100, 64, mem[mem[64] + 68 len (32 * _872) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _925 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _929 = mem[_925]
                    require mem[_925] <= test266151307()
                    require _925 + return_data.size > _925 + mem[_925] + 31
                    _933 = mem[_925 + mem[_925]]
                    if mem[_925 + mem[_925]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_925 + mem[_925]]) + 1 < 0 or _925 + ceil32(return_data.size) + ceil32(32 * mem[_925 + mem[_925]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _925 + ceil32(return_data.size) + ceil32(32 * mem[_925 + mem[_925]]) + 1
                    mem[_925 + ceil32(return_data.size)] = _933
                    require _929 + (32 * _933) + 32 <= return_data.size
                    t = _925 + ceil32(return_data.size) + 32
                    s = _925 + _929 + 32
                    while s < _925 + _929 + (32 * _933) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _933:
                        revert with 0, 50
                    _979 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _925 + ceil32(return_data.size) + 32]
                    _980 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _771
                    mem[mem[64] + 36] = _979
                    mem[mem[64] + 68] = 160
                    _981 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    s = 0
                    t = ceil32(32 * ('cd', 4).length) + 161
                    u = mem[64] + 196
                    while s < _981:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_980 + 100] = stor1
                    mem[_980 + 132] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _980 + (32 * _981) + -mem[64] + 192]
                    if ext_call.success:
                        if not uint8(idx):
                            _1004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1004] = 1
                            mem[_1004 + 32] = '0'
                            _1005 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 1
                            idx = 0
                            while idx < 1:
                                mem[idx + _1005 + 68] = mem[idx + _1004 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1005 + 69] = 0
                            revert with memory
                              from mem[64]
                               len _1005 + -mem[64] + 100
                        t = 0
                        s = uint8(t)
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        _1021 = mem[64]
                        mem[mem[64]] = t
                        mem[64] = mem[64] + ceil32(t) + 32
                        if not t:
                            s = t
                            idx = uint8(t)
                            while idx:
                                if s < 1:
                                    revert with 0, 17
                                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if idx < 10 * idx / 10:
                                    revert with 0, 17
                                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                    revert with 0, 17
                                if s - 1 >= mem[_1021]:
                                    revert with 0, 50
                                mem[s + _1021 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _1036 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1038 = mem[_1021]
                            mem[mem[64] + 36] = mem[_1021]
                            idx = 0
                            while idx < _1038:
                                mem[idx + _1036 + 68] = mem[idx + _1021 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1038) > _1038:
                                mem[_1036 + _1038 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1038) + _1036 + -mem[64] + 68
                        mem[_1021 + 32 len t] = call.data[calldata.size len t]
                        s = t
                        idx = uint8(t)
                        while idx:
                            if s < 1:
                                revert with 0, 17
                            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if idx < 10 * idx / 10:
                                revert with 0, 17
                            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                                revert with 0, 17
                            if s - 1 >= mem[_1021]:
                                revert with 0, 50
                            mem[s + _1021 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                            s = s - 1
                            idx = idx / 10
                            continue 
                        _1037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1039 = mem[_1021]
                        mem[mem[64] + 36] = mem[_1021]
                        idx = 0
                        while idx < _1039:
                            mem[idx + _1037 + 68] = mem[idx + _1021 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1039) > _1039:
                            mem[_1037 + _1039 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1039) + _1037 + -mem[64] + 68
                    if return_data.size <= 3:
                        if return_data.size:
                            _1007 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1007] = return_data.size
                            mem[_1007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if return_data.size:
                                _1008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1008] = return_data.size
                                mem[_1008 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            if return_data.size < 68:
                                if return_data.size:
                                    _1015 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1015] = return_data.size
                                    mem[_1015 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _1009 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                _1010 = mem[mem[64]]
                                if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                                    if return_data.size:
                                        _1016 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1016] = return_data.size
                                        mem[_1016 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[mem[64] + mem[mem[64]]] > test266151307():
                                        if return_data.size:
                                            _1017 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1017] = return_data.size
                                            mem[_1017 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                            if return_data.size:
                                                _1018 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1018] = return_data.size
                                                mem[_1018 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                            if not _1009 + _1010:
                                                if return_data.size:
                                                    _1019 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1019] = return_data.size
                                                    mem[_1019 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
            revert with 0, '100'
        if unknown_0xc0d78655(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require stor0[msg.sender]
                call address(cd[4]) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x7065cb48(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require stor0[msg.sender]
                    stor0[address(cd[4])] = 1
                else:
                    require unknown_0x84522aec(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require stor0[msg.sender]
                    call address(cd[4]) with:
                       value cd[36] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require stor0[msg.sender]
                ROUTERAddress = address(cd[4])
                stor3 = address(cd[4])
            else:
                if unknown_0xd2885592(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require stor0[msg.sender]
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), cd[68]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require unknown_0xd318cfd0(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 128
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = cd[4] + 36
                    s = 160
                    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    idx = cd[36] + 36
                    s = ceil32(32 * ('cd', 4).length) + 161
                    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require cd[68] == uint8(cd[68])
                    require cd[100] == uint8(cd[100])
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    _360 = mem[160]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = ROUTERAddress
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = msg.value
                    call address(_360).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, msg.value
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 100 < uint8(cd[68]):
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 134] = msg.value
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 166] = 64
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 198] = ('cd', 4).length
                    idx = 0
                    s = 160
                    t = mem[64] + 100
                    while idx < ('cd', 4).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 4).length) + -mem[64] + 226]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _512 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _515 = mem[_512]
                    require mem[_512] <= test266151307()
                    require _512 + return_data.size > _512 + mem[_512] + 31
                    _518 = mem[_512 + mem[_512]]
                    if mem[_512 + mem[_512]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_512 + mem[_512]]) + 1 < 0 or _512 + ceil32(return_data.size) + ceil32(32 * mem[_512 + mem[_512]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _512 + ceil32(return_data.size) + ceil32(32 * mem[_512 + mem[_512]]) + 1
                    mem[_512 + ceil32(return_data.size)] = _518
                    require _515 + (32 * _518) + 32 <= return_data.size
                    mem[_512 + ceil32(return_data.size) + 32 len ceil32(32 * _518)] = mem[_512 + _515 + 32 len ceil32(32 * _518)]
                    if mem[128] < 1:
                        revert with 0, 17
                    if mem[128] - 1 >= _518:
                        revert with 0, 50
                    _651 = mem[(32 * mem[128] - 1) + _512 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[128] - 1) + _512 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[68]) + 100) > -1 / mem[(32 * mem[128] - 1) + _512 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    _658 = mem[64]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _651 * uint8(-uint8(cd[68]) + 100) / 100
                    mem[mem[64] + 36] = 128
                    _660 = mem[128]
                    mem[mem[64] + 132] = mem[128]
                    idx = 0
                    s = 160
                    t = mem[64] + 164
                    while idx < mem[128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = stor1
                    mem[_658 + 100] = block.timestamp
                    require ext_code.size(stor3)
                    call stor3.mem[mem[64] len 4] with:
                       value msg.value wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _658 + (32 * _660) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _765 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = stor1
                    staticcall address(_765).0x70a08231 with:
                            gas gas_remaining wei
                           args stor1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _773 = mem[_769]
                    if not mem[_769]:
                        revert with 0, 'Broke'
                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _784 = mem[ceil32(32 * ('cd', 4).length) + 161]
                    mem[mem[64] + 4] = ROUTERAddress
                    mem[mem[64] + 36] = _773
                    call address(_784).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, _773
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_792] == bool(mem[_792])
                    if 100 < uint8(cd[100]):
                        revert with 0, 17
                    _802 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _773
                    mem[mem[64] + 36] = 64
                    _803 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 100
                    while idx < _803:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _802 + (32 * _803) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _860 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _862 = mem[_860]
                    require mem[_860] <= test266151307()
                    require _860 + return_data.size > _860 + mem[_860] + 31
                    _866 = mem[_860 + mem[_860]]
                    if mem[_860 + mem[_860]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_860 + mem[_860]]) + 1 < 0 or _860 + ceil32(return_data.size) + ceil32(32 * mem[_860 + mem[_860]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _860 + ceil32(return_data.size) + ceil32(32 * mem[_860 + mem[_860]]) + 1
                    mem[_860 + ceil32(return_data.size)] = _866
                    require _862 + (32 * _866) + 32 <= return_data.size
                    mem[_860 + ceil32(return_data.size) + 32 len ceil32(32 * _866)] = mem[_860 + _862 + 32 len ceil32(32 * _866)]
                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                        revert with 0, 17
                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= _866:
                        revert with 0, 50
                    _930 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _860 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _860 + ceil32(return_data.size) + 32] and uint8(-uint8(cd[100]) + 100) > -1 / mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + _860 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _773
                    mem[mem[64] + 36] = _930 * uint8(-uint8(cd[100]) + 100) / 100
                    mem[mem[64] + 68] = 160
                    _938 = mem[ceil32(32 * ('cd', 4).length) + 129]
                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 161
                    t = mem[64] + 196
                    while idx < _938:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _773, _930 * uint8(-uint8(cd[100]) + 100) / 100, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _938) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
