contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed.'
}

function sub_340d22c7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    s = cd[4]
    t = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        s = 0
        t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
        u = mem[64] + 100
        while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] <= test266151307()
        require _28 + return_data.size > _28 + mem[_28] + 31
        _30 = mem[_28 + mem[_28]]
        if mem[_28 + mem[_28]] > test266151307():
            revert with 0, 65
        if (32 * mem[_28 + mem[_28]]) + 32 < 0 or _28 + ceil32(return_data.size) + (32 * mem[_28 + mem[_28]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _28 + ceil32(return_data.size) + (32 * mem[_28 + mem[_28]]) + 32
        mem[_28 + ceil32(return_data.size)] = _30
        require return_data.size >= _29 + (32 * _30) + 32
        t = _28 + _29 + 32
        u = _28 + ceil32(return_data.size) + 32
        s = 0
        while s < _30:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _30 < 1:
            revert with 0, 17
        if _30 - 1 >= _30:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]
        t = mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]
        continue 
    return t
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if msg.sender != 0x1b96b92314c44b159149f7e0303511fb2fc4774f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only permissioned UniswapV2 pair can call'
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 0, 65
    if (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 < 96 or (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 > test266151307():
        revert with 0, 65
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68
    idx = 0
    s = arg4 + cd[(arg4 + 100)] + 68
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
    if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
        revert with 0, 65
    if (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 160 < 128 or (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require arg4 + cd[(arg4 + 132)] + cd[s] + 99 < arg4 + arg4.length + 36
        if cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)] > test266151307():
            revert with 0, 65
        _72 = mem[64]
        if mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 < mem[64] or mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 32
        mem[_72] = cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]
        require arg4.length + 36 >= cd[(arg4 + 132)] + cd[s] + (32 * cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]) + 100
        u = 0
        v = arg4 + cd[(arg4 + 132)] + cd[s] + 100
        w = _72 + 32
        while u < cd[(arg4 + cd[(arg4 + 132)] + cd[s] + 68)]:
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
    if 120 > !block.timestamp:
        revert with 0, 17
    _104 = mem[96]
    idx = 0
    s = cd[(arg4 + 68)]
    while idx < _104:
        if idx >= mem[96]:
            revert with 0, 50
        _106 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128]:
            revert with 0, 50
        if 0 >= mem[mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]]:
            revert with 0, 50
        _110 = mem[mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_110))
        call address(_110).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_113] == bool(mem[_113])
        if not mem[_113]:
            revert with 0, 'approve failed.'
        if idx >= mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128]:
            revert with 0, 50
        _118 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160]
        _119 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _120 = mem[_118]
        mem[mem[64] + 164] = mem[_118]
        s = 0
        t = mem[64] + 196
        u = _118 + 32
        while s < _120:
            mem[t] = mem[u + 12 len 20]
            _104 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_119 + 100] = this.address
        mem[_119 + 132] = block.timestamp + 120
        require ext_code.size(address(_106))
        call address(_106).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _119 + (32 * _120) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _138 = mem[_137]
        require mem[_137] <= test266151307()
        require _137 + return_data.size > _137 + mem[_137] + 31
        _139 = mem[_137 + mem[_137]]
        if mem[_137 + mem[_137]] > test266151307():
            revert with 0, 65
        if (32 * mem[_137 + mem[_137]]) + 32 < 0 or _137 + ceil32(return_data.size) + (32 * mem[_137 + mem[_137]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _137 + ceil32(return_data.size) + (32 * mem[_137 + mem[_137]]) + 32
        mem[_137 + ceil32(return_data.size)] = _139
        require return_data.size >= _138 + (32 * _139) + 32
        t = _137 + _138 + 32
        u = _137 + ceil32(return_data.size) + 32
        s = 0
        while s < _139:
            mem[u] = mem[t]
            _104 = mem[96]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _139 < 1:
            revert with 0, 17
        if _139 - 1 >= _139:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        _104 = mem[96]
        idx = idx + 1
        s = mem[(32 * _139 - 1) + _137 + ceil32(return_data.size) + 32]
        continue 
    if cd[(arg4 + 68)] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 1 > !(3 * cd[(arg4 + 68)] / 997):
        revert with 0, 17
    if cd[(arg4 + 68)] > !((3 * cd[(arg4 + 68)] / 997) + 1):
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_124] == bool(mem[_124])
}

function sub_95261006(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    s = cd[36]
    t = 0
    while idx < ('cd', 100).length:
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        if idx >= ('cd', 132).length:
            revert with 0, 50
        require cd[(cd[132] + (32 * idx) + 36)] < calldata.size + -cd[132] - 67
        require cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
        s = 0
        t = cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 68
        u = mem[64] + 100
        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
        staticcall address(cd[((32 * idx) + cd[100] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _101 = mem[_96]
        require mem[_96] <= test266151307()
        require _96 + return_data.size > _96 + mem[_96] + 31
        _106 = mem[_96 + mem[_96]]
        if mem[_96 + mem[_96]] > test266151307():
            revert with 0, 65
        if (32 * mem[_96 + mem[_96]]) + 32 < 0 or _96 + ceil32(return_data.size) + (32 * mem[_96 + mem[_96]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _96 + ceil32(return_data.size) + (32 * mem[_96 + mem[_96]]) + 32
        mem[_96 + ceil32(return_data.size)] = _106
        require return_data.size >= _101 + (32 * _106) + 32
        t = _96 + _101 + 32
        u = _96 + ceil32(return_data.size) + 32
        s = 0
        while s < _106:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _106 < 1:
            revert with 0, 17
        if _106 - 1 >= _106:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * _106 - 1) + _96 + ceil32(return_data.size) + 32]
        t = mem[(32 * _106 - 1) + _96 + ceil32(return_data.size) + 32]
        continue 
    if cd[36] > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 1 > !(3 * cd[36] / 997):
        revert with 0, 17
    if cd[68] > !((3 * cd[36] / 997) + 1):
        revert with 0, 17
    if t <= cd[68] + (3 * cd[36] / 997) + 1:
        revert with 0, 'U1'
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_52]
    require mem[_52] == mem[_52 + 12 len 20]
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_59] == mem[_59 + 12 len 20]
    if address(cd[4]) == address(_53):
        if address(cd[4]) == mem[_59 + 12 len 20]:
            _63 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 128
            mem[mem[64] + 160] = ('cd', 100).length
            t = 0
            u = cd[100] + 36
            v = mem[64] + 192
            while t < ('cd', 100).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_63 + 128] = (32 * ('cd', 100).length) + 160
            mem[_63 + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
            idx = 0
            s = cd[132] + 36
            t = _63 + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
            u = _63 + (32 * ('cd', 100).length) + 224
            while idx < ('cd', 132).length:
                mem[u] = t + -_63 + -(32 * ('cd', 100).length) - 224
                require cd[s] < calldata.size + -cd[132] - 67
                require cd[(cd[132] + cd[s] + 36)] <= test266151307()
                require cd[132] + 36 <= calldata.size - (32 * cd[(cd[132] + cd[s] + 36)])
                mem[t] = cd[(cd[132] + cd[s] + 36)]
                v = 0
                w = cd[132] + cd[s] + 68
                x = t + 32
                while v < cd[(cd[132] + cd[s] + 36)]:
                    require cd[w] == address(cd[w])
                    mem[x] = address(cd[w])
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = x
                u = u + 32
                continue 
            _121 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[t + 4] = cd[36]
            mem[t + 36] = cd[36]
            mem[t + 68] = this.address
            mem[t + 100] = 128
            _126 = mem[_121]
            mem[t + 132] = mem[_121]
            mem[t + 164 len ceil32(_126)] = mem[_121 + 32 len ceil32(_126)]
            if ceil32(_126) > _126:
                mem[t + _126 + 164] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[36], cd[36], address(this.address), 128, mem[t + 132 len ceil32(_126) + 32]
        else:
            _64 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 128
            mem[mem[64] + 160] = ('cd', 100).length
            t = 0
            u = cd[100] + 36
            v = mem[64] + 192
            while t < ('cd', 100).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_64 + 128] = (32 * ('cd', 100).length) + 160
            mem[_64 + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
            idx = 0
            s = cd[132] + 36
            t = _64 + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
            u = _64 + (32 * ('cd', 100).length) + 224
            while idx < ('cd', 132).length:
                mem[u] = t + -_64 + -(32 * ('cd', 100).length) - 224
                require cd[s] < calldata.size + -cd[132] - 67
                require cd[(cd[132] + cd[s] + 36)] <= test266151307()
                require cd[132] + 36 <= calldata.size - (32 * cd[(cd[132] + cd[s] + 36)])
                mem[t] = cd[(cd[132] + cd[s] + 36)]
                v = 0
                w = cd[132] + cd[s] + 68
                x = t + 32
                while v < cd[(cd[132] + cd[s] + 36)]:
                    require cd[w] == address(cd[w])
                    mem[x] = address(cd[w])
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = x
                u = u + 32
                continue 
            _122 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[t + 4] = cd[36]
            mem[t + 36] = 0
            mem[t + 68] = this.address
            mem[t + 100] = 128
            _127 = mem[_122]
            mem[t + 132] = mem[_122]
            mem[t + 164 len ceil32(_127)] = mem[_122 + 32 len ceil32(_127)]
            if ceil32(_127) > _127:
                mem[t + _127 + 164] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[36], 0, address(this.address), 128, mem[t + 132 len ceil32(_127) + 32]
    else:
        if address(cd[4]) == mem[_59 + 12 len 20]:
            _65 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 128
            mem[mem[64] + 160] = ('cd', 100).length
            t = 0
            u = cd[100] + 36
            v = mem[64] + 192
            while t < ('cd', 100).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_65 + 128] = (32 * ('cd', 100).length) + 160
            mem[_65 + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
            idx = 0
            s = cd[132] + 36
            t = _65 + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
            u = _65 + (32 * ('cd', 100).length) + 224
            while idx < ('cd', 132).length:
                mem[u] = t + -_65 + -(32 * ('cd', 100).length) - 224
                require cd[s] < calldata.size + -cd[132] - 67
                require cd[(cd[132] + cd[s] + 36)] <= test266151307()
                require cd[132] + 36 <= calldata.size - (32 * cd[(cd[132] + cd[s] + 36)])
                mem[t] = cd[(cd[132] + cd[s] + 36)]
                v = 0
                w = cd[132] + cd[s] + 68
                x = t + 32
                while v < cd[(cd[132] + cd[s] + 36)]:
                    require cd[w] == address(cd[w])
                    mem[x] = address(cd[w])
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = x
                u = u + 32
                continue 
            _123 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[t + 4] = 0
            mem[t + 36] = cd[36]
            mem[t + 68] = this.address
            mem[t + 100] = 128
            _128 = mem[_123]
            mem[t + 132] = mem[_123]
            mem[t + 164 len ceil32(_128)] = mem[_123 + 32 len ceil32(_128)]
            if ceil32(_128) > _128:
                mem[t + _128 + 164] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[36], address(this.address), 128, mem[t + 132 len ceil32(_128) + 32]
        else:
            _66 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 128
            mem[mem[64] + 160] = ('cd', 100).length
            t = 0
            u = cd[100] + 36
            v = mem[64] + 192
            while t < ('cd', 100).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_66 + 128] = (32 * ('cd', 100).length) + 160
            mem[_66 + (32 * ('cd', 100).length) + 192] = ('cd', 132).length
            idx = 0
            s = cd[132] + 36
            t = _66 + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
            u = _66 + (32 * ('cd', 100).length) + 224
            while idx < ('cd', 132).length:
                mem[u] = t + -_66 + -(32 * ('cd', 100).length) - 224
                require cd[s] < calldata.size + -cd[132] - 67
                require cd[(cd[132] + cd[s] + 36)] <= test266151307()
                require cd[132] + 36 <= calldata.size - (32 * cd[(cd[132] + cd[s] + 36)])
                mem[t] = cd[(cd[132] + cd[s] + 36)]
                v = 0
                w = cd[132] + cd[s] + 68
                x = t + 32
                while v < cd[(cd[132] + cd[s] + 36)]:
                    require cd[w] == address(cd[w])
                    mem[x] = address(cd[w])
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = x
                u = u + 32
                continue 
            _124 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            mem[t] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[t + 4] = 0
            mem[t + 36] = 0
            mem[t + 68] = this.address
            mem[t + 100] = 128
            _129 = mem[_124]
            mem[t + 132] = mem[_124]
            mem[t + 164 len ceil32(_129)] = mem[_124 + 32 len ceil32(_129)]
            if ceil32(_129) > _129:
                mem[t + _129 + 164] = 0
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, mem[t + 132 len ceil32(_129) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
