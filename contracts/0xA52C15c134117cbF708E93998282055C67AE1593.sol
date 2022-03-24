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
        _40 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_40)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_40)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        _46 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _48 = mem[96]
        u = 0
        while u < 32 * _48:
            mem[mem[64] + u + 100] = mem[u + 128]
            u = u + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _48) + _46 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _67 = mem[_66]
        require mem[_66] <= 4294967296
        require mem[_66] + 32 <= return_data.size
        require mem[mem[_66] + _66] <= 4294967296 and mem[_66] + (32 * mem[mem[_66] + _66]) + 32 <= return_data.size
        mem[_66 + ceil32(return_data.size)] = mem[mem[_66] + _66]
        _70 = mem[_67 + _66]
        u = 0
        while u < 32 * _70:
            mem[_66 + ceil32(return_data.size) + u + 32] = mem[_67 + _66 + u + 32]
            u = u + 32
            continue 
        mem[64] = (32 * _70) + _66 + ceil32(return_data.size) + 32
        require mem[_66 + ceil32(return_data.size)] - 1 < mem[_66 + ceil32(return_data.size)]
        if t >= mem[(32 * mem[_66 + ceil32(return_data.size)] - 1) + _66 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require mem[_66 + ceil32(return_data.size)] - 1 < mem[_66 + ceil32(return_data.size)]
        _85 = mem[(32 * mem[_66 + ceil32(return_data.size)] - 1) + _66 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        s = sub_cc632a07[idx]
        t = _85
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
        _84 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_84)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_84)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
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
        _96 = mem[96]
        u = 0
        while u < 32 * mem[96]:
            mem[mem[64] + u + 100] = mem[u + 128]
            u = u + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _96) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _155 = mem[_151]
        require mem[_151] <= 4294967296
        require mem[_151] + 32 <= return_data.size
        require mem[mem[_151] + _151] <= 4294967296 and mem[_151] + (32 * mem[mem[_151] + _151]) + 32 <= return_data.size
        mem[_151 + ceil32(return_data.size)] = mem[mem[_151] + _151]
        _161 = mem[_155 + _151]
        u = 0
        while u < 32 * _161:
            mem[_151 + ceil32(return_data.size) + u + 32] = mem[_155 + _151 + u + 32]
            u = u + 32
            continue 
        mem[64] = (32 * _161) + _151 + ceil32(return_data.size) + 32
        require mem[_151 + ceil32(return_data.size)] - 1 < mem[_151 + ceil32(return_data.size)]
        if t >= mem[(32 * mem[_151 + ceil32(return_data.size)] - 1) + _151 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require mem[_151 + ceil32(return_data.size)] - 1 < mem[_151 + ceil32(return_data.size)]
        _202 = mem[(32 * mem[_151 + ceil32(return_data.size)] - 1) + _151 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        s = sub_cc632a07[idx]
        t = _202
        continue 
    require mem[96] - 1 < mem[96]
    _78 = mem[(32 * mem[96] - 1) + 128]
    require 0 < mem[96]
    require 0 < mem[96]
    require mem[96] - 1 < mem[96]
    mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
    mem[128] = address(_78)
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
        _152 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_152)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_152)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _165 = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[mem[64] + s + 100] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _165) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _200 = mem[_197]
        require mem[_197] <= 4294967296
        require mem[_197] + 32 <= return_data.size
        require mem[mem[_197] + _197] <= 4294967296 and mem[_197] + (32 * mem[mem[_197] + _197]) + 32 <= return_data.size
        mem[_197 + ceil32(return_data.size)] = mem[mem[_197] + _197]
        _205 = mem[_200 + _197]
        s = 0
        while s < 32 * _205:
            mem[_197 + ceil32(return_data.size) + s + 32] = mem[_200 + _197 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _205) + _197 + ceil32(return_data.size) + 32
        require mem[_197 + ceil32(return_data.size)] - 1 < mem[_197 + ceil32(return_data.size)]
        if v >= mem[(32 * mem[_197 + ceil32(return_data.size)] - 1) + _197 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            u = u
            v = v
            continue 
        require mem[_197 + ceil32(return_data.size)] - 1 < mem[_197 + ceil32(return_data.size)]
        _220 = mem[(32 * mem[_197 + ceil32(return_data.size)] - 1) + _197 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        u = sub_cc632a07[idx]
        v = _220
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
        _184 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_184)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_184)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        _194 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _196 = mem[96]
        u = 0
        while u < 32 * _196:
            mem[mem[64] + u + 100] = mem[u + 128]
            u = u + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _196) + _194 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _349 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _354 = mem[_349]
        require mem[_349] <= 4294967296
        require mem[_349] + 32 <= return_data.size
        require mem[mem[_349] + _349] <= 4294967296 and mem[_349] + (32 * mem[mem[_349] + _349]) + 32 <= return_data.size
        mem[_349 + ceil32(return_data.size)] = mem[mem[_349] + _349]
        _361 = mem[_354 + _349]
        u = 0
        while u < 32 * _361:
            mem[_349 + ceil32(return_data.size) + u + 32] = mem[_354 + _349 + u + 32]
            u = u + 32
            continue 
        mem[64] = (32 * _361) + _349 + ceil32(return_data.size) + 32
        require mem[_349 + ceil32(return_data.size)] - 1 < mem[_349 + ceil32(return_data.size)]
        if t >= mem[(32 * mem[_349 + ceil32(return_data.size)] - 1) + _349 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require mem[_349 + ceil32(return_data.size)] - 1 < mem[_349 + ceil32(return_data.size)]
        _507 = mem[(32 * mem[_349 + ceil32(return_data.size)] - 1) + _349 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        s = sub_cc632a07[idx]
        t = _507
        continue 
    require mem[96] - 1 < mem[96]
    _178 = mem[(32 * mem[96] - 1) + 128]
    require 0 < mem[96]
    require 0 < mem[96]
    require mem[96] - 1 < mem[96]
    mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
    mem[128] = address(_178)
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
        _351 = mem[160]
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = address(_351)
        require ext_code.size(sub_08454b48[idx])
        staticcall sub_08454b48[idx].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_351)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < sub_cc632a07.length
        mem[0] = 0
        _366 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _368 = mem[96]
        s = 0
        while s < 32 * _368:
            mem[mem[64] + s + 100] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(sub_cc632a07[idx])
        staticcall sub_cc632a07[idx].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _368) + _366 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _500 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _505 = mem[_500]
        require mem[_500] <= 4294967296
        require mem[_500] + 32 <= return_data.size
        require mem[mem[_500] + _500] <= 4294967296 and mem[_500] + (32 * mem[mem[_500] + _500]) + 32 <= return_data.size
        mem[_500 + ceil32(return_data.size)] = mem[mem[_500] + _500]
        _513 = mem[_505 + _500]
        s = 0
        while s < 32 * _513:
            mem[_500 + ceil32(return_data.size) + s + 32] = mem[_505 + _500 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _513) + _500 + ceil32(return_data.size) + 32
        require mem[_500 + ceil32(return_data.size)] - 1 < mem[_500 + ceil32(return_data.size)]
        if v >= mem[(32 * mem[_500 + ceil32(return_data.size)] - 1) + _500 + ceil32(return_data.size) + 32]:
            idx = idx + 1
            u = u
            v = v
            continue 
        require mem[_500 + ceil32(return_data.size)] - 1 < mem[_500 + ceil32(return_data.size)]
        _726 = mem[(32 * mem[_500 + ceil32(return_data.size)] - 1) + _500 + ceil32(return_data.size) + 32]
        require idx < sub_cc632a07.length
        mem[0] = 0
        idx = idx + 1
        u = sub_cc632a07[idx]
        v = _726
        continue 
    _344 = mem[64]
    mem[64] = mem[64] + 96
    mem[_344] = arg2
    mem[_344 + 32] = t
    mem[_344 + 64] = v
    if 1000 * v <= arg2 * arg3:
        return arg2, t, v >> 512, address(s), address(u)
    _364 = mem[64]
    mem[64] = mem[64] + 64
    mem[_364] = 30
    mem[_364 + 32] = 'SafeMath: subtraction overflow'
    if arg2 * arg3 > 1000 * v:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    t = (1000 * v) - (arg2 * arg3)
    w = u
    x = s
    y = _344
    z = arg2
    while idx < 10:
        if idx >= 3:
            _503 = mem[64]
            mem[64] = mem[64] + 96
            mem[_503 len 96] = call.data[calldata.size len 96]
            _511 = mem[64]
            mem[64] = mem[64] + 96
            mem[_511 len 96] = call.data[calldata.size len 96]
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
                _718 = mem[160]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = address(_718)
                require ext_code.size(sub_08454b48[s])
                staticcall sub_08454b48[s].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_718)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
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
                _743 = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[mem[64] + idx + 100] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(sub_cc632a07[s])
                staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _743) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _880 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _888 = mem[_880]
                require mem[_880] <= 4294967296
                require mem[_880] + 32 <= return_data.size
                require mem[mem[_880] + _880] <= 4294967296 and mem[_880] + (32 * mem[mem[_880] + _880]) + 32 <= return_data.size
                mem[_880 + ceil32(return_data.size)] = mem[mem[_880] + _880]
                _904 = mem[_888 + _880]
                idx = 0
                while idx < 32 * _904:
                    mem[_880 + ceil32(return_data.size) + idx + 32] = mem[_888 + _880 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _904) + _880 + ceil32(return_data.size) + 32
                require mem[_880 + ceil32(return_data.size)] - 1 < mem[_880 + ceil32(return_data.size)]
                if v >= mem[(32 * mem[_880 + ceil32(return_data.size)] - 1) + _880 + ceil32(return_data.size) + 32]:
                    s = s + 1
                    u = u
                    v = v
                    continue 
                require mem[_880 + ceil32(return_data.size)] - 1 < mem[_880 + ceil32(return_data.size)]
                _1024 = mem[(32 * mem[_880 + ceil32(return_data.size)] - 1) + _880 + ceil32(return_data.size) + 32]
                require s < sub_cc632a07.length
                mem[0] = 0
                s = s + 1
                u = sub_cc632a07[s]
                v = _1024
                continue 
            require mem[96] - 1 < mem[96]
            _706 = mem[(32 * mem[96] - 1) + 128]
            require 0 < mem[96]
            require 0 < mem[96]
            require mem[96] - 1 < mem[96]
            mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
            mem[128] = address(_706)
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
                _885 = mem[160]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = address(_885)
                require ext_code.size(sub_08454b48[s])
                staticcall sub_08454b48[s].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_885)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    s = s + 1
                    a = a
                    b = b
                    continue 
                require s < sub_cc632a07.length
                mem[0] = 0
                _913 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = v
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _915 = mem[96]
                t = 0
                while t < 32 * _915:
                    mem[mem[64] + t + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(sub_cc632a07[s])
                staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _915) + _913 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1015 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1022 = mem[_1015]
                require mem[_1015] <= 4294967296
                require mem[_1015] + 32 <= return_data.size
                require mem[mem[_1015] + _1015] <= 4294967296 and mem[_1015] + (32 * mem[mem[_1015] + _1015]) + 32 <= return_data.size
                mem[_1015 + ceil32(return_data.size)] = mem[mem[_1015] + _1015]
                _1032 = mem[_1022 + _1015]
                idx = 0
                while idx < 32 * _1032:
                    mem[_1015 + ceil32(return_data.size) + idx + 32] = mem[_1022 + _1015 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _1032) + _1015 + ceil32(return_data.size) + 32
                require mem[_1015 + ceil32(return_data.size)] - 1 < mem[_1015 + ceil32(return_data.size)]
                if b >= mem[(32 * mem[_1015 + ceil32(return_data.size)] - 1) + _1015 + ceil32(return_data.size) + 32]:
                    s = s + 1
                    a = a
                    b = b
                    continue 
                require mem[_1015 + ceil32(return_data.size)] - 1 < mem[_1015 + ceil32(return_data.size)]
                _1062 = mem[(32 * mem[_1015 + ceil32(return_data.size)] - 1) + _1015 + ceil32(return_data.size) + 32]
                require s < sub_cc632a07.length
                mem[0] = 0
                s = s + 1
                a = sub_cc632a07[s]
                b = _1062
                continue 
            _872 = mem[64]
            mem[64] = mem[64] + 96
            mem[_872] = 2 * z
            mem[_872 + 32] = v
            mem[_872 + 64] = b
            if 1000 * b < arg3 * 2 * z:
                _911 = mem[64]
                s = 0
                while s < 96:
                    mem[_911 + s] = mem[y + s]
                    s = s + 32
                    continue 
                mem[_911 + 96] = address(x)
                mem[_911 + 128] = address(w)
                return memory
                  from mem[64]
                   len _911 + -mem[64] + 160
            _902 = mem[y]
            _908 = mem[y + 64]
            _910 = mem[64]
            mem[64] = mem[64] + 64
            mem[_910] = 30
            mem[_910 + 32] = 'SafeMath: subtraction overflow'
            if _902 * arg3 <= 1000 * _908:
                if (1000 * _908) - (_902 * arg3) >= t:
                    idx = idx + 1
                    t = (1000 * _908) - (_902 * arg3)
                    w = a
                    x = u
                    y = _872
                    z = 2 * z
                    continue 
                _966 = mem[64]
                idx = 0
                while idx < 96:
                    mem[_966 + idx] = mem[y + idx]
                    idx = idx + 32
                    continue 
                mem[_966 + 96] = address(x)
                mem[_966 + 128] = address(w)
                return memory
                  from mem[64]
                   len _966 + -mem[64] + 160
            _930 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_930 + idx + 68] = mem[_910 + idx + 32]
                idx = idx + 32
                continue 
            mem[_930 + 68] = mem[_930 + 70 len 30]
            revert with memory
              from mem[64]
               len _930 + -mem[64] + 100
        _504 = mem[64]
        mem[64] = mem[64] + 96
        mem[_504 len 96] = call.data[calldata.size len 96]
        _512 = mem[64]
        mem[64] = mem[64] + 96
        mem[_512 len 96] = call.data[calldata.size len 96]
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
            _723 = mem[160]
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = address(_723)
            require ext_code.size(sub_08454b48[s])
            staticcall sub_08454b48[s].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_723)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                s = s + 1
                u = u
                v = v
                continue 
            require s < sub_cc632a07.length
            mem[0] = 0
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 10 * z
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _747 = mem[96]
            idx = 0
            while idx < 32 * mem[96]:
                mem[mem[64] + idx + 100] = mem[idx + 128]
                idx = idx + 32
                continue 
            require ext_code.size(sub_cc632a07[s])
            staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _747) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _883 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _894 = mem[_883]
            require mem[_883] <= 4294967296
            require mem[_883] + 32 <= return_data.size
            require mem[mem[_883] + _883] <= 4294967296 and mem[_883] + (32 * mem[mem[_883] + _883]) + 32 <= return_data.size
            mem[_883 + ceil32(return_data.size)] = mem[mem[_883] + _883]
            _907 = mem[_894 + _883]
            idx = 0
            while idx < 32 * _907:
                mem[_883 + ceil32(return_data.size) + idx + 32] = mem[_894 + _883 + idx + 32]
                idx = idx + 32
                continue 
            mem[64] = (32 * _907) + _883 + ceil32(return_data.size) + 32
            require mem[_883 + ceil32(return_data.size)] - 1 < mem[_883 + ceil32(return_data.size)]
            if v >= mem[(32 * mem[_883 + ceil32(return_data.size)] - 1) + _883 + ceil32(return_data.size) + 32]:
                s = s + 1
                u = u
                v = v
                continue 
            require mem[_883 + ceil32(return_data.size)] - 1 < mem[_883 + ceil32(return_data.size)]
            _1027 = mem[(32 * mem[_883 + ceil32(return_data.size)] - 1) + _883 + ceil32(return_data.size) + 32]
            require s < sub_cc632a07.length
            mem[0] = 0
            s = s + 1
            u = sub_cc632a07[s]
            v = _1027
            continue 
        require mem[96] - 1 < mem[96]
        _710 = mem[(32 * mem[96] - 1) + 128]
        require 0 < mem[96]
        require 0 < mem[96]
        require mem[96] - 1 < mem[96]
        mem[(32 * mem[96] - 1) + 128] = mem[140 len 20]
        mem[128] = address(_710)
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
            _891 = mem[160]
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = address(_891)
            require ext_code.size(sub_08454b48[s])
            staticcall sub_08454b48[s].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_891)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                s = s + 1
                a = a
                b = b
                continue 
            require s < sub_cc632a07.length
            mem[0] = 0
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = v
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _924 = mem[96]
            t = 0
            while t < 32 * mem[96]:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            require ext_code.size(sub_cc632a07[s])
            staticcall sub_cc632a07[s].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _924) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1019 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1025 = mem[_1019]
            require mem[_1019] <= 4294967296
            require mem[_1019] + 32 <= return_data.size
            require mem[mem[_1019] + _1019] <= 4294967296 and mem[_1019] + (32 * mem[mem[_1019] + _1019]) + 32 <= return_data.size
            mem[_1019 + ceil32(return_data.size)] = mem[mem[_1019] + _1019]
            _1033 = mem[_1025 + _1019]
            idx = 0
            while idx < 32 * _1033:
                mem[_1019 + ceil32(return_data.size) + idx + 32] = mem[_1025 + _1019 + idx + 32]
                idx = idx + 32
                continue 
            mem[64] = (32 * _1033) + _1019 + ceil32(return_data.size) + 32
            require mem[_1019 + ceil32(return_data.size)] - 1 < mem[_1019 + ceil32(return_data.size)]
            if b >= mem[(32 * mem[_1019 + ceil32(return_data.size)] - 1) + _1019 + ceil32(return_data.size) + 32]:
                s = s + 1
                a = a
                b = b
                continue 
            require mem[_1019 + ceil32(return_data.size)] - 1 < mem[_1019 + ceil32(return_data.size)]
            _1063 = mem[(32 * mem[_1019 + ceil32(return_data.size)] - 1) + _1019 + ceil32(return_data.size) + 32]
            require s < sub_cc632a07.length
            mem[0] = 0
            s = s + 1
            a = sub_cc632a07[s]
            b = _1063
            continue 
        _875 = mem[64]
        mem[64] = mem[64] + 96
        mem[_875] = 10 * z
        mem[_875 + 32] = v
        mem[_875 + 64] = b
        if 1000 * b < 10 * arg3 * z:
            _920 = mem[64]
            s = 0
            while s < 96:
                mem[_920 + s] = mem[y + s]
                s = s + 32
                continue 
            mem[_920 + 96] = address(x)
            mem[_920 + 128] = address(w)
            return memory
              from mem[64]
               len _920 + -mem[64] + 160
        _905 = mem[y]
        _909 = mem[y + 64]
        _919 = mem[64]
        mem[64] = mem[64] + 64
        mem[_919] = 30
        mem[_919 + 32] = 'SafeMath: subtraction overflow'
        if _905 * arg3 <= 1000 * _909:
            if (1000 * _909) - (_905 * arg3) >= t:
                idx = idx + 1
                t = (1000 * _909) - (_905 * arg3)
                w = a
                x = u
                y = _875
                z = 10 * z
                continue 
            _968 = mem[64]
            idx = 0
            while idx < 96:
                mem[_968 + idx] = mem[y + idx]
                idx = idx + 32
                continue 
            mem[_968 + 96] = address(x)
            mem[_968 + 128] = address(w)
            return memory
              from mem[64]
               len _968 + -mem[64] + 160
        _938 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_938 + idx + 68] = mem[_919 + idx + 32]
            idx = idx + 32
            continue 
        mem[_938 + 68] = mem[_938 + 70 len 30]
        revert with memory
          from mem[64]
           len _938 + -mem[64] + 100
    mem[mem[64] len 96] = mem[y len 96]
    mem[mem[64] + 96] = address(x)
    return mem[mem[64] len 96], address(x), address(w)
}



}
