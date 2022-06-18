contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_af382795(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[416 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[12 len 20]
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 576] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 608] = mem[ceil32(return_data.size) + 460 len 20]
    mem[(4 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + 492 len 20]
    return address(arg1), 
           mem[(4 * ceil32(return_data.size)) + 608 len 64],
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}

function sub_d4a5e746(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _95 = mem[_84]
            require mem[_84] == mem[_84 + 18 len 14]
            _101 = mem[_84 + 32]
            require mem[_84 + 32] == mem[_84 + 50 len 14]
            require mem[_84 + 64] == mem[_84 + 92 len 4]
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = Mask(112, 0, _95)
            mem[_106 + 32] = Mask(112, 0, _101)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _106
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 32
        _83 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _83:
            _112 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_112 + 50 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _79 + (64 * _83) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + 129] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _111 = mem[96]
    idx = 0
    while idx < _111:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _127 = mem[_122]
        require mem[_122] == mem[_122 + 18 len 14]
        _128 = mem[_122 + 32]
        require mem[_122 + 32] == mem[_122 + 50 len 14]
        require mem[_122 + 64] == mem[_122 + 92 len 4]
        _130 = mem[64]
        mem[64] = mem[64] + 64
        mem[_130] = Mask(112, 0, _127)
        mem[_130 + 32] = Mask(112, 0, _128)
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _130
        if idx == -1:
            revert with 'NH{q', 17
        _111 = mem[96]
        idx = idx + 1
        continue 
    _117 = mem[64]
    mem[mem[64]] = 32
    _121 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _121:
        _132 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_132 + 50 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _117 + (64 * _121) + -mem[64] + 64
}

function sub_f858bfd9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3 - arg2
    mem[64] = (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        idx = 0
        while idx < arg3 - arg2:
            if idx > !arg2:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = idx + arg2
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _79 = mem[_76]
            require mem[_76] == mem[_76 + 12 len 20]
            _90 = mem[64]
            mem[64] = mem[64] + 160
            mem[_90] = 0
            mem[_90 + 32] = 0
            mem[_90 + 64] = 0
            mem[_90 + 96] = 0
            mem[_90 + 128] = 0
            staticcall address(_79).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _97 = mem[_93]
            require mem[_93] == mem[_93 + 18 len 14]
            _99 = mem[_93 + 32]
            require mem[_93 + 32] == mem[_93 + 50 len 14]
            require mem[_93 + 64] == mem[_93 + 92 len 4]
            _103 = mem[64]
            mem[64] = mem[64] + 160
            mem[_103] = address(_79)
            staticcall address(_79).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_106] == mem[_106 + 12 len 20]
            mem[_103 + 32] = mem[_106 + 12 len 20]
            staticcall address(_79).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_116] == mem[_116 + 12 len 20]
            mem[_103 + 64] = mem[_116 + 12 len 20]
            mem[_103 + 96] = Mask(112, 0, _97)
            mem[_103 + 128] = Mask(112, 0, _99)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _103
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _65 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _65:
            _124 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_124 + 44 len 20]
            mem[s + 64] = mem[_124 + 76 len 20]
            mem[s + 96] = mem[_124 + 114 len 14]
            mem[s + 128] = mem[_124 + 146 len 14]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _64 + (160 * _65) + -mem[64] + 64
    mem[64] = (32 * arg3 - arg2) + 288
    mem[(32 * arg3 - arg2) + 128] = 0
    mem[(32 * arg3 - arg2) + 160] = 0
    mem[(32 * arg3 - arg2) + 192] = 0
    mem[(32 * arg3 - arg2) + 224] = 0
    mem[(32 * arg3 - arg2) + 256] = 0
    mem[128] = (32 * arg3 - arg2) + 128
    s = 128
    idx = arg3 - arg2
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * arg3 - arg2) + 128] = 0
        mem[(32 * arg3 - arg2) + 160] = 0
        mem[(32 * arg3 - arg2) + 192] = 0
        mem[(32 * arg3 - arg2) + 224] = 0
        mem[(32 * arg3 - arg2) + 256] = 0
        mem[s + 32] = (32 * arg3 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3 - arg2:
        if idx > !arg2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = idx + arg2
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _143 = mem[_142]
        require mem[_142] == mem[_142 + 12 len 20]
        _144 = mem[64]
        mem[64] = mem[64] + 160
        mem[_144] = 0
        mem[_144 + 32] = 0
        mem[_144 + 64] = 0
        mem[_144 + 96] = 0
        mem[_144 + 128] = 0
        staticcall address(_143).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _148 = mem[_147]
        require mem[_147] == mem[_147 + 18 len 14]
        _149 = mem[_147 + 32]
        require mem[_147 + 32] == mem[_147 + 50 len 14]
        require mem[_147 + 64] == mem[_147 + 92 len 4]
        _151 = mem[64]
        mem[64] = mem[64] + 160
        mem[_151] = address(_143)
        staticcall address(_143).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_154] == mem[_154 + 12 len 20]
        mem[_151 + 32] = mem[_154 + 12 len 20]
        staticcall address(_143).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_158] == mem[_158 + 12 len 20]
        mem[_151 + 64] = mem[_158 + 12 len 20]
        mem[_151 + 96] = Mask(112, 0, _148)
        mem[_151 + 128] = Mask(112, 0, _149)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _151
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _131 = mem[64]
    mem[mem[64]] = 32
    _132 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _132:
        _161 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_161 + 44 len 20]
        mem[s + 64] = mem[_161 + 76 len 20]
        mem[s + 96] = mem[_161 + 114 len 14]
        mem[s + 128] = mem[_161 + 146 len 14]
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _131 + (160 * _132) + -mem[64] + 64
}



}
