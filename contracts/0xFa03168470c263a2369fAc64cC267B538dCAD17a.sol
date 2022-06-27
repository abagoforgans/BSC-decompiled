contract main {




// =====================  Runtime code  =====================


#
#  - sub_99d9c4b0(?)
#
const CALLER_ROLE = 0x843c3a00fa95510a35f425371231fd3fe4642e719cb4595160763d6d02594b50


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_37e0e9e6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if eth.balance(arg1) < arg2:
        revert with 0, 'ma'
    return 1
}

function sub_ab81ac54(?) {
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    call tx.origin with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_48bfe4a5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'ma'
    return 1
}

function sub_2a81be5c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, Mask(224, 32, arg2) >> 32
    call address(arg1) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(tx.origin) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_70e3489f(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = 0
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 192] = 0
    call address(arg2).mem[ceil32(arg3.length) + 192 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 196 len arg3.length - 4]
    if arg1:
        if not ext_call.success:
            revert with 0, 'call failed'
    if not return_data.size:
        return 32, bool(ext_call.success), 64, arg3.length, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    return 32, bool(ext_call.success), 
           64,
           return_data.size,
           ext_call.return_data[0 len return_data.size],
           Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, bool(ext_call.success)) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
}

function sub_cb7b976d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 64] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, ext_call.return_data[0 len 28]
    call address(arg1) with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_775e923e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 64
        _76 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_76] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _104 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_104] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_104 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_104 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_76 + 32] = _104
        mem[t] = _76
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    _77 = mem[96]
    require mem[96] <= test266151307()
    _79 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _77) + 32
    if not _77:
        _150 = mem[96]
        idx = 0
        while idx < _150:
            require idx < mem[96]
            _154 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _157 = mem[mem[(32 * idx) + 128] + 32]
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _166 = mem[64]
            _169 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _169:
                mem[_166 + s] = mem[_157 + s + 32]
                _150 = mem[96]
                s = s + 32
                continue 
            if ceil32(_169) <= _169:
                call address(_154).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _166 + _169 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = 96
                else:
                    _231 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_231] = return_data.size
                    mem[_231 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = _231
            else:
                mem[_166 + _169] = 0
                call address(_154).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _166 + _169 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = 96
                else:
                    _233 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_233] = return_data.size
                    mem[_233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = _233
            _150 = mem[96]
            idx = idx + 1
            continue 
        _152 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _168 = mem[_79]
        mem[mem[64] + 64] = mem[_79]
        idx = 0
        s = _79 + 32
        t = mem[64] + (32 * _168) + 96
        u = mem[64] + 96
        while idx < _168:
            mem[u] = t + -_152 - 96
            _219 = mem[s]
            _229 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _229:
                mem[t + v + 32] = mem[_219 + v + 32]
                v = v + 32
                continue 
            if ceil32(_229) > _229:
                mem[t + _229 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_229) + 32
            u = u + 32
            continue 
    else:
        mem[_79 + 32] = 96
        s = _79 + 32
        idx = _77
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _218 = mem[96]
        idx = 0
        while idx < _218:
            require idx < mem[96]
            _224 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _228 = mem[mem[(32 * idx) + 128] + 32]
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _234 = mem[64]
            _246 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _246:
                mem[_234 + s] = mem[_228 + s + 32]
                _218 = mem[96]
                s = s + 32
                continue 
            if ceil32(_246) <= _246:
                call address(_224).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _234 + _246 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = 96
                else:
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_279] = return_data.size
                    mem[_279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = _279
            else:
                mem[_234 + _246] = 0
                call address(_224).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _234 + _246 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = 96
                else:
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_281] = return_data.size
                    mem[_281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    require idx < mem[_79]
                    mem[(32 * idx) + _79 + 32] = _281
            _218 = mem[96]
            idx = idx + 1
            continue 
        _222 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _242 = mem[_79]
        mem[mem[64] + 64] = mem[_79]
        idx = 0
        s = _79 + 32
        t = mem[64] + (32 * _242) + 96
        u = mem[64] + 96
        while idx < _242:
            mem[u] = t + -_222 - 96
            _274 = mem[s]
            _277 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _277:
                mem[t + v + 32] = mem[_274 + v + 32]
                v = v + 32
                continue 
            if ceil32(_277) > _277:
                mem[t + _277 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_277) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_c92ad687(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 64
        _91 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_91] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _105 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_105] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_105 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_105 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_91 + 32] = _105
        mem[t] = _91
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    _94 = mem[96]
    require mem[96] <= test266151307()
    _95 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _94) + 32
    if not _94:
        _180 = mem[96]
        idx = 0
        while idx < _180:
            require idx < mem[96]
            _184 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _187 = mem[mem[(32 * idx) + 128] + 32]
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 0
            mem[_189 + 32] = 96
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _197 = mem[64]
            _201 = mem[_187]
            s = 0
            while s < _201:
                mem[_197 + s] = mem[_187 + s + 32]
                _180 = mem[96]
                s = s + 32
                continue 
            if ceil32(_201) <= _201:
                call address(_184).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _197 + _201 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_285] = bool(ext_call.success)
                    mem[_285 + 32] = 96
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _285
                else:
                    _271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_271] = return_data.size
                    mem[_271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _286 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_286] = bool(ext_call.success)
                    mem[_286 + 32] = _271
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _286
            else:
                mem[_197 + _201] = 0
                call address(_184).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _197 + _201 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_291] = bool(ext_call.success)
                    mem[_291 + 32] = 96
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _291
                else:
                    _277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_277] = return_data.size
                    mem[_277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _292 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_292] = bool(ext_call.success)
                    mem[_292 + 32] = _277
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _292
            _180 = mem[96]
            idx = idx + 1
            continue 
        _188 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _204 = mem[_95]
        mem[mem[64] + 96] = mem[_95]
        idx = 0
        s = _95 + 32
        t = mem[64] + (32 * _204) + 128
        u = mem[64] + 128
        while idx < _204:
            mem[u] = t + -_188 - 128
            _264 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _276 = mem[_264 + 32]
            mem[t + 32] = 64
            _281 = mem[_276]
            mem[t + 64] = mem[_276]
            v = 0
            while v < _281:
                mem[t + v + 96] = mem[_276 + v + 32]
                v = v + 32
                continue 
            if ceil32(_281) > _281:
                mem[t + _281 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_281) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _95 + (32 * _94) + 96
        mem[_95 + (32 * _94) + 32] = 0
        mem[_95 + (32 * _94) + 64] = 96
        mem[var38001] = _95 + (32 * _94) + 32
        s = var38001
        idx = var38002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_95 + (32 * _94) + 32] = 0
            mem[_95 + (32 * _94) + 64] = 96
            mem[s + 32] = _95 + (32 * _94) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _332 = mem[96]
        idx = 0
        while idx < _332:
            require idx < mem[96]
            _336 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _339 = mem[mem[(32 * idx) + 128] + 32]
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 0
            mem[_341 + 32] = 96
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _342 = mem[64]
            _344 = mem[_339]
            s = 0
            while s < _344:
                mem[_342 + s] = mem[_339 + s + 32]
                _332 = mem[96]
                s = s + 32
                continue 
            if ceil32(_344) <= _344:
                call address(_336).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _342 + _344 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_386] = bool(ext_call.success)
                    mem[_386 + 32] = 96
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _386
                else:
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_379] = return_data.size
                    mem[_379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_387] = bool(ext_call.success)
                    mem[_387 + 32] = _379
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _387
            else:
                mem[_342 + _344] = 0
                call address(_336).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _342 + _344 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_392] = bool(ext_call.success)
                    mem[_392 + 32] = 96
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _392
                else:
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_382] = return_data.size
                    mem[_382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'call failed'
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = bool(ext_call.success)
                    mem[_393 + 32] = _382
                    require idx < mem[_95]
                    mem[(32 * idx) + _95 + 32] = _393
            _332 = mem[96]
            idx = idx + 1
            continue 
        _340 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _345 = mem[_95]
        mem[mem[64] + 96] = mem[_95]
        idx = 0
        s = _95 + 32
        t = mem[64] + (32 * _345) + 128
        u = mem[64] + 128
        while idx < _345:
            mem[u] = t + -_340 - 128
            _374 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _381 = mem[_374 + 32]
            mem[t + 32] = 64
            _383 = mem[_381]
            mem[t + 64] = mem[_381]
            v = 0
            while v < _383:
                mem[t + v + 96] = mem[_381 + v + 32]
                v = v + 32
                continue 
            if ceil32(_383) > _383:
                mem[t + _383 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_383) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_7d70558a(?) {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -cd[s] - 36 >= 64
        _107 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_107] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] <= test266151307()
        _137 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32
        mem[_137] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_137 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_137 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_107 + 32] = _137
        mem[t] = _107
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    _108 = mem[96]
    require mem[96] <= test266151307()
    _110 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _108) + 32
    if not _108:
        _212 = mem[96]
        idx = 0
        while idx < _212:
            require idx < mem[96]
            _217 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _220 = mem[mem[(32 * idx) + 128] + 32]
            _222 = mem[64]
            mem[64] = mem[64] + 64
            mem[_222] = 0
            mem[_222 + 32] = 96
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _231 = mem[64]
            _236 = mem[_220]
            s = 0
            while ('cd', 36).length < _236:
                mem[_231 + ('cd', 36).length] = mem[_220 + ('cd', 36).length + 32]
                _212 = mem[96]
                s = ('cd', 36).length + 32
                continue 
            if ('cd', 36).length <= _236:
                call address(_217).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _231 + _236 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = bool(ext_call.success)
                        mem[_329 + 32] = 96
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _329
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_340] = bool(ext_call.success)
                        mem[_340 + 32] = 96
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _340
                else:
                    _319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_319] = return_data.size
                    mem[_319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = bool(ext_call.success)
                        mem[_330 + 32] = _319
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _330
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_341] = bool(ext_call.success)
                        mem[_341 + 32] = _319
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _341
            else:
                mem[_231 + _236] = 0
                call address(_217).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _231 + _236 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_336] = bool(ext_call.success)
                        mem[_336 + 32] = 96
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _336
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_348] = bool(ext_call.success)
                        mem[_348 + 32] = 96
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _348
                else:
                    _326 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_326] = return_data.size
                    mem[_326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _337 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_337] = bool(ext_call.success)
                        mem[_337 + 32] = _326
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _337
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _349 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_349] = bool(ext_call.success)
                        mem[_349 + 32] = _326
                        require s < mem[_110]
                        mem[(32 * s) + _110 + 32] = _349
            _212 = mem[96]
            s = s + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 32
        _221 = mem[_110]
        mem[mem[64] + 32] = mem[_110]
        idx = 0
        s = _110 + 32
        t = mem[64] + (32 * _221) + 64
        u = mem[64] + 64
        while idx < _221:
            mem[u] = t + -_215 - 64
            _312 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _325 = mem[_312 + 32]
            mem[t + 32] = 64
            _331 = mem[_325]
            mem[t + 64] = mem[_325]
            v = 0
            while v < _331:
                mem[t + v + 96] = mem[_325 + v + 32]
                v = v + 32
                continue 
            if ceil32(_331) > _331:
                mem[t + _331 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_331) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _110 + (32 * _108) + 96
        mem[_110 + (32 * _108) + 32] = 0
        mem[_110 + (32 * _108) + 64] = 96
        mem[var37001] = _110 + (32 * _108) + 32
        s = var37001
        idx = var37002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_110 + (32 * _108) + 32] = 0
            mem[_110 + (32 * _108) + 64] = 96
            mem[s + 32] = _110 + (32 * _108) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _396 = mem[96]
        idx = 0
        while idx < _396:
            require idx < mem[96]
            _401 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _404 = mem[mem[(32 * idx) + 128] + 32]
            _406 = mem[64]
            mem[64] = mem[64] + 64
            mem[_406] = 0
            mem[_406 + 32] = 96
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _407 = mem[64]
            _410 = mem[_404]
            s = 0
            while s < _410:
                mem[_407 + s] = mem[_404 + s + 32]
                _396 = mem[96]
                s = s + 32
                continue 
            if ceil32(_410) <= _410:
                call address(_401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _407 + _410 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_455] = bool(ext_call.success)
                        mem[_455 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _455
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_464] = bool(ext_call.success)
                        mem[_464 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _464
                else:
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_451] = return_data.size
                    mem[_451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _456 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_456] = bool(ext_call.success)
                        mem[_456 + 32] = _451
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _456
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _465 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_465] = bool(ext_call.success)
                        mem[_465 + 32] = _451
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _465
            else:
                mem[_407 + _410] = 0
                call address(_401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _407 + _410 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_462] = bool(ext_call.success)
                        mem[_462 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _462
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_472] = bool(ext_call.success)
                        mem[_472 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _472
                else:
                    _454 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_454] = return_data.size
                    mem[_454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _463 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_463] = bool(ext_call.success)
                        mem[_463 + 32] = _454
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _463
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_473] = bool(ext_call.success)
                        mem[_473 + 32] = _454
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _473
            _396 = mem[96]
            idx = idx + 1
            continue 
        _399 = mem[64]
        mem[mem[64]] = 32
        _405 = mem[_110]
        mem[mem[64] + 32] = mem[_110]
        idx = 0
        s = _110 + 32
        t = mem[64] + (32 * _405) + 64
        u = mem[64] + 64
        while idx < _405:
            mem[u] = t + -_399 - 64
            _446 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _453 = mem[_446 + 32]
            mem[t + 32] = 64
            _457 = mem[_453]
            mem[t + 64] = mem[_453]
            v = 0
            while v < _457:
                mem[t + v + 96] = mem[_453 + v + 32]
                v = v + 32
                continue 
            if ceil32(_457) > _457:
                mem[t + _457 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_457) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_bc7450d5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -cd[s] - 36 >= 64
        _107 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_107] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] <= test266151307()
        _130 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32
        mem[_130] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_130 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_130 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_107 + 32] = _130
        mem[t] = _107
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
        revert with 0, 'Caller'
    _109 = mem[96]
    require mem[96] <= test266151307()
    _110 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _109) + 32
    if not _109:
        _212 = mem[96]
        idx = 0
        while idx < _212:
            require idx < mem[96]
            _216 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _220 = mem[mem[(32 * idx) + 128] + 32]
            _221 = mem[64]
            mem[64] = mem[64] + 64
            mem[_221] = 0
            mem[_221 + 32] = 96
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _230 = mem[64]
            _233 = mem[_220]
            s = 0
            while s < _233:
                mem[_230 + s] = mem[_220 + s + 32]
                _212 = mem[96]
                s = s + 32
                continue 
            if ceil32(_233) <= _233:
                call address(_216).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _230 + _233 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = bool(ext_call.success)
                        mem[_329 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _329
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_339] = bool(ext_call.success)
                        mem[_339 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _339
                else:
                    _319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_319] = return_data.size
                    mem[_319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = bool(ext_call.success)
                        mem[_330 + 32] = _319
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _330
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_340] = bool(ext_call.success)
                        mem[_340 + 32] = _319
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _340
            else:
                mem[_230 + _233] = 0
                call address(_216).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _230 + _233 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_336] = bool(ext_call.success)
                        mem[_336 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _336
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_347] = bool(ext_call.success)
                        mem[_347 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _347
                else:
                    _325 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_325] = return_data.size
                    mem[_325 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _337 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_337] = bool(ext_call.success)
                        mem[_337 + 32] = _325
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _337
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_348] = bool(ext_call.success)
                        mem[_348 + 32] = _325
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _348
            _212 = mem[96]
            idx = idx + 1
            continue 
        _218 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _234 = mem[_110]
        mem[mem[64] + 96] = mem[_110]
        idx = 0
        s = _110 + 32
        t = mem[64] + (32 * _234) + 128
        u = mem[64] + 128
        while idx < _234:
            mem[u] = t + -_218 - 128
            _312 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _324 = mem[_312 + 32]
            mem[t + 32] = 64
            _331 = mem[_324]
            mem[t + 64] = mem[_324]
            v = 0
            while v < _331:
                mem[t + v + 96] = mem[_324 + v + 32]
                v = v + 32
                continue 
            if ceil32(_331) > _331:
                mem[t + _331 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_331) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _110 + (32 * _109) + 96
        mem[_110 + (32 * _109) + 32] = 0
        mem[_110 + (32 * _109) + 64] = 96
        mem[var41001] = _110 + (32 * _109) + 32
        s = var41001
        idx = var41002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_110 + (32 * _109) + 32] = 0
            mem[_110 + (32 * _109) + 64] = 96
            mem[s + 32] = _110 + (32 * _109) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _396 = mem[96]
        idx = 0
        while idx < _396:
            require idx < mem[96]
            _400 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _404 = mem[mem[(32 * idx) + 128] + 32]
            _405 = mem[64]
            mem[64] = mem[64] + 64
            mem[_405] = 0
            mem[_405 + 32] = 96
            if address(stor0 xor 0xc65275b5d8d66f561f57731c0ec7000b6e6ba1f209c22e4251977a89261ff4f) != tx.origin:
                revert with 0, 'Caller'
            _406 = mem[64]
            _408 = mem[_404]
            s = 0
            while s < _408:
                mem[_406 + s] = mem[_404 + s + 32]
                _396 = mem[96]
                s = s + 32
                continue 
            if ceil32(_408) <= _408:
                call address(_400).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _406 + _408 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_455] = bool(ext_call.success)
                        mem[_455 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _455
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_464] = bool(ext_call.success)
                        mem[_464 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _464
                else:
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_451] = return_data.size
                    mem[_451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _456 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_456] = bool(ext_call.success)
                        mem[_456 + 32] = _451
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _456
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _465 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_465] = bool(ext_call.success)
                        mem[_465 + 32] = _451
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _465
            else:
                mem[_406 + _408] = 0
                call address(_400).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _406 + _408 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_462] = bool(ext_call.success)
                        mem[_462 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _462
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_472] = bool(ext_call.success)
                        mem[_472 + 32] = 96
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _472
                else:
                    _454 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_454] = return_data.size
                    mem[_454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _463 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_463] = bool(ext_call.success)
                        mem[_463 + 32] = _454
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _463
                    else:
                        if not ext_call.success:
                            revert with 0, 'call failed'
                        _473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_473] = bool(ext_call.success)
                        mem[_473 + 32] = _454
                        require idx < mem[_110]
                        mem[(32 * idx) + _110 + 32] = _473
            _396 = mem[96]
            idx = idx + 1
            continue 
        _402 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _409 = mem[_110]
        mem[mem[64] + 96] = mem[_110]
        idx = 0
        s = _110 + 32
        t = mem[64] + (32 * _409) + 128
        u = mem[64] + 128
        while idx < _409:
            mem[u] = t + -_402 - 128
            _446 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _453 = mem[_446 + 32]
            mem[t + 32] = 64
            _457 = mem[_453]
            mem[t + 64] = mem[_453]
            v = 0
            while v < _457:
                mem[t + v + 96] = mem[_453 + v + 32]
                v = v + 32
                continue 
            if ceil32(_457) > _457:
                mem[t + _457 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_457) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
