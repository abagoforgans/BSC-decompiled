contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_11897c9a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
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
    require cd[36] == cd[36]
    mem[(32 * ('cd', 4).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + 132] = cd[36]
    mem[(32 * ('cd', 4).length) + 164] = 64
    mem[(32 * ('cd', 4).length) + 196] = ('cd', 4).length
    idx = 0
    s = 128
    t = (32 * ('cd', 4).length) + 228
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 4).length) + 132 len (96 * ('cd', 4).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _31 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _32 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 4).length) + _31 + 160
    t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 160
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _32
    mem[mem[64] + 64 len 32 * _32] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _32]
    return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
}

function sub_8db8bc90(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
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
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require 0 < ('cd', 4).length
    mem[128] = address(cd[36])
    require 0 < ('cd', 4).length
    require 1 < ('cd', 4).length
    mem[160] = uint64(cd[36]) << 96
    require 2 < ('cd', 4).length
    mem[192] = address(cd[68])
    mem[(32 * ('cd', 4).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + 132] = cd[100]
    mem[(32 * ('cd', 4).length) + 164] = 64
    mem[(32 * ('cd', 4).length) + 196] = ('cd', 4).length
    if 0 >= ('cd', 4).length:
        require ext_code.size(stor0)
        call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args cd[100], 64, ('cd', 4).length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _53 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
        require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
        _54 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]
        require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128] <= test266151307()
        require (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 32 >= 0
        mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 160
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]
        require _53 + (32 * _54) + 32 <= return_data.size
        idx = 0
        s = (32 * ('cd', 4).length) + _53 + 160
        t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 160
        while idx < _54:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _87 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = ('cd', 4).length
        if 0 >= ('cd', 4).length:
            mem[mem[64] + 32] = 96
            mem[mem[64] + 96] = _54
            mem[mem[64] + 128 len 32 * _54] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _54]
            return 64, 96, ('cd', 4).length, _54, mem[mem[64] + 128 len 32 * _54]
        mem[mem[64] + 96] = uint64(cd[36]) << 96
        idx = 1
        s = 160
        t = mem[64] + 128
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_87 + 32] = (32 * ('cd', 4).length - 1) + 128
        mem[_87 + (32 * ('cd', 4).length - 1) + 128] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
        mem[_87 + (32 * ('cd', 4).length - 1) + 160 len 32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]]
        return memory
          from mem[64]
           len _87 + (32 * ('cd', 4).length - 1) + (32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]) + -mem[64] + 160
    mem[(32 * ('cd', 4).length) + 228] = address(cd[36])
    idx = 1
    s = 160
    t = (32 * ('cd', 4).length) + 260
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args cd[100], Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + 228 len (32 * ('cd', 4).length - 1) + 32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _89 = mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32
    require mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 159 < (32 * ('cd', 4).length) + return_data.size + 128
    _91 = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]
    require mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 4).length) + mem[(32 * ('cd', 4).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]
    require _89 + (32 * _91) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 4).length) + _89 + 160
    t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 160
    while idx < _91:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _117 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = ('cd', 4).length
    if 0 >= ('cd', 4).length:
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _91
        mem[mem[64] + 128 len 32 * _91] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * _91]
        return 64, 96, ('cd', 4).length, _91, mem[mem[64] + 128 len 32 * _91]
    mem[mem[64] + 96] = uint64(cd[36]) << 96
    idx = 1
    s = 160
    t = mem[64] + 128
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * ('cd', 4).length - 1) + 128
    mem[_117 + (32 * ('cd', 4).length - 1) + 128] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]
    mem[_117 + (32 * ('cd', 4).length - 1) + 160 len 32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]] = mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160 len 32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]]
    return memory
      from mem[64]
       len _117 + (32 * ('cd', 4).length - 1) + (32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128]) + -mem[64] + 160
}



}
