contract main {




// =====================  Runtime code  =====================


array of address sub_cc632a07;
array of address sub_08454b48;
address owner;

function sub_08454b48(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_08454b48.length
    return sub_08454b48[arg1]
}

function owner() payable {
    return owner
}

function sub_bcb23784(?) payable {
    return sub_cc632a07.length
}

function sub_cc632a07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_cc632a07.length
    return sub_cc632a07[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    owner = arg1
}

function sub_ccdc36f7(?) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    sub_cc632a07.length++
    sub_cc632a07[sub_cc632a07.length] = arg1
    sub_08454b48.length++
    sub_08454b48[sub_08454b48.length] = arg2
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    require ext_code.size(arg1)
    if arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_72882732(?) payable {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    require sub_cc632a07.length - 1 < sub_cc632a07.length
    require arg1 < sub_cc632a07.length
    require sub_cc632a07.length - 1 < sub_cc632a07.length
    sub_cc632a07[sub_cc632a07.length] = sub_cc632a07[arg1]
    sub_cc632a07[arg1] = sub_cc632a07[sub_cc632a07.length]
    require sub_cc632a07.length
    sub_cc632a07[sub_cc632a07.length] = 0
    sub_cc632a07.length--
    require sub_08454b48.length - 1 < sub_08454b48.length
    require arg1 < sub_08454b48.length
    require sub_08454b48.length - 1 < sub_08454b48.length
    sub_08454b48[sub_08454b48.length] = sub_08454b48[arg1]
    sub_08454b48[arg1] = sub_08454b48[sub_08454b48.length]
    require sub_08454b48.length
    sub_08454b48[sub_08454b48.length] = 0
    sub_08454b48.length--
}

function sub_f264f689(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require owner == msg.sender
    mem[ceil32(arg2.length) + 160] = Mask(32, 224, sha3(arg2[all]))
    mem[ceil32(arg2.length) + 164] = arg3
    mem[ceil32(arg2.length) + 196] = arg4
    mem[ceil32(arg2.length) + 228] = arg5
    mem[ceil32(arg2.length) + 128] = 100
    mem[64] = ceil32(arg2.length) + 260
    _7 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 260 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 260] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 260])
    call arg1.mem[ceil32(arg2.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 264 len _7 - 4]
    require ext_call.success
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_772467f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if sub_cc632a07.length != sub_08454b48.length:
        revert with 0, 'error0'
    idx = 0
    s = 0
    t = 0
    while idx < sub_cc632a07.length:
        require idx < sub_08454b48.length
        mem[0] = 1
        require 0 < mem[96]
        require 1 < mem[96]
        _46 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_46)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].0xe6a43905 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_46)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            t = t
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        _58 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _60 = mem[96]
        u = 0
        while u < 32 * _60:
            mem[mem[64] + u + 100] = mem[u + 128]
            u = u + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _60) + _58 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _79 = mem[_78]
        require mem[_78] <= 4294967296
        require mem[_78] + 32 <= return_data.size
        require mem[mem[_78] + _78] <= 4294967296 and mem[_78] + (32 * mem[mem[_78] + _78]) + 32 <= return_data.size
        mem[_78 + ceil32(return_data.size)] = mem[mem[_78] + _78]
        _82 = mem[_79 + _78]
        u = 0
        while u < 32 * _82:
            mem[_78 + ceil32(return_data.size) + u + 32] = mem[_79 + _78 + u + 32]
            u = u + 32
            continue 
        mem[64] = (32 * _82) + _78 + ceil32(return_data.size) + 32
        require mem[_78 + ceil32(return_data.size)] - 1 < mem[_78 + ceil32(return_data.size)]
        if t >= mem[(32 * mem[_78 + ceil32(return_data.size)] - 1) + _78 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require mem[_78 + ceil32(return_data.size)] - 1 < mem[_78 + ceil32(return_data.size)]
        _97 = mem[(32 * mem[_78 + ceil32(return_data.size)] - 1) + _78 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        s = sub_cc632a07[idx]
        t = _97
        continue 
    return t, address(s)
}

function sub_f3de0a3f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 224
    mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
    if sub_cc632a07.length != sub_08454b48.length:
        revert with 0, 'error0'
    idx = 0
    s = 0
    t = 0
    while idx < sub_cc632a07.length:
        require idx < sub_08454b48.length
        mem[0] = 1
        require 0 < mem[96]
        require 1 < mem[96]
        _96 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_96)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].0xe6a43905 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_96)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            t = t
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _125 = mem[96]
        u = 0
        while u < 32 * mem[96]:
            mem[mem[64] + u + 100] = mem[u + 128]
            u = u + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _125) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _179 = mem[_175]
        require mem[_175] <= 4294967296
        require mem[_175] + 32 <= return_data.size
        require mem[mem[_175] + _175] <= 4294967296 and mem[_175] + (32 * mem[mem[_175] + _175]) + 32 <= return_data.size
        mem[_175 + ceil32(return_data.size)] = mem[mem[_175] + _175]
        _185 = mem[_179 + _175]
        u = 0
        while u < 32 * _185:
            mem[_175 + ceil32(return_data.size) + u + 32] = mem[_179 + _175 + u + 32]
            u = u + 32
            continue 
        mem[64] = (32 * _185) + _175 + ceil32(return_data.size) + 32
        require mem[_175 + ceil32(return_data.size)] - 1 < mem[_175 + ceil32(return_data.size)]
        if t >= mem[(32 * mem[_175 + ceil32(return_data.size)] - 1) + _175 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require mem[_175 + ceil32(return_data.size)] - 1 < mem[_175 + ceil32(return_data.size)]
        _232 = mem[(32 * mem[_175 + ceil32(return_data.size)] - 1) + _175 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        s = sub_cc632a07[idx]
        t = _232
        continue 
    require mem[96] - 1 < mem[96]
    _90 = mem[(32 * mem[96] - 1) + 128]
    require 0 < mem[96]
    require 0 < mem[96]
    require mem[96] - 1 < mem[96]
    mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
    mem[128] = address(_90)
    if sub_cc632a07.length != sub_08454b48.length:
        revert with 0, 'error0'
    idx = 0
    u = 0
    v = 0
    while idx < sub_cc632a07.length:
        require idx < sub_08454b48.length
        mem[0] = 1
        require 0 < mem[96]
        require 1 < mem[96]
        _176 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_176)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].0xe6a43905 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_176)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            u = u
            v = v
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            idx = idx + 1
            u = u
            v = v
            continue 
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        _201 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _203 = mem[96]
        s = 0
        while s < 32 * _203:
            mem[mem[64] + s + 100] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _203) + _201 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _230 = mem[_227]
        require mem[_227] <= 4294967296
        require mem[_227] + 32 <= return_data.size
        require mem[mem[_227] + _227] <= 4294967296 and mem[_227] + (32 * mem[mem[_227] + _227]) + 32 <= return_data.size
        mem[_227 + ceil32(return_data.size)] = mem[mem[_227] + _227]
        _235 = mem[_230 + _227]
        s = 0
        while s < 32 * _235:
            mem[_227 + ceil32(return_data.size) + s + 32] = mem[_230 + _227 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _235) + _227 + ceil32(return_data.size) + 32
        require mem[_227 + ceil32(return_data.size)] - 1 < mem[_227 + ceil32(return_data.size)]
        if v >= mem[(32 * mem[_227 + ceil32(return_data.size)] - 1) + _227 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            u = u
            v = v
            continue 
        require mem[_227 + ceil32(return_data.size)] - 1 < mem[_227 + ceil32(return_data.size)]
        _250 = mem[(32 * mem[_227 + ceil32(return_data.size)] - 1) + _227 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        u = sub_cc632a07[idx]
        v = _250
        continue 
    return arg2, t, v >> 512, address(s), address(u)
}

function sub_c0d21fac(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
    mem[64] = (32 * arg1.length) + 320
    mem[(32 * arg1.length) + 224 len 96] = call.data[calldata.size len 96]
    if sub_cc632a07.length != sub_08454b48.length:
        revert with 0, 'error0'
    idx = 0
    s = 0
    t = 0
    while idx < sub_cc632a07.length:
        require idx < sub_08454b48.length
        mem[0] = 1
        require 0 < mem[96]
        require 1 < mem[96]
        _208 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_208)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].0xe6a43905 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_208)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            t = t
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _237 = mem[96]
        u = 0
        while u < 32 * mem[96]:
            mem[mem[64] + u + 100] = mem[u + 128]
            u = u + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _237) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _402 = mem[_397]
        require mem[_397] <= 4294967296
        require mem[_397] + 32 <= return_data.size
        require mem[mem[_397] + _397] <= 4294967296 and mem[_397] + (32 * mem[mem[_397] + _397]) + 32 <= return_data.size
        mem[_397 + ceil32(return_data.size)] = mem[mem[_397] + _397]
        _409 = mem[_402 + _397]
        u = 0
        while u < 32 * _409:
            mem[_397 + ceil32(return_data.size) + u + 32] = mem[_402 + _397 + u + 32]
            u = u + 32
            continue 
        mem[64] = (32 * _409) + _397 + ceil32(return_data.size) + 32
        require mem[_397 + ceil32(return_data.size)] - 1 < mem[_397 + ceil32(return_data.size)]
        if t >= mem[(32 * mem[_397 + ceil32(return_data.size)] - 1) + _397 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require mem[_397 + ceil32(return_data.size)] - 1 < mem[_397 + ceil32(return_data.size)]
        _573 = mem[(32 * mem[_397 + ceil32(return_data.size)] - 1) + _397 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        s = sub_cc632a07[idx]
        t = _573
        continue 
    require mem[96] - 1 < mem[96]
    _202 = mem[(32 * mem[96] - 1) + 128]
    require 0 < mem[96]
    require 0 < mem[96]
    require mem[96] - 1 < mem[96]
    mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
    mem[128] = address(_202)
    if sub_cc632a07.length != sub_08454b48.length:
        revert with 0, 'error0'
    idx = 0
    u = 0
    v = 0
    while idx < sub_cc632a07.length:
        require idx < sub_08454b48.length
        mem[0] = 1
        require 0 < mem[96]
        require 1 < mem[96]
        _399 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_399)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].0xe6a43905 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_399)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            u = u
            v = v
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            idx = idx + 1
            u = u
            v = v
            continue 
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        _436 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _438 = mem[96]
        s = 0
        while s < 32 * _438:
            mem[mem[64] + s + 100] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _438) + _436 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _566 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _571 = mem[_566]
        require mem[_566] <= 4294967296
        require mem[_566] + 32 <= return_data.size
        require mem[mem[_566] + _566] <= 4294967296 and mem[_566] + (32 * mem[mem[_566] + _566]) + 32 <= return_data.size
        mem[_566 + ceil32(return_data.size)] = mem[mem[_566] + _566]
        _579 = mem[_571 + _566]
        s = 0
        while s < 32 * _579:
            mem[_566 + ceil32(return_data.size) + s + 32] = mem[_571 + _566 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _579) + _566 + ceil32(return_data.size) + 32
        require mem[_566 + ceil32(return_data.size)] - 1 < mem[_566 + ceil32(return_data.size)]
        if v >= mem[(32 * mem[_566 + ceil32(return_data.size)] - 1) + _566 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            u = u
            v = v
            continue 
        require mem[_566 + ceil32(return_data.size)] - 1 < mem[_566 + ceil32(return_data.size)]
        _816 = mem[(32 * mem[_566 + ceil32(return_data.size)] - 1) + _566 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        u = sub_cc632a07[idx]
        v = _816
        continue 
    _392 = mem[64]
    mem[64] = mem[64] + 96
    mem[_392] = arg2
    mem[_392 + 32] = t
    mem[_392 + 64] = v
    if 1000 * v <= arg2 * arg3:
        return arg2, t, v >> 512, address(s), address(u)
    _414 = mem[64]
    mem[64] = mem[64] + 64
    mem[_414] = 30
    mem[_414 + 32] = 'SafeMath: subtraction overflow'
    if arg2 * arg3 > 1000 * v:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    t = (1000 * v) - (arg2 * arg3)
    w = u
    x = s
    y = _392
    z = arg2
    while idx < 10:
        if idx >= 3:
            _569 = mem[64]
            mem[64] = mem[64] + 96
            mem[_569 len 96] = call.data[calldata.size len 96]
            _577 = mem[64]
            mem[64] = mem[64] + 96
            mem[_577 len 96] = call.data[calldata.size len 96]
            if sub_cc632a07.length != sub_08454b48.length:
                revert with 0, 'error0'
            s = 0
            u = 0
            v = 0
            while s < sub_cc632a07.length:
                require s < sub_08454b48.length
                mem[0] = 1
                require 0 < mem[96]
                require 1 < mem[96]
                _808 = mem[160]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = address(_808)
                require ext_code.size(sub_08454b48[s])
                staticcall sub_08454b48[s].0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_808)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    s = s + 1
                    u = u
                    v = v
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    s = s + 1
                    u = u
                    v = v
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    s = s + 1
                    u = u
                    v = v
                    continue 
                require s < sub_cc632a07.length
                mem[0] = 0
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 2 * z
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _866 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[mem[64] + idx + 100] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_cc632a07[s])
                staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _866) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _994 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1002 = mem[_994]
                require mem[_994] <= 4294967296
                require mem[_994] + 32 <= return_data.size
                require mem[mem[_994] + _994] <= 4294967296 and mem[_994] + (32 * mem[mem[_994] + _994]) + 32 <= return_data.size
                mem[_994 + ceil32(return_data.size)] = mem[mem[_994] + _994]
                _1018 = mem[_1002 + _994]
                idx = 0
                while idx < 32 * _1018:
                    mem[_994 + ceil32(return_data.size) + idx + 32] = mem[_1002 + _994 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _1018) + _994 + ceil32(return_data.size) + 32
                require mem[_994 + ceil32(return_data.size)] - 1 < mem[_994 + ceil32(return_data.size)]
                if v >= mem[(32 * mem[_994 + ceil32(return_data.size)] - 1) + _994 + ceil32(return_data.size) + 32]:
                    s = s + 1
                    u = u
                    v = v
                    continue 
                require mem[_994 + ceil32(return_data.size)] - 1 < mem[_994 + ceil32(return_data.size)]
                _1150 = mem[(32 * mem[_994 + ceil32(return_data.size)] - 1) + _994 + ceil32(return_data.size) + 32]
                require s < sub_cc632a07.length
                mem[0] = 0
                s = s + 1
                u = sub_cc632a07[s]
                v = _1150
                continue 
            require mem[96] - 1 < mem[96]
            _796 = mem[(32 * mem[96] - 1) + 128]
            require 0 < mem[96]
            require 0 < mem[96]
            require mem[96] - 1 < mem[96]
            mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
            mem[128] = address(_796)
            if sub_cc632a07.length != sub_08454b48.length:
                revert with 0, 'error0'
            s = 0
            a = 0
            b = 0
            while s < sub_cc632a07.length:
                require s < sub_08454b48.length
                mem[0] = 1
                require 0 < mem[96]
                require 1 < mem[96]
                _999 = mem[160]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = address(_999)
                require ext_code.size(sub_08454b48[s])
                staticcall sub_08454b48[s].0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_999)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    s = s + 1
                    a = a
                    b = b
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    s = s + 1
                    a = a
                    b = b
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    s = s + 1
                    a = a
                    b = b
                    continue 
                require s < sub_cc632a07.length
                mem[0] = 0
                _1072 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = v
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _1074 = mem[96]
                idx = 0
                while idx < 32 * _1074:
                    mem[mem[64] + idx + 100] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_cc632a07[s])
                staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _1074) + _1072 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1141 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1148 = mem[_1141]
                require mem[_1141] <= 4294967296
                require mem[_1141] + 32 <= return_data.size
                require mem[mem[_1141] + _1141] <= 4294967296 and mem[_1141] + (32 * mem[mem[_1141] + _1141]) + 32 <= return_data.size
                mem[_1141 + ceil32(return_data.size)] = mem[mem[_1141] + _1141]
                _1158 = mem[_1148 + _1141]
                idx = 0
                while idx < 32 * _1158:
                    mem[_1141 + ceil32(return_data.size) + idx + 32] = mem[_1148 + _1141 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _1158) + _1141 + ceil32(return_data.size) + 32
                require mem[_1141 + ceil32(return_data.size)] - 1 < mem[_1141 + ceil32(return_data.size)]
                if b >= mem[(32 * mem[_1141 + ceil32(return_data.size)] - 1) + _1141 + ceil32(return_data.size) + 32]:
                    s = s + 1
                    a = a
                    b = b
                    continue 
                require mem[_1141 + ceil32(return_data.size)] - 1 < mem[_1141 + ceil32(return_data.size)]
                _1188 = mem[(32 * mem[_1141 + ceil32(return_data.size)] - 1) + _1141 + ceil32(return_data.size) + 32]
                require s < sub_cc632a07.length
                mem[0] = 0
                s = s + 1
                a = sub_cc632a07[s]
                b = _1188
                continue 
            _986 = mem[64]
            mem[64] = mem[64] + 96
            mem[_986] = 2 * z
            mem[_986 + 32] = v
            mem[_986 + 64] = b
            if 1000 * b < arg3 * 2 * z:
                _1029 = mem[64]
                s = 0
                while s < 96:
                    mem[_1029 + s] = mem[y + s]
                    s = s + 32
                    continue 
                mem[_1029 + 96] = address(x)
                mem[_1029 + 128] = address(w)
                return memory
                  from mem[64]
                   len _1029 + -mem[64] + 160
            _1016 = mem[y]
            _1022 = mem[y + 64]
            _1028 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1028] = 30
            mem[_1028 + 32] = 'SafeMath: subtraction overflow'
            if _1016 * arg3 <= 1000 * _1022:
                if (1000 * _1022) - (_1016 * arg3) >= t:
                    idx = idx + 1
                    t = (1000 * _1022) - (_1016 * arg3)
                    w = a
                    x = u
                    y = _986
                    z = 2 * z
                    continue 
                _1080 = mem[64]
                idx = 0
                while idx < 96:
                    mem[_1080 + idx] = mem[y + idx]
                    idx = idx + 32
                    continue 
                mem[_1080 + 96] = address(x)
                mem[_1080 + 128] = address(w)
                return memory
                  from mem[64]
                   len _1080 + -mem[64] + 160
            _1042 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1042 + idx + 68] = mem[_1028 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1042 + 68] = mem[_1042 + 70 len 30]
            revert with memory
              from mem[64]
               len _1042 + -mem[64] + 100
        _570 = mem[64]
        mem[64] = mem[64] + 96
        mem[_570 len 96] = call.data[calldata.size len 96]
        _578 = mem[64]
        mem[64] = mem[64] + 96
        mem[_578 len 96] = call.data[calldata.size len 96]
        if sub_cc632a07.length != sub_08454b48.length:
            revert with 0, 'error0'
        s = 0
        u = 0
        v = 0
        while s < sub_cc632a07.length:
            require s < sub_08454b48.length
            mem[0] = 1
            require 0 < mem[96]
            require 1 < mem[96]
            _813 = mem[160]
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = address(_813)
            require ext_code.size(sub_08454b48[s])
            staticcall sub_08454b48[s].0xe6a43905 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_813)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                s = s + 1
                u = u
                v = v
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                s = s + 1
                u = u
                v = v
                continue 
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                s = s + 1
                u = u
                v = v
                continue 
            require s < sub_cc632a07.length
            mem[0] = 0
            _869 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10 * z
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _871 = mem[96]
            idx = 0
            while idx < 32 * _871:
                mem[mem[64] + idx + 100] = mem[idx + 128]
                idx = idx + 32
                continue 
            require ext_code.size(sub_cc632a07[s])
            staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _871) + _869 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _997 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1008 = mem[_997]
            require mem[_997] <= 4294967296
            require mem[_997] + 32 <= return_data.size
            require mem[mem[_997] + _997] <= 4294967296 and mem[_997] + (32 * mem[mem[_997] + _997]) + 32 <= return_data.size
            mem[_997 + ceil32(return_data.size)] = mem[mem[_997] + _997]
            _1021 = mem[_1008 + _997]
            idx = 0
            while idx < 32 * _1021:
                mem[_997 + ceil32(return_data.size) + idx + 32] = mem[_1008 + _997 + idx + 32]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1021) + _997 + ceil32(return_data.size) + 32
            require mem[_997 + ceil32(return_data.size)] - 1 < mem[_997 + ceil32(return_data.size)]
            if v >= mem[(32 * mem[_997 + ceil32(return_data.size)] - 1) + _997 + ceil32(return_data.size) + 32]:
                s = s + 1
                u = u
                v = v
                continue 
            require mem[_997 + ceil32(return_data.size)] - 1 < mem[_997 + ceil32(return_data.size)]
            _1153 = mem[(32 * mem[_997 + ceil32(return_data.size)] - 1) + _997 + ceil32(return_data.size) + 32]
            require s < sub_cc632a07.length
            mem[0] = 0
            s = s + 1
            u = sub_cc632a07[s]
            v = _1153
            continue 
        require mem[96] - 1 < mem[96]
        _800 = mem[(32 * mem[96] - 1) + 128]
        require 0 < mem[96]
        require 0 < mem[96]
        require mem[96] - 1 < mem[96]
        mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
        mem[128] = address(_800)
        if sub_cc632a07.length != sub_08454b48.length:
            revert with 0, 'error0'
        s = 0
        a = 0
        b = 0
        while s < sub_cc632a07.length:
            require s < sub_08454b48.length
            mem[0] = 1
            require 0 < mem[96]
            require 1 < mem[96]
            _1005 = mem[160]
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = address(_1005)
            require ext_code.size(sub_08454b48[s])
            staticcall sub_08454b48[s].0xe6a43905 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_1005)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                s = s + 1
                a = a
                b = b
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                s = s + 1
                a = a
                b = b
                continue 
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                s = s + 1
                a = a
                b = b
                continue 
            require s < sub_cc632a07.length
            mem[0] = 0
            _1077 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = v
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _1079 = mem[96]
            idx = 0
            while idx < 32 * _1079:
                mem[mem[64] + idx + 100] = mem[idx + 128]
                idx = idx + 32
                continue 
            require ext_code.size(sub_cc632a07[s])
            staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _1079) + _1077 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1145 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1151 = mem[_1145]
            require mem[_1145] <= 4294967296
            require mem[_1145] + 32 <= return_data.size
            require mem[mem[_1145] + _1145] <= 4294967296 and mem[_1145] + (32 * mem[mem[_1145] + _1145]) + 32 <= return_data.size
            mem[_1145 + ceil32(return_data.size)] = mem[mem[_1145] + _1145]
            _1159 = mem[_1151 + _1145]
            idx = 0
            while idx < 32 * _1159:
                mem[_1145 + ceil32(return_data.size) + idx + 32] = mem[_1151 + _1145 + idx + 32]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1159) + _1145 + ceil32(return_data.size) + 32
            require mem[_1145 + ceil32(return_data.size)] - 1 < mem[_1145 + ceil32(return_data.size)]
            if b >= mem[(32 * mem[_1145 + ceil32(return_data.size)] - 1) + _1145 + ceil32(return_data.size) + 32]:
                s = s + 1
                a = a
                b = b
                continue 
            require mem[_1145 + ceil32(return_data.size)] - 1 < mem[_1145 + ceil32(return_data.size)]
            _1189 = mem[(32 * mem[_1145 + ceil32(return_data.size)] - 1) + _1145 + ceil32(return_data.size) + 32]
            require s < sub_cc632a07.length
            mem[0] = 0
            s = s + 1
            a = sub_cc632a07[s]
            b = _1189
            continue 
        _989 = mem[64]
        mem[64] = mem[64] + 96
        mem[_989] = 10 * z
        mem[_989 + 32] = v
        mem[_989 + 64] = b
        if 1000 * b < 10 * arg3 * z:
            _1034 = mem[64]
            s = 0
            while s < 96:
                mem[_1034 + s] = mem[y + s]
                s = s + 32
                continue 
            mem[_1034 + 96] = address(x)
            mem[_1034 + 128] = address(w)
            return memory
              from mem[64]
               len _1034 + -mem[64] + 160
        _1019 = mem[y]
        _1025 = mem[y + 64]
        _1033 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1033] = 30
        mem[_1033 + 32] = 'SafeMath: subtraction overflow'
        if _1019 * arg3 <= 1000 * _1025:
            if (1000 * _1025) - (_1019 * arg3) >= t:
                idx = idx + 1
                t = (1000 * _1025) - (_1019 * arg3)
                w = a
                x = u
                y = _989
                z = 10 * z
                continue 
            _1083 = mem[64]
            idx = 0
            while idx < 96:
                mem[_1083 + idx] = mem[y + idx]
                idx = idx + 32
                continue 
            mem[_1083 + 96] = address(x)
            mem[_1083 + 128] = address(w)
            return memory
              from mem[64]
               len _1083 + -mem[64] + 160
        _1051 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_1051 + idx + 68] = mem[_1033 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1051 + 68] = mem[_1051 + 70 len 30]
        revert with memory
          from mem[64]
           len _1051 + -mem[64] + 100
    mem[mem[64] len 96] = mem[y len 96]
    mem[mem[64] + 96] = address(x)
    return mem[mem[64] len 96], address(x), address(w)
}



}
