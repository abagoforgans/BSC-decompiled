contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2b035a4e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == mem[_26 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_26 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _28:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _24 + (32 * _28) + -mem[64] + 64
    mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg2))
        staticcall address(arg2).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == mem[_27 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_27 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64]] = 32
    _29 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _29:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _25 + (32 * _29) + -mem[64] + 64
}

function sub_7f144ea1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg1
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_29] == mem[_29 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_29 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _32 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _32:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _28 + (32 * _32) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_31 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _34 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _34:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _30 + (32 * _34) + -mem[64] + 64
}

function sub_5a2eb955(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225 < 224 or ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225 > test266151307():
        revert with 0, 65
    mem[224] = cd[(cd[4] + ('cd', 4).length + 4)]
    require cd[4] + ('cd', 4).length + (32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4).length + 36
    t = 256
    while idx < cd[(cd[4] + ('cd', 4).length + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[96] = 224
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 226 < 225 or ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 226 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 226
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[4] + ('cd', 4)[0] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 257
    while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[0] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _94 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 1
        mem[_94] = cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[0] + cd[s] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + ('cd', 4)[0] + cd[s] + 68
        w = _94 + 32
        while u < cd[(cd[4] + ('cd', 4)[0] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _94
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[128] = ceil32(32 * cd[(cd[4] + ('cd', 4).length + 4)]) + 225
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[192] = ('cd', 4)[2]
    require calldata.size - 36 >= 96
    _93 = mem[64]
    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 96
    require cd[36] == address(cd[36])
    mem[_93] = cd[36]
    require cd[68] == address(cd[68])
    mem[_93 + 32] = cd[68]
    require cd[100] == address(cd[100])
    mem[_93 + 64] = cd[100]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _99 = mem[_98]
    stor1 = address(cd[36])
    stor2 = address(cd[68])
    stor3 = address(cd[100])
    _103 = mem[64]
    mem[mem[64] + 32] = address(cd[68])
    mem[mem[64] + 64] = cd[132]
    mem[mem[64] + 96] = 96
    mem[mem[64] + 128] = 128
    _105 = mem[mem[96]]
    mem[mem[64] + 256] = mem[mem[96]]
    idx = 0
    s = mem[96] + 32
    t = mem[64] + 288
    while idx < _105:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_103 + 160] = (32 * _105) + 160
    _139 = mem[mem[128]]
    mem[_103 + (32 * _105) + 288] = mem[mem[128]]
    idx = 0
    s = _103 + (32 * _105) + (32 * _139) + 320
    t = _103 + (32 * _105) + 320
    u = mem[128] + 32
    while idx < _139:
        mem[t] = s + -_103 + -(32 * _105) - 320
        _170 = mem[u]
        _172 = mem[mem[u]]
        mem[s] = mem[mem[u]]
        v = 0
        w = _170 + 32
        x = w + 32
        while v < _172:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _172 + 1
        w = _170 + (64 * _172) + 64
        t = t + 32
        u = u + 32
        continue 
    mem[_103 + 192] = mem[160]
    mem[_103 + 224] = mem[204 len 20]
    _171 = mem[64]
    mem[mem[64]] = s + -mem[64] - 32
    mem[64] = s
    mem[s] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
    mem[s + 4] = this.address
    mem[s + 36] = address(cd[68])
    mem[s + 68] = cd[132]
    mem[s + 100] = 128
    _173 = mem[_171]
    mem[s + 132] = mem[_171]
    mem[s + 164 len ceil32(_173)] = mem[_171 + 32 len ceil32(_173)]
    if ceil32(_173) > _173:
        mem[s + _173 + 164] = 0
    require ext_code.size(stor1)
    call stor1.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(cd[68]), cd[132], 128, mem[s + 132 len ceil32(_173) + 32]
    mem[s] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= _99:
        revert with 0, 'non profit'
}

function sub_76105e52(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _54 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1
        mem[_54] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _54 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _54
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _73 = mem[96]
    idx = 0
    s = 96
    while idx < _73:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _75 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        _77 = mem[(32 * idx) + 128]
        if 0 == idx:
            if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
                revert with 0, 50
            _80 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(_80))
            call address(_80).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_85] == bool(mem[_85])
            if not mem[_85]:
                revert with 0, 'approve failed'
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            _95 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _98 = mem[_75]
            mem[mem[64] + 164] = mem[_75]
            s = 0
            t = _75 + 32
            u = mem[64] + 196
            while s < _98:
                mem[u] = mem[t + 12 len 20]
                _73 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_95 + 100] = this.address
            mem[_95 + 132] = block.timestamp + (24 * 3600)
            require ext_code.size(address(_77))
            call address(_77).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _95 + (32 * _98) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _122 = mem[_120]
            require mem[_120] <= test266151307()
            require _120 + return_data.size > _120 + mem[_120] + 31
            _124 = mem[_120 + mem[_120]]
            if mem[_120 + mem[_120]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_120 + mem[_120]]) + 1 < 0 or _120 + ceil32(return_data.size) + ceil32(32 * mem[_120 + mem[_120]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _120 + ceil32(return_data.size) + ceil32(32 * mem[_120 + mem[_120]]) + 1
            mem[_120 + ceil32(return_data.size)] = _124
            require _122 + (32 * _124) + 32 <= return_data.size
            t = _120 + _122 + 32
            u = _120 + ceil32(return_data.size) + 32
            s = 0
            while s < _124:
                mem[u] = mem[t]
                _73 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _73 = mem[96]
            idx = idx + 1
            s = _120 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _84 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
            revert with 0, 50
        _87 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _84
        require ext_code.size(address(_87))
        call address(_87).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _84
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_91] == bool(mem[_91])
        if not mem[_91]:
            revert with 0, 'approve failed'
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        _99 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _84
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _101 = mem[_75]
        mem[mem[64] + 164] = mem[_75]
        s = 0
        t = _75 + 32
        u = mem[64] + 196
        while s < _101:
            mem[u] = mem[t + 12 len 20]
            _73 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_99 + 100] = this.address
        mem[_99 + 132] = block.timestamp + (24 * 3600)
        require ext_code.size(address(_77))
        call address(_77).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _99 + (32 * _101) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_119]
        require mem[_119] <= test266151307()
        require _119 + return_data.size > _119 + mem[_119] + 31
        _123 = mem[_119 + mem[_119]]
        if mem[_119 + mem[_119]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_119 + mem[_119]]) + 1 < 0 or _119 + ceil32(return_data.size) + ceil32(32 * mem[_119 + mem[_119]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _119 + ceil32(return_data.size) + ceil32(32 * mem[_119 + mem[_119]]) + 1
        mem[_119 + ceil32(return_data.size)] = _123
        require _121 + (32 * _123) + 32 <= return_data.size
        t = _119 + _121 + 32
        u = _119 + ceil32(return_data.size) + 32
        s = 0
        while s < _123:
            mem[u] = mem[t]
            _73 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _73 = mem[96]
        idx = idx + 1
        s = _119 + ceil32(return_data.size)
        continue 
}

function sub_97c57cf5(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _72 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1
        mem[_72] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _72 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _72
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    _103 = mem[96]
    idx = 0
    s = 96
    while idx < _103:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _107 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        _109 = mem[(32 * idx) + 128]
        if 0 == idx:
            if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
                revert with 0, 50
            _114 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(_114))
            call address(_114).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == bool(mem[_120])
            if not mem[_120]:
                revert with 0, 'approve failed'
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            _131 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _134 = mem[_107]
            mem[mem[64] + 164] = mem[_107]
            s = 0
            t = _107 + 32
            u = mem[64] + 196
            while s < _134:
                mem[u] = mem[t + 12 len 20]
                _103 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_131 + 100] = this.address
            mem[_131 + 132] = block.timestamp + (24 * 3600)
            require ext_code.size(address(_109))
            call address(_109).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _131 + (32 * _134) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _158 = mem[_156]
            require mem[_156] <= test266151307()
            require _156 + return_data.size > _156 + mem[_156] + 31
            _160 = mem[_156 + mem[_156]]
            if mem[_156 + mem[_156]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_156 + mem[_156]]) + 1 < 0 or _156 + ceil32(return_data.size) + ceil32(32 * mem[_156 + mem[_156]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _156 + ceil32(return_data.size) + ceil32(32 * mem[_156 + mem[_156]]) + 1
            mem[_156 + ceil32(return_data.size)] = _160
            require _158 + (32 * _160) + 32 <= return_data.size
            t = _156 + _158 + 32
            u = _156 + ceil32(return_data.size) + 32
            s = 0
            while s < _160:
                mem[u] = mem[t]
                _103 = mem[96]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _103 = mem[96]
            idx = idx + 1
            s = _156 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _119 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
            revert with 0, 50
        _123 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _119
        require ext_code.size(address(_123))
        call address(_123).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _119
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_127] == bool(mem[_127])
        if not mem[_127]:
            revert with 0, 'approve failed'
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        _135 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _119
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _137 = mem[_107]
        mem[mem[64] + 164] = mem[_107]
        s = 0
        t = _107 + 32
        u = mem[64] + 196
        while s < _137:
            mem[u] = mem[t + 12 len 20]
            _103 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_135 + 100] = this.address
        mem[_135 + 132] = block.timestamp + (24 * 3600)
        require ext_code.size(address(_109))
        call address(_109).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _135 + (32 * _137) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_155]
        require mem[_155] <= test266151307()
        require _155 + return_data.size > _155 + mem[_155] + 31
        _159 = mem[_155 + mem[_155]]
        if mem[_155 + mem[_155]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_155 + mem[_155]]) + 1 < 0 or _155 + ceil32(return_data.size) + ceil32(32 * mem[_155 + mem[_155]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _155 + ceil32(return_data.size) + ceil32(32 * mem[_155 + mem[_155]]) + 1
        mem[_155 + ceil32(return_data.size)] = _159
        require _157 + (32 * _159) + 32 <= return_data.size
        t = _155 + _157 + 32
        u = _155 + ceil32(return_data.size) + 32
        s = 0
        while s < _159:
            mem[u] = mem[t]
            _103 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _103 = mem[96]
        idx = idx + 1
        s = _155 + ceil32(return_data.size)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_110] <= _74:
        revert with 0, 'non profit'
}

function sub_1ea3a4be(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    mem[100] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 96
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        _43 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_43] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_43 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_43 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not idx:
            if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                revert with 0, 50
            _54 = mem[_43 + 32]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(_54))
            call address(_54).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_61] == bool(mem[_61])
            if not mem[_61]:
                revert with 0, 'approve failed'
            if 120 > !block.timestamp:
                revert with 0, 17
            _73 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            s = 0
            t = _43 + 32
            u = mem[64] + 196
            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_73 + 100] = this.address
            mem[_73 + 132] = block.timestamp + 120
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _73 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_105]
            require mem[_105] <= test266151307()
            require _105 + return_data.size > _105 + mem[_105] + 31
            _113 = mem[_105 + mem[_105]]
            if mem[_105 + mem[_105]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_105 + mem[_105]]) + 1 < 0 or _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1
            mem[_105 + ceil32(return_data.size)] = _113
            require _109 + (32 * _113) + 32 <= return_data.size
            t = _105 + _109 + 32
            u = _105 + ceil32(return_data.size) + 32
            s = 0
            while s < _113:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _105 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _60 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 50
        _65 = mem[_43 + 32]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = _60
        require ext_code.size(address(_65))
        call address(_65).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), _60
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == bool(mem[_69])
        if not mem[_69]:
            revert with 0, 'approve failed'
        if 120 > !block.timestamp:
            revert with 0, 17
        _77 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _60
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        s = 0
        t = _43 + 32
        u = mem[64] + 196
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_77 + 100] = this.address
        mem[_77 + 132] = block.timestamp + 120
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _77 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _108 = mem[_104]
        require mem[_104] <= test266151307()
        require _104 + return_data.size > _104 + mem[_104] + 31
        _112 = mem[_104 + mem[_104]]
        if mem[_104 + mem[_104]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_104 + mem[_104]]) + 1 < 0 or _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1
        mem[_104 + ceil32(return_data.size)] = _112
        require _108 + (32 * _112) + 32 <= return_data.size
        t = _104 + _108 + 32
        u = _104 + ceil32(return_data.size) + 32
        s = 0
        while s < _112:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _104 + ceil32(return_data.size)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _42 = mem[_41]
    if mem[_41] <= ext_call.return_data[0]:
        revert with 0, '', 0
    if mem[_41] < ext_call.return_data[0]:
        revert with 0, 17
    if not mem[_41] - ext_call.return_data[0]:
        revert with 0, '', 0
    s = 0
    idx = mem[_41] - ext_call.return_data[0]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _97 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _42 - ext_call.return_data[0]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[_97]:
                revert with 0, 50
            mem[t + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _128 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _130 = mem[_97]
        mem[mem[64] + 36] = mem[_97]
        mem[mem[64] + 68 len ceil32(_130)] = mem[_97 + 32 len ceil32(_130)]
        if ceil32(_130) <= _130:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_130) + 32]
        mem[mem[64] + _130 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_130) + _128 + -mem[64] + 68
    mem[_97 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _42 - ext_call.return_data[0]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[_97]:
            revert with 0, 50
        mem[t + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _129 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _131 = mem[_97]
    mem[mem[64] + 36] = mem[_97]
    mem[mem[64] + 68 len ceil32(_131)] = mem[_97 + 32 len ceil32(_131)]
    if ceil32(_131) <= _131:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_131) + 32]
    mem[mem[64] + _131 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_131) + _129 + -mem[64] + 68
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(stor3)
    staticcall stor3.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 96
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 100)] <= test266151307()
    require arg5.length - cd[(arg5 + 100)] >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require cd[(arg5 + cd[(arg5 + 100)] + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225 < 224 or ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 224] = cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]
    require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 68
    t = ceil32(return_data.size) + 256
    while idx < cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 224
    require cd[(arg5 + cd[(arg5 + 100)] + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 226 < 225 or ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 226 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 226
    mem[ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225] = cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]
    require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 68
    t = ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257
    while idx < cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + 36)]:
        require cd[s] <= test266151307()
        require arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 99 < arg5 + arg5.length + 36
        if cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)] > test266151307():
            revert with 0, 65
        _86 = mem[64]
        if mem[64] + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 1
        mem[_86] = cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]
        require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]) + 100 <= arg5.length + 36
        u = 0
        v = arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 100
        w = _86 + 32
        while u < cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 68)] + cd[s] + 68)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _86
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225
    mem[ceil32(return_data.size) + 160] = cd[(arg5 + cd[(arg5 + 100)] + 100)]
    require cd[(arg5 + cd[(arg5 + 100)] + 132)] == address(cd[(arg5 + cd[(arg5 + 100)] + 132)])
    mem[ceil32(return_data.size) + 192] = cd[(arg5 + cd[(arg5 + 100)] + 132)]
    if address(cd[(arg5 + 36)]) != arg2:
        revert with 0, 'encoded data (borrowToken) does not match'
    if cd[(arg5 + 68)] != arg3:
        revert with 0, 'encoded data (borrowAmount) does not match'
    if arg3 > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_92] == bool(mem[_92])
    _94 = mem[ceil32(return_data.size) + 96]
    _121 = mem[mem[ceil32(return_data.size) + 96]]
    idx = 0
    s = 96
    while idx < _121:
        if idx >= mem[ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 225]:
            revert with 0, 50
        _123 = mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257]
        if idx >= mem[_94]:
            revert with 0, 50
        _126 = mem[(32 * idx) + _94 + 32]
        if 0 == idx:
            if 0 >= mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257]]:
                revert with 0, 50
            _130 = mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _94 + 44 len 20]
            mem[mem[64] + 36] = cd[(arg5 + cd[(arg5 + 100)] + 100)]
            require ext_code.size(address(_130))
            call address(_130).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[(arg5 + cd[(arg5 + 100)] + 100)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_135] == bool(mem[_135])
            if not mem[_135]:
                revert with 0, 'approve failed'
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            _145 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[(arg5 + cd[(arg5 + 100)] + 100)]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _148 = mem[_123]
            mem[mem[64] + 164] = mem[_123]
            s = 0
            t = _123 + 32
            u = mem[64] + 196
            while s < _148:
                mem[u] = mem[t + 12 len 20]
                _121 = mem[_94]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_145 + 100] = this.address
            mem[_145 + 132] = block.timestamp + (24 * 3600)
            require ext_code.size(address(_126))
            call address(_126).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _145 + (32 * _148) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _172 = mem[_170]
            require mem[_170] <= test266151307()
            require _170 + return_data.size > _170 + mem[_170] + 31
            _174 = mem[_170 + mem[_170]]
            if mem[_170 + mem[_170]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_170 + mem[_170]]) + 1 < 0 or _170 + ceil32(return_data.size) + ceil32(32 * mem[_170 + mem[_170]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _170 + ceil32(return_data.size) + ceil32(32 * mem[_170 + mem[_170]]) + 1
            mem[_170 + ceil32(return_data.size)] = _174
            require _172 + (32 * _174) + 32 <= return_data.size
            t = _170 + _172 + 32
            u = _170 + ceil32(return_data.size) + 32
            s = 0
            while s < _174:
                mem[u] = mem[t]
                _121 = mem[_94]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            _121 = mem[_94]
            idx = idx + 1
            s = _170 + ceil32(return_data.size)
            continue 
        if mem[s] < 1:
            revert with 0, 17
        if mem[s] - 1 >= mem[s]:
            revert with 0, 50
        _134 = mem[(32 * mem[s] - 1) + s + 32]
        if 0 >= mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257]]:
            revert with 0, 50
        _137 = mem[mem[(32 * idx) + ceil32(return_data.size) + ceil32(32 * cd[(arg5 + cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 36)]) + 257] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _94 + 44 len 20]
        mem[mem[64] + 36] = _134
        require ext_code.size(address(_137))
        call address(_137).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _134
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_141] == bool(mem[_141])
        if not mem[_141]:
            revert with 0, 'approve failed'
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        _149 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _134
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _151 = mem[_123]
        mem[mem[64] + 164] = mem[_123]
        s = 0
        t = _123 + 32
        u = mem[64] + 196
        while s < _151:
            mem[u] = mem[t + 12 len 20]
            _121 = mem[_94]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_149 + 100] = this.address
        mem[_149 + 132] = block.timestamp + (24 * 3600)
        require ext_code.size(address(_126))
        call address(_126).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _149 + (32 * _151) + -mem[64] + 192]
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
        if ceil32(32 * mem[_169 + mem[_169]]) + 1 < 0 or _169 + ceil32(return_data.size) + ceil32(32 * mem[_169 + mem[_169]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _169 + ceil32(return_data.size) + ceil32(32 * mem[_169 + mem[_169]]) + 1
        mem[_169 + ceil32(return_data.size)] = _173
        require _171 + (32 * _173) + 32 <= return_data.size
        t = _169 + _171 + 32
        u = _169 + ceil32(return_data.size) + 32
        s = 0
        while s < _173:
            mem[u] = mem[t]
            _121 = mem[_94]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _121 = mem[_94]
        idx = idx + 1
        s = _169 + ceil32(return_data.size)
        continue 
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}

function sub_4328ca2d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _96 = mem[_87]
            require mem[_87] == mem[_87 + 12 len 20]
            require ext_code.size(mem[_87 + 12 len 20])
            staticcall mem[_87 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _118 = mem[_115]
            require mem[_115] == mem[_115 + 18 len 14]
            _120 = mem[_115 + 32]
            require mem[_115 + 32] == mem[_115 + 50 len 14]
            require mem[_115 + 64] == mem[_115 + 92 len 4]
            require ext_code.size(address(_96))
            staticcall address(_96).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _128 = mem[_126]
            require mem[_126] == mem[_126 + 12 len 20]
            require ext_code.size(address(_96))
            staticcall address(_96).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _136 = mem[_135]
            require mem[_135] == mem[_135 + 12 len 20]
            _140 = mem[64]
            mem[64] = mem[64] + 224
            mem[_140] = address(_96)
            mem[_140 + 32] = address(_128)
            mem[_140 + 64] = address(_136)
            mem[_140 + 96] = Mask(112, 0, _118)
            mem[_140 + 128] = Mask(112, 0, _120)
            require ext_code.size(address(_128))
            staticcall address(_128).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_144] == mem[_144 + 31 len 1]
            mem[_140 + 160] = mem[_144 + 31 len 1]
            require ext_code.size(address(_136))
            staticcall address(_136).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_152] == mem[_152 + 31 len 1]
            mem[_140 + 192] = mem[_152 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _140
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _84 = mem[64]
        mem[mem[64]] = 32
        _86 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _86:
            _161 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_161 + 44 len 20]
            mem[t + 64] = mem[_161 + 76 len 20]
            mem[t + 96] = mem[_161 + 96]
            mem[t + 128] = mem[_161 + 128]
            mem[t + 160] = mem[_161 + 160]
            mem[t + 192] = mem[_161 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _84 + (224 * _86) + -mem[64] + 64
    mem[64] = (32 * arg1) + 352
    mem[(32 * arg1) + 128] = 0
    mem[(32 * arg1) + 160] = 0
    mem[(32 * arg1) + 192] = 0
    mem[(32 * arg1) + 224] = 0
    mem[(32 * arg1) + 256] = 0
    mem[(32 * arg1) + 288] = 0
    mem[(32 * arg1) + 320] = 0
    mem[var15002] = var15001
    if not var15003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _266 = mem[_255]
            require mem[_255] == mem[_255 + 12 len 20]
            require ext_code.size(mem[_255 + 12 len 20])
            staticcall mem[_255 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _286 = mem[_283]
            require mem[_283] == mem[_283 + 18 len 14]
            _288 = mem[_283 + 32]
            require mem[_283 + 32] == mem[_283 + 50 len 14]
            require mem[_283 + 64] == mem[_283 + 92 len 4]
            require ext_code.size(address(_266))
            staticcall address(_266).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _295 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _298 = mem[_295]
            require mem[_295] == mem[_295 + 12 len 20]
            require ext_code.size(address(_266))
            staticcall address(_266).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _306 = mem[_303]
            require mem[_303] == mem[_303 + 12 len 20]
            _309 = mem[64]
            mem[64] = mem[64] + 224
            mem[_309] = address(_266)
            mem[_309 + 32] = address(_298)
            mem[_309 + 64] = address(_306)
            mem[_309 + 96] = Mask(112, 0, _286)
            mem[_309 + 128] = Mask(112, 0, _288)
            require ext_code.size(address(_298))
            staticcall address(_298).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_312] == mem[_312 + 31 len 1]
            mem[_309 + 160] = mem[_312 + 31 len 1]
            require ext_code.size(address(_306))
            staticcall address(_306).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_321] == mem[_321 + 31 len 1]
            mem[_309 + 192] = mem[_321 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _309
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _253 = mem[64]
        mem[mem[64]] = 32
        _254 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _254:
            _330 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_330 + 44 len 20]
            mem[t + 64] = mem[_330 + 76 len 20]
            mem[t + 96] = mem[_330 + 96]
            mem[t + 128] = mem[_330 + 128]
            mem[t + 160] = mem[_330 + 160]
            mem[t + 192] = mem[_330 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _253 + (224 * _254) + -mem[64] + 64
    mem[64] = (32 * arg1) + 576
    mem[(32 * arg1) + 352] = 0
    mem[(32 * arg1) + 384] = 0
    mem[(32 * arg1) + 416] = 0
    mem[(32 * arg1) + 448] = 0
    mem[(32 * arg1) + 480] = 0
    mem[(32 * arg1) + 512] = 0
    mem[(32 * arg1) + 544] = 0
    mem[var19002] = var19001
    if not var19003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _434 = mem[_423]
            require mem[_423] == mem[_423 + 12 len 20]
            require ext_code.size(mem[_423 + 12 len 20])
            staticcall mem[_423 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _451 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _454 = mem[_451]
            require mem[_451] == mem[_451 + 18 len 14]
            _456 = mem[_451 + 32]
            require mem[_451 + 32] == mem[_451 + 50 len 14]
            require mem[_451 + 64] == mem[_451 + 92 len 4]
            require ext_code.size(address(_434))
            staticcall address(_434).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _466 = mem[_463]
            require mem[_463] == mem[_463 + 12 len 20]
            require ext_code.size(address(_434))
            staticcall address(_434).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _474 = mem[_471]
            require mem[_471] == mem[_471 + 12 len 20]
            _477 = mem[64]
            mem[64] = mem[64] + 224
            mem[_477] = address(_434)
            mem[_477 + 32] = address(_466)
            mem[_477 + 64] = address(_474)
            mem[_477 + 96] = Mask(112, 0, _454)
            mem[_477 + 128] = Mask(112, 0, _456)
            require ext_code.size(address(_466))
            staticcall address(_466).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _480 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_480] == mem[_480 + 31 len 1]
            mem[_477 + 160] = mem[_480 + 31 len 1]
            require ext_code.size(address(_474))
            staticcall address(_474).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_489] == mem[_489 + 31 len 1]
            mem[_477 + 192] = mem[_489 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _477
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 32
        _422 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _422:
            _498 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_498 + 44 len 20]
            mem[t + 64] = mem[_498 + 76 len 20]
            mem[t + 96] = mem[_498 + 96]
            mem[t + 128] = mem[_498 + 128]
            mem[t + 160] = mem[_498 + 160]
            mem[t + 192] = mem[_498 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _421 + (224 * _422) + -mem[64] + 64
    mem[64] = (32 * arg1) + 800
    mem[(32 * arg1) + 576] = 0
    mem[(32 * arg1) + 608] = 0
    mem[(32 * arg1) + 640] = 0
    mem[(32 * arg1) + 672] = 0
    mem[(32 * arg1) + 704] = 0
    mem[(32 * arg1) + 736] = 0
    mem[(32 * arg1) + 768] = 0
    mem[var23002] = var23001
    if not var23003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _591 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _602 = mem[_591]
            require mem[_591] == mem[_591 + 12 len 20]
            require ext_code.size(mem[_591 + 12 len 20])
            staticcall mem[_591 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _622 = mem[_619]
            require mem[_619] == mem[_619 + 18 len 14]
            _624 = mem[_619 + 32]
            require mem[_619 + 32] == mem[_619 + 50 len 14]
            require mem[_619 + 64] == mem[_619 + 92 len 4]
            require ext_code.size(address(_602))
            staticcall address(_602).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _634 = mem[_631]
            require mem[_631] == mem[_631 + 12 len 20]
            require ext_code.size(address(_602))
            staticcall address(_602).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _642 = mem[_639]
            require mem[_639] == mem[_639 + 12 len 20]
            _645 = mem[64]
            mem[64] = mem[64] + 224
            mem[_645] = address(_602)
            mem[_645 + 32] = address(_634)
            mem[_645 + 64] = address(_642)
            mem[_645 + 96] = Mask(112, 0, _622)
            mem[_645 + 128] = Mask(112, 0, _624)
            require ext_code.size(address(_634))
            staticcall address(_634).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _648 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_648] == mem[_648 + 31 len 1]
            mem[_645 + 160] = mem[_648 + 31 len 1]
            require ext_code.size(address(_642))
            staticcall address(_642).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _657 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_657] == mem[_657 + 31 len 1]
            mem[_645 + 192] = mem[_657 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _645
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _589 = mem[64]
        mem[mem[64]] = 32
        _590 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _590:
            _666 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_666 + 44 len 20]
            mem[t + 64] = mem[_666 + 76 len 20]
            mem[t + 96] = mem[_666 + 96]
            mem[t + 128] = mem[_666 + 128]
            mem[t + 160] = mem[_666 + 160]
            mem[t + 192] = mem[_666 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _589 + (224 * _590) + -mem[64] + 64
    mem[64] = (32 * arg1) + 1024
    mem[(32 * arg1) + 800] = 0
    mem[(32 * arg1) + 832] = 0
    mem[(32 * arg1) + 864] = 0
    mem[(32 * arg1) + 896] = 0
    mem[(32 * arg1) + 928] = 0
    mem[(32 * arg1) + 960] = 0
    mem[(32 * arg1) + 992] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _759 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _770 = mem[_759]
            require mem[_759] == mem[_759 + 12 len 20]
            require ext_code.size(mem[_759 + 12 len 20])
            staticcall mem[_759 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _787 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _790 = mem[_787]
            require mem[_787] == mem[_787 + 18 len 14]
            _792 = mem[_787 + 32]
            require mem[_787 + 32] == mem[_787 + 50 len 14]
            require mem[_787 + 64] == mem[_787 + 92 len 4]
            require ext_code.size(address(_770))
            staticcall address(_770).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _799 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _802 = mem[_799]
            require mem[_799] == mem[_799 + 12 len 20]
            require ext_code.size(address(_770))
            staticcall address(_770).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _807 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _810 = mem[_807]
            require mem[_807] == mem[_807 + 12 len 20]
            _813 = mem[64]
            mem[64] = mem[64] + 224
            mem[_813] = address(_770)
            mem[_813 + 32] = address(_802)
            mem[_813 + 64] = address(_810)
            mem[_813 + 96] = Mask(112, 0, _790)
            mem[_813 + 128] = Mask(112, 0, _792)
            require ext_code.size(address(_802))
            staticcall address(_802).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _816 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_816] == mem[_816 + 31 len 1]
            mem[_813 + 160] = mem[_816 + 31 len 1]
            require ext_code.size(address(_810))
            staticcall address(_810).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _825 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_825] == mem[_825 + 31 len 1]
            mem[_813 + 192] = mem[_825 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _813
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _757 = mem[64]
        mem[mem[64]] = 32
        _758 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _758:
            _834 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_834 + 44 len 20]
            mem[t + 64] = mem[_834 + 76 len 20]
            mem[t + 96] = mem[_834 + 96]
            mem[t + 128] = mem[_834 + 128]
            mem[t + 160] = mem[_834 + 160]
            mem[t + 192] = mem[_834 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _757 + (224 * _758) + -mem[64] + 64
    mem[64] = (32 * arg1) + 1248
    mem[(32 * arg1) + 1024] = 0
    mem[(32 * arg1) + 1056] = 0
    mem[(32 * arg1) + 1088] = 0
    mem[(32 * arg1) + 1120] = 0
    mem[(32 * arg1) + 1152] = 0
    mem[(32 * arg1) + 1184] = 0
    mem[(32 * arg1) + 1216] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _927 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _938 = mem[_927]
            require mem[_927] == mem[_927 + 12 len 20]
            require ext_code.size(mem[_927 + 12 len 20])
            staticcall mem[_927 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _955 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _958 = mem[_955]
            require mem[_955] == mem[_955 + 18 len 14]
            _960 = mem[_955 + 32]
            require mem[_955 + 32] == mem[_955 + 50 len 14]
            require mem[_955 + 64] == mem[_955 + 92 len 4]
            require ext_code.size(address(_938))
            staticcall address(_938).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _967 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _970 = mem[_967]
            require mem[_967] == mem[_967 + 12 len 20]
            require ext_code.size(address(_938))
            staticcall address(_938).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _975 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _978 = mem[_975]
            require mem[_975] == mem[_975 + 12 len 20]
            _981 = mem[64]
            mem[64] = mem[64] + 224
            mem[_981] = address(_938)
            mem[_981 + 32] = address(_970)
            mem[_981 + 64] = address(_978)
            mem[_981 + 96] = Mask(112, 0, _958)
            mem[_981 + 128] = Mask(112, 0, _960)
            require ext_code.size(address(_970))
            staticcall address(_970).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_984] == mem[_984 + 31 len 1]
            mem[_981 + 160] = mem[_984 + 31 len 1]
            require ext_code.size(address(_978))
            staticcall address(_978).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _993 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_993] == mem[_993 + 31 len 1]
            mem[_981 + 192] = mem[_993 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _981
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _925 = mem[64]
        mem[mem[64]] = 32
        _926 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _926:
            _1002 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1002 + 44 len 20]
            mem[t + 64] = mem[_1002 + 76 len 20]
            mem[t + 96] = mem[_1002 + 96]
            mem[t + 128] = mem[_1002 + 128]
            mem[t + 160] = mem[_1002 + 160]
            mem[t + 192] = mem[_1002 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _925 + (224 * _926) + -mem[64] + 64
    mem[64] = (32 * arg1) + 1472
    mem[(32 * arg1) + 1248] = 0
    mem[(32 * arg1) + 1280] = 0
    mem[(32 * arg1) + 1312] = 0
    mem[(32 * arg1) + 1344] = 0
    mem[(32 * arg1) + 1376] = 0
    mem[(32 * arg1) + 1408] = 0
    mem[(32 * arg1) + 1440] = 0
    mem[var35002] = var35001
    if not var35003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1106 = mem[_1095]
            require mem[_1095] == mem[_1095 + 12 len 20]
            require ext_code.size(mem[_1095 + 12 len 20])
            staticcall mem[_1095 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1126 = mem[_1123]
            require mem[_1123] == mem[_1123 + 18 len 14]
            _1128 = mem[_1123 + 32]
            require mem[_1123 + 32] == mem[_1123 + 50 len 14]
            require mem[_1123 + 64] == mem[_1123 + 92 len 4]
            require ext_code.size(address(_1106))
            staticcall address(_1106).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1138 = mem[_1135]
            require mem[_1135] == mem[_1135 + 12 len 20]
            require ext_code.size(address(_1106))
            staticcall address(_1106).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1146 = mem[_1143]
            require mem[_1143] == mem[_1143 + 12 len 20]
            _1149 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1149] = address(_1106)
            mem[_1149 + 32] = address(_1138)
            mem[_1149 + 64] = address(_1146)
            mem[_1149 + 96] = Mask(112, 0, _1126)
            mem[_1149 + 128] = Mask(112, 0, _1128)
            require ext_code.size(address(_1138))
            staticcall address(_1138).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1152] == mem[_1152 + 31 len 1]
            mem[_1149 + 160] = mem[_1152 + 31 len 1]
            require ext_code.size(address(_1146))
            staticcall address(_1146).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1161] == mem[_1161 + 31 len 1]
            mem[_1149 + 192] = mem[_1161 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1149
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1093 = mem[64]
        mem[mem[64]] = 32
        _1094 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1094:
            _1170 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1170 + 44 len 20]
            mem[t + 64] = mem[_1170 + 76 len 20]
            mem[t + 96] = mem[_1170 + 96]
            mem[t + 128] = mem[_1170 + 128]
            mem[t + 160] = mem[_1170 + 160]
            mem[t + 192] = mem[_1170 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1093 + (224 * _1094) + -mem[64] + 64
    mem[64] = (32 * arg1) + 1696
    mem[(32 * arg1) + 1472] = 0
    mem[(32 * arg1) + 1504] = 0
    mem[(32 * arg1) + 1536] = 0
    mem[(32 * arg1) + 1568] = 0
    mem[(32 * arg1) + 1600] = 0
    mem[(32 * arg1) + 1632] = 0
    mem[(32 * arg1) + 1664] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1274 = mem[_1263]
            require mem[_1263] == mem[_1263 + 12 len 20]
            require ext_code.size(mem[_1263 + 12 len 20])
            staticcall mem[_1263 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1294 = mem[_1291]
            require mem[_1291] == mem[_1291 + 18 len 14]
            _1296 = mem[_1291 + 32]
            require mem[_1291 + 32] == mem[_1291 + 50 len 14]
            require mem[_1291 + 64] == mem[_1291 + 92 len 4]
            require ext_code.size(address(_1274))
            staticcall address(_1274).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1306 = mem[_1303]
            require mem[_1303] == mem[_1303 + 12 len 20]
            require ext_code.size(address(_1274))
            staticcall address(_1274).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1314 = mem[_1311]
            require mem[_1311] == mem[_1311 + 12 len 20]
            _1317 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1317] = address(_1274)
            mem[_1317 + 32] = address(_1306)
            mem[_1317 + 64] = address(_1314)
            mem[_1317 + 96] = Mask(112, 0, _1294)
            mem[_1317 + 128] = Mask(112, 0, _1296)
            require ext_code.size(address(_1306))
            staticcall address(_1306).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1320] == mem[_1320 + 31 len 1]
            mem[_1317 + 160] = mem[_1320 + 31 len 1]
            require ext_code.size(address(_1314))
            staticcall address(_1314).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1329] == mem[_1329 + 31 len 1]
            mem[_1317 + 192] = mem[_1329 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1317
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1261 = mem[64]
        mem[mem[64]] = 32
        _1262 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1262:
            _1338 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1338 + 44 len 20]
            mem[t + 64] = mem[_1338 + 76 len 20]
            mem[t + 96] = mem[_1338 + 96]
            mem[t + 128] = mem[_1338 + 128]
            mem[t + 160] = mem[_1338 + 160]
            mem[t + 192] = mem[_1338 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1261 + (224 * _1262) + -mem[64] + 64
    mem[64] = (32 * arg1) + 1920
    mem[(32 * arg1) + 1696] = 0
    mem[(32 * arg1) + 1728] = 0
    mem[(32 * arg1) + 1760] = 0
    mem[(32 * arg1) + 1792] = 0
    mem[(32 * arg1) + 1824] = 0
    mem[(32 * arg1) + 1856] = 0
    mem[(32 * arg1) + 1888] = 0
    mem[var43002] = var43001
    if not var43003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1442 = mem[_1431]
            require mem[_1431] == mem[_1431 + 12 len 20]
            require ext_code.size(mem[_1431 + 12 len 20])
            staticcall mem[_1431 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1459 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1462 = mem[_1459]
            require mem[_1459] == mem[_1459 + 18 len 14]
            _1464 = mem[_1459 + 32]
            require mem[_1459 + 32] == mem[_1459 + 50 len 14]
            require mem[_1459 + 64] == mem[_1459 + 92 len 4]
            require ext_code.size(address(_1442))
            staticcall address(_1442).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1474 = mem[_1471]
            require mem[_1471] == mem[_1471 + 12 len 20]
            require ext_code.size(address(_1442))
            staticcall address(_1442).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1482 = mem[_1479]
            require mem[_1479] == mem[_1479 + 12 len 20]
            _1485 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1485] = address(_1442)
            mem[_1485 + 32] = address(_1474)
            mem[_1485 + 64] = address(_1482)
            mem[_1485 + 96] = Mask(112, 0, _1462)
            mem[_1485 + 128] = Mask(112, 0, _1464)
            require ext_code.size(address(_1474))
            staticcall address(_1474).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1488 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1488] == mem[_1488 + 31 len 1]
            mem[_1485 + 160] = mem[_1488 + 31 len 1]
            require ext_code.size(address(_1482))
            staticcall address(_1482).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1497 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1497] == mem[_1497 + 31 len 1]
            mem[_1485 + 192] = mem[_1497 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1485
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1429 = mem[64]
        mem[mem[64]] = 32
        _1430 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1430:
            _1506 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1506 + 44 len 20]
            mem[t + 64] = mem[_1506 + 76 len 20]
            mem[t + 96] = mem[_1506 + 96]
            mem[t + 128] = mem[_1506 + 128]
            mem[t + 160] = mem[_1506 + 160]
            mem[t + 192] = mem[_1506 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1429 + (224 * _1430) + -mem[64] + 64
    mem[64] = (32 * arg1) + 2144
    mem[(32 * arg1) + 1920] = 0
    mem[(32 * arg1) + 1952] = 0
    mem[(32 * arg1) + 1984] = 0
    mem[(32 * arg1) + 2016] = 0
    mem[(32 * arg1) + 2048] = 0
    mem[(32 * arg1) + 2080] = 0
    mem[(32 * arg1) + 2112] = 0
    mem[var47002] = var47001
    if not var47003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg2))
            staticcall address(arg2).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1610 = mem[_1599]
            require mem[_1599] == mem[_1599 + 12 len 20]
            require ext_code.size(mem[_1599 + 12 len 20])
            staticcall mem[_1599 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1630 = mem[_1627]
            require mem[_1627] == mem[_1627 + 18 len 14]
            _1632 = mem[_1627 + 32]
            require mem[_1627 + 32] == mem[_1627 + 50 len 14]
            require mem[_1627 + 64] == mem[_1627 + 92 len 4]
            require ext_code.size(address(_1610))
            staticcall address(_1610).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1642 = mem[_1639]
            require mem[_1639] == mem[_1639 + 12 len 20]
            require ext_code.size(address(_1610))
            staticcall address(_1610).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1647 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1650 = mem[_1647]
            require mem[_1647] == mem[_1647 + 12 len 20]
            _1653 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1653] = address(_1610)
            mem[_1653 + 32] = address(_1642)
            mem[_1653 + 64] = address(_1650)
            mem[_1653 + 96] = Mask(112, 0, _1630)
            mem[_1653 + 128] = Mask(112, 0, _1632)
            require ext_code.size(address(_1642))
            staticcall address(_1642).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1656 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1656] == mem[_1656 + 31 len 1]
            mem[_1653 + 160] = mem[_1656 + 31 len 1]
            require ext_code.size(address(_1650))
            staticcall address(_1650).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1665] == mem[_1665 + 31 len 1]
            mem[_1653 + 192] = mem[_1665 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1653
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    # nil
}

function sub_474d083d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg1
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 128
    if not arg1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _92 = mem[_90]
            require mem[_90] == mem[_90 + 12 len 20]
            require ext_code.size(mem[_90 + 12 len 20])
            staticcall mem[_90 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _122 = mem[_118]
            require mem[_118] == mem[_118 + 18 len 14]
            _124 = mem[_118 + 32]
            require mem[_118 + 32] == mem[_118 + 50 len 14]
            require mem[_118 + 64] == mem[_118 + 92 len 4]
            require ext_code.size(address(_92))
            staticcall address(_92).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _132 = mem[_130]
            require mem[_130] == mem[_130 + 12 len 20]
            require ext_code.size(address(_92))
            staticcall address(_92).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _140 = mem[_139]
            require mem[_139] == mem[_139 + 12 len 20]
            _144 = mem[64]
            mem[64] = mem[64] + 224
            mem[_144] = address(_92)
            mem[_144 + 32] = address(_132)
            mem[_144 + 64] = address(_140)
            mem[_144 + 96] = Mask(112, 0, _122)
            mem[_144 + 128] = Mask(112, 0, _124)
            require ext_code.size(address(_132))
            staticcall address(_132).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_148] == mem[_148 + 31 len 1]
            mem[_144 + 160] = mem[_148 + 31 len 1]
            require ext_code.size(address(_140))
            staticcall address(_140).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_156] == mem[_156 + 31 len 1]
            mem[_144 + 192] = mem[_156 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _144
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _89 = mem[64]
        mem[mem[64]] = 32
        _91 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _91:
            _165 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_165 + 44 len 20]
            mem[t + 64] = mem[_165 + 76 len 20]
            mem[t + 96] = mem[_165 + 96]
            mem[t + 128] = mem[_165 + 128]
            mem[t + 160] = mem[_165 + 160]
            mem[t + 192] = mem[_165 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _89 + (224 * _91) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 352
    mem[ceil32(return_data.size) + (32 * arg1) + 128] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 160] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 192] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 224] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 256] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 288] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 320] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_258]
            require mem[_258] == mem[_258 + 12 len 20]
            require ext_code.size(mem[_258 + 12 len 20])
            staticcall mem[_258 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _290 = mem[_287]
            require mem[_287] == mem[_287 + 18 len 14]
            _292 = mem[_287 + 32]
            require mem[_287 + 32] == mem[_287 + 50 len 14]
            require mem[_287 + 64] == mem[_287 + 92 len 4]
            require ext_code.size(address(_262))
            staticcall address(_262).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_299]
            require mem[_299] == mem[_299 + 12 len 20]
            require ext_code.size(address(_262))
            staticcall address(_262).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _310 = mem[_307]
            require mem[_307] == mem[_307 + 12 len 20]
            _313 = mem[64]
            mem[64] = mem[64] + 224
            mem[_313] = address(_262)
            mem[_313 + 32] = address(_302)
            mem[_313 + 64] = address(_310)
            mem[_313 + 96] = Mask(112, 0, _290)
            mem[_313 + 128] = Mask(112, 0, _292)
            require ext_code.size(address(_302))
            staticcall address(_302).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _316 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_316] == mem[_316 + 31 len 1]
            mem[_313 + 160] = mem[_316 + 31 len 1]
            require ext_code.size(address(_310))
            staticcall address(_310).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_325] == mem[_325 + 31 len 1]
            mem[_313 + 192] = mem[_325 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _313
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _257 = mem[64]
        mem[mem[64]] = 32
        _259 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _259:
            _334 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_334 + 44 len 20]
            mem[t + 64] = mem[_334 + 76 len 20]
            mem[t + 96] = mem[_334 + 96]
            mem[t + 128] = mem[_334 + 128]
            mem[t + 160] = mem[_334 + 160]
            mem[t + 192] = mem[_334 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _257 + (224 * _259) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 576
    mem[ceil32(return_data.size) + (32 * arg1) + 352] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 384] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 416] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 448] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 480] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 512] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 544] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _430 = mem[_426]
            require mem[_426] == mem[_426 + 12 len 20]
            require ext_code.size(mem[_426 + 12 len 20])
            staticcall mem[_426 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _458 = mem[_455]
            require mem[_455] == mem[_455 + 18 len 14]
            _460 = mem[_455 + 32]
            require mem[_455 + 32] == mem[_455 + 50 len 14]
            require mem[_455 + 64] == mem[_455 + 92 len 4]
            require ext_code.size(address(_430))
            staticcall address(_430).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _470 = mem[_467]
            require mem[_467] == mem[_467 + 12 len 20]
            require ext_code.size(address(_430))
            staticcall address(_430).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _478 = mem[_475]
            require mem[_475] == mem[_475 + 12 len 20]
            _481 = mem[64]
            mem[64] = mem[64] + 224
            mem[_481] = address(_430)
            mem[_481 + 32] = address(_470)
            mem[_481 + 64] = address(_478)
            mem[_481 + 96] = Mask(112, 0, _458)
            mem[_481 + 128] = Mask(112, 0, _460)
            require ext_code.size(address(_470))
            staticcall address(_470).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_484] == mem[_484 + 31 len 1]
            mem[_481 + 160] = mem[_484 + 31 len 1]
            require ext_code.size(address(_478))
            staticcall address(_478).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _493 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_493] == mem[_493 + 31 len 1]
            mem[_481 + 192] = mem[_493 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _481
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _425 = mem[64]
        mem[mem[64]] = 32
        _427 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _427:
            _502 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_502 + 44 len 20]
            mem[t + 64] = mem[_502 + 76 len 20]
            mem[t + 96] = mem[_502 + 96]
            mem[t + 128] = mem[_502 + 128]
            mem[t + 160] = mem[_502 + 160]
            mem[t + 192] = mem[_502 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _425 + (224 * _427) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 800
    mem[ceil32(return_data.size) + (32 * arg1) + 576] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 608] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 640] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 672] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 704] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 736] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 768] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _598 = mem[_594]
            require mem[_594] == mem[_594 + 12 len 20]
            require ext_code.size(mem[_594 + 12 len 20])
            staticcall mem[_594 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _623 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _626 = mem[_623]
            require mem[_623] == mem[_623 + 18 len 14]
            _628 = mem[_623 + 32]
            require mem[_623 + 32] == mem[_623 + 50 len 14]
            require mem[_623 + 64] == mem[_623 + 92 len 4]
            require ext_code.size(address(_598))
            staticcall address(_598).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _635 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _638 = mem[_635]
            require mem[_635] == mem[_635 + 12 len 20]
            require ext_code.size(address(_598))
            staticcall address(_598).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _646 = mem[_643]
            require mem[_643] == mem[_643 + 12 len 20]
            _649 = mem[64]
            mem[64] = mem[64] + 224
            mem[_649] = address(_598)
            mem[_649 + 32] = address(_638)
            mem[_649 + 64] = address(_646)
            mem[_649 + 96] = Mask(112, 0, _626)
            mem[_649 + 128] = Mask(112, 0, _628)
            require ext_code.size(address(_638))
            staticcall address(_638).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_652] == mem[_652 + 31 len 1]
            mem[_649 + 160] = mem[_652 + 31 len 1]
            require ext_code.size(address(_646))
            staticcall address(_646).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_661] == mem[_661 + 31 len 1]
            mem[_649 + 192] = mem[_661 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _649
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _593 = mem[64]
        mem[mem[64]] = 32
        _595 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _595:
            _670 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_670 + 44 len 20]
            mem[t + 64] = mem[_670 + 76 len 20]
            mem[t + 96] = mem[_670 + 96]
            mem[t + 128] = mem[_670 + 128]
            mem[t + 160] = mem[_670 + 160]
            mem[t + 192] = mem[_670 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _593 + (224 * _595) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 1024
    mem[ceil32(return_data.size) + (32 * arg1) + 800] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 832] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 864] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 896] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 928] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 960] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 992] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _762 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _766 = mem[_762]
            require mem[_762] == mem[_762 + 12 len 20]
            require ext_code.size(mem[_762 + 12 len 20])
            staticcall mem[_762 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _794 = mem[_791]
            require mem[_791] == mem[_791 + 18 len 14]
            _796 = mem[_791 + 32]
            require mem[_791 + 32] == mem[_791 + 50 len 14]
            require mem[_791 + 64] == mem[_791 + 92 len 4]
            require ext_code.size(address(_766))
            staticcall address(_766).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _806 = mem[_803]
            require mem[_803] == mem[_803 + 12 len 20]
            require ext_code.size(address(_766))
            staticcall address(_766).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _811 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_811]
            require mem[_811] == mem[_811 + 12 len 20]
            _817 = mem[64]
            mem[64] = mem[64] + 224
            mem[_817] = address(_766)
            mem[_817 + 32] = address(_806)
            mem[_817 + 64] = address(_814)
            mem[_817 + 96] = Mask(112, 0, _794)
            mem[_817 + 128] = Mask(112, 0, _796)
            require ext_code.size(address(_806))
            staticcall address(_806).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_820] == mem[_820 + 31 len 1]
            mem[_817 + 160] = mem[_820 + 31 len 1]
            require ext_code.size(address(_814))
            staticcall address(_814).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_829] == mem[_829 + 31 len 1]
            mem[_817 + 192] = mem[_829 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _817
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _761 = mem[64]
        mem[mem[64]] = 32
        _763 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _763:
            _838 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_838 + 44 len 20]
            mem[t + 64] = mem[_838 + 76 len 20]
            mem[t + 96] = mem[_838 + 96]
            mem[t + 128] = mem[_838 + 128]
            mem[t + 160] = mem[_838 + 160]
            mem[t + 192] = mem[_838 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _761 + (224 * _763) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 1248
    mem[ceil32(return_data.size) + (32 * arg1) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1056] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1088] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1120] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1152] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1184] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1216] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _934 = mem[_930]
            require mem[_930] == mem[_930 + 12 len 20]
            require ext_code.size(mem[_930 + 12 len 20])
            staticcall mem[_930 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _959 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _962 = mem[_959]
            require mem[_959] == mem[_959 + 18 len 14]
            _964 = mem[_959 + 32]
            require mem[_959 + 32] == mem[_959 + 50 len 14]
            require mem[_959 + 64] == mem[_959 + 92 len 4]
            require ext_code.size(address(_934))
            staticcall address(_934).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _974 = mem[_971]
            require mem[_971] == mem[_971 + 12 len 20]
            require ext_code.size(address(_934))
            staticcall address(_934).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _979 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _982 = mem[_979]
            require mem[_979] == mem[_979 + 12 len 20]
            _985 = mem[64]
            mem[64] = mem[64] + 224
            mem[_985] = address(_934)
            mem[_985 + 32] = address(_974)
            mem[_985 + 64] = address(_982)
            mem[_985 + 96] = Mask(112, 0, _962)
            mem[_985 + 128] = Mask(112, 0, _964)
            require ext_code.size(address(_974))
            staticcall address(_974).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _988 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_988] == mem[_988 + 31 len 1]
            mem[_985 + 160] = mem[_988 + 31 len 1]
            require ext_code.size(address(_982))
            staticcall address(_982).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _997 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_997] == mem[_997 + 31 len 1]
            mem[_985 + 192] = mem[_997 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _985
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _929 = mem[64]
        mem[mem[64]] = 32
        _931 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _931:
            _1006 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1006 + 44 len 20]
            mem[t + 64] = mem[_1006 + 76 len 20]
            mem[t + 96] = mem[_1006 + 96]
            mem[t + 128] = mem[_1006 + 128]
            mem[t + 160] = mem[_1006 + 160]
            mem[t + 192] = mem[_1006 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _929 + (224 * _931) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 1472
    mem[ceil32(return_data.size) + (32 * arg1) + 1248] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1280] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1312] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1344] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1376] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1408] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1440] = 0
    mem[var44002] = var44001
    if not var44003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1098 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1102 = mem[_1098]
            require mem[_1098] == mem[_1098 + 12 len 20]
            require ext_code.size(mem[_1098 + 12 len 20])
            staticcall mem[_1098 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1130 = mem[_1127]
            require mem[_1127] == mem[_1127 + 18 len 14]
            _1132 = mem[_1127 + 32]
            require mem[_1127 + 32] == mem[_1127 + 50 len 14]
            require mem[_1127 + 64] == mem[_1127 + 92 len 4]
            require ext_code.size(address(_1102))
            staticcall address(_1102).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1142 = mem[_1139]
            require mem[_1139] == mem[_1139 + 12 len 20]
            require ext_code.size(address(_1102))
            staticcall address(_1102).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1150 = mem[_1147]
            require mem[_1147] == mem[_1147 + 12 len 20]
            _1153 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1153] = address(_1102)
            mem[_1153 + 32] = address(_1142)
            mem[_1153 + 64] = address(_1150)
            mem[_1153 + 96] = Mask(112, 0, _1130)
            mem[_1153 + 128] = Mask(112, 0, _1132)
            require ext_code.size(address(_1142))
            staticcall address(_1142).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1156] == mem[_1156 + 31 len 1]
            mem[_1153 + 160] = mem[_1156 + 31 len 1]
            require ext_code.size(address(_1150))
            staticcall address(_1150).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1165] == mem[_1165 + 31 len 1]
            mem[_1153 + 192] = mem[_1165 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _1153
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1097 = mem[64]
        mem[mem[64]] = 32
        _1099 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _1099:
            _1174 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1174 + 44 len 20]
            mem[t + 64] = mem[_1174 + 76 len 20]
            mem[t + 96] = mem[_1174 + 96]
            mem[t + 128] = mem[_1174 + 128]
            mem[t + 160] = mem[_1174 + 160]
            mem[t + 192] = mem[_1174 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1097 + (224 * _1099) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 1696
    mem[ceil32(return_data.size) + (32 * arg1) + 1472] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1504] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1536] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1568] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1600] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1632] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1664] = 0
    mem[var48002] = var48001
    if not var48003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1270 = mem[_1266]
            require mem[_1266] == mem[_1266 + 12 len 20]
            require ext_code.size(mem[_1266 + 12 len 20])
            staticcall mem[_1266 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1295 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1298 = mem[_1295]
            require mem[_1295] == mem[_1295 + 18 len 14]
            _1300 = mem[_1295 + 32]
            require mem[_1295 + 32] == mem[_1295 + 50 len 14]
            require mem[_1295 + 64] == mem[_1295 + 92 len 4]
            require ext_code.size(address(_1270))
            staticcall address(_1270).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1310 = mem[_1307]
            require mem[_1307] == mem[_1307 + 12 len 20]
            require ext_code.size(address(_1270))
            staticcall address(_1270).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1318 = mem[_1315]
            require mem[_1315] == mem[_1315 + 12 len 20]
            _1321 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1321] = address(_1270)
            mem[_1321 + 32] = address(_1310)
            mem[_1321 + 64] = address(_1318)
            mem[_1321 + 96] = Mask(112, 0, _1298)
            mem[_1321 + 128] = Mask(112, 0, _1300)
            require ext_code.size(address(_1310))
            staticcall address(_1310).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1324] == mem[_1324 + 31 len 1]
            mem[_1321 + 160] = mem[_1324 + 31 len 1]
            require ext_code.size(address(_1318))
            staticcall address(_1318).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1333] == mem[_1333 + 31 len 1]
            mem[_1321 + 192] = mem[_1333 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _1321
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1265 = mem[64]
        mem[mem[64]] = 32
        _1267 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _1267:
            _1342 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1342 + 44 len 20]
            mem[t + 64] = mem[_1342 + 76 len 20]
            mem[t + 96] = mem[_1342 + 96]
            mem[t + 128] = mem[_1342 + 128]
            mem[t + 160] = mem[_1342 + 160]
            mem[t + 192] = mem[_1342 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1265 + (224 * _1267) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 1920
    mem[ceil32(return_data.size) + (32 * arg1) + 1696] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1728] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1760] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1792] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1824] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1856] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1888] = 0
    mem[var52002] = var52001
    if not var52003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1438 = mem[_1434]
            require mem[_1434] == mem[_1434 + 12 len 20]
            require ext_code.size(mem[_1434 + 12 len 20])
            staticcall mem[_1434 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1466 = mem[_1463]
            require mem[_1463] == mem[_1463 + 18 len 14]
            _1468 = mem[_1463 + 32]
            require mem[_1463 + 32] == mem[_1463 + 50 len 14]
            require mem[_1463 + 64] == mem[_1463 + 92 len 4]
            require ext_code.size(address(_1438))
            staticcall address(_1438).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1478 = mem[_1475]
            require mem[_1475] == mem[_1475 + 12 len 20]
            require ext_code.size(address(_1438))
            staticcall address(_1438).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1486 = mem[_1483]
            require mem[_1483] == mem[_1483 + 12 len 20]
            _1489 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1489] = address(_1438)
            mem[_1489 + 32] = address(_1478)
            mem[_1489 + 64] = address(_1486)
            mem[_1489 + 96] = Mask(112, 0, _1466)
            mem[_1489 + 128] = Mask(112, 0, _1468)
            require ext_code.size(address(_1478))
            staticcall address(_1478).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1492 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1492] == mem[_1492 + 31 len 1]
            mem[_1489 + 160] = mem[_1492 + 31 len 1]
            require ext_code.size(address(_1486))
            staticcall address(_1486).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1501] == mem[_1501 + 31 len 1]
            mem[_1489 + 192] = mem[_1501 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _1489
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1433 = mem[64]
        mem[mem[64]] = 32
        _1435 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _1435:
            _1510 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1510 + 44 len 20]
            mem[t + 64] = mem[_1510 + 76 len 20]
            mem[t + 96] = mem[_1510 + 96]
            mem[t + 128] = mem[_1510 + 128]
            mem[t + 160] = mem[_1510 + 160]
            mem[t + 192] = mem[_1510 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1433 + (224 * _1435) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg1) + 2144
    mem[ceil32(return_data.size) + (32 * arg1) + 1920] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1952] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 1984] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 2016] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 2048] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 2080] = 0
    mem[ceil32(return_data.size) + (32 * arg1) + 2112] = 0
    mem[var56002] = var56001
    if not var56003 - 1:
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1602 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1606 = mem[_1602]
            require mem[_1602] == mem[_1602 + 12 len 20]
            require ext_code.size(mem[_1602 + 12 len 20])
            staticcall mem[_1602 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1634 = mem[_1631]
            require mem[_1631] == mem[_1631 + 18 len 14]
            _1636 = mem[_1631 + 32]
            require mem[_1631 + 32] == mem[_1631 + 50 len 14]
            require mem[_1631 + 64] == mem[_1631 + 92 len 4]
            require ext_code.size(address(_1606))
            staticcall address(_1606).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1646 = mem[_1643]
            require mem[_1643] == mem[_1643 + 12 len 20]
            require ext_code.size(address(_1606))
            staticcall address(_1606).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1651 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1654 = mem[_1651]
            require mem[_1651] == mem[_1651 + 12 len 20]
            _1657 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1657] = address(_1606)
            mem[_1657 + 32] = address(_1646)
            mem[_1657 + 64] = address(_1654)
            mem[_1657 + 96] = Mask(112, 0, _1634)
            mem[_1657 + 128] = Mask(112, 0, _1636)
            require ext_code.size(address(_1646))
            staticcall address(_1646).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1660] == mem[_1660 + 31 len 1]
            mem[_1657 + 160] = mem[_1660 + 31 len 1]
            require ext_code.size(address(_1654))
            staticcall address(_1654).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1669] == mem[_1669 + 31 len 1]
            mem[_1657 + 192] = mem[_1669 + 31 len 1]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _1657
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    # nil
}



}
