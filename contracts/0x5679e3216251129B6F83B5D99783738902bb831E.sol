contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserve(address arg1) payable {
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
    return arg1 << 192, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _127 = mem[_123]
            require mem[_123] == mem[_123 + 18 len 14]
            _138 = mem[_123 + 32]
            require mem[_123 + 32] == mem[_123 + 50 len 14]
            _144 = mem[_123 + 64]
            require mem[_123 + 64] == mem[_123 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129]] = mem[(32 * idx) + 140 len 20]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 32] = Mask(112, 0, _127)
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 64] = Mask(112, 0, _138)
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 96] = uint32(_144)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[mem[64]] = 32
        _124 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _124:
            _172 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_172 + 50 len 14]
            mem[t + 64] = mem[_172 + 82 len 14]
            mem[t + 96] = mem[_172 + 124 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _119 + (128 * _124) + -mem[64] + 64
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 257
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
    mem[var33001] = floor32(arg1.length) + (32 * arg1.length) + 129
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
        mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _205 = mem[96]
    idx = 0
    while idx < _205:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _213 = mem[_211]
        require mem[_211] == mem[_211 + 18 len 14]
        _217 = mem[_211 + 32]
        require mem[_211 + 32] == mem[_211 + 50 len 14]
        _219 = mem[_211 + 64]
        require mem[_211 + 64] == mem[_211 + 92 len 4]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + floor32(arg1.length) + 129]] = mem[(32 * idx) + 140 len 20]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 32] = Mask(112, 0, _213)
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 64] = Mask(112, 0, _217)
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 96] = uint32(_219)
        if idx == -1:
            revert with 'NH{q', 17
        _205 = mem[96]
        idx = idx + 1
        continue 
    _207 = mem[64]
    mem[mem[64]] = 32
    _212 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _212:
        _232 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_232 + 50 len 14]
        mem[t + 64] = mem[_232 + 82 len 14]
        mem[t + 96] = mem[_232 + 124 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _207 + (128 * _212) + -mem[64] + 64
}



}
