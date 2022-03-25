contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d37e7715(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
    staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        return 0, 64, 0
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _5 = mem[96 len 4], address(arg1) << 64
    _6 = 0, mem[132 len 28]
    require 0, mem[132 len 28] <= 4294967296
    require 0, mem[132 len 28] + 32 <= return_data.size
    require return_data.size >= mem[0, mem[132 len 28] + 96] + 0, mem[132 len 28] + 32 and mem[0, mem[132 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[0, mem[132 len 28] + 96]
    _12 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _12 % 32:
        mem[64] = _12 + ceil32(return_data.size) + 128
        mem[_12 + ceil32(return_data.size) + 128] = _5
        mem[_12 + ceil32(return_data.size) + 160] = 64
        mem[_12 + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[_12 + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return _5, 64, mem[_12 + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _12 + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _12 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
        return _5, 
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_12 + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    mem[floor32(_12) + ceil32(return_data.size) + 128] = mem[floor32(_12) + ceil32(return_data.size) + -(_12 % 32) + 160 len _12 % 32]
    mem[64] = floor32(_12) + ceil32(return_data.size) + 160
    mem[floor32(_12) + ceil32(return_data.size) + 160] = _5
    mem[floor32(_12) + ceil32(return_data.size) + 192] = 64
    mem[floor32(_12) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_12) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return _5, 64, mem[floor32(_12) + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_12) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_12) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
    return _5, 
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_12) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
}

function pairs(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
    mem[100] = address(ext_call.return_data[0])
    require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
    staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        mem[96] = 0
        mem[128] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
        mem[132] = address(ext_call.return_data[0])
        require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
        staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            return address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, 192, 0, 224, 0, 0
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 128
        require return_data.size >= 64
        _23 = mem[128 len 4], address(ext_call.return_data[0]) << 64
        _24 = 0, mem[164 len 28]
        require 0, mem[164 len 28] <= 4294967296
        require 0, mem[164 len 28] + 32 <= return_data.size
        require return_data.size >= mem[0, mem[164 len 28] + 128] + 0, mem[164 len 28] + 32 and mem[0, mem[164 len 28] + 128] <= 4294967296
        mem[ceil32(return_data.size) + 128] = mem[0, mem[164 len 28] + 128]
        _31 = mem[_24 + 128]
        mem[ceil32(return_data.size) + 160 len ceil32(mem[_24 + 128])] = mem[_24 + 160 len ceil32(mem[_24 + 128])]
        if not _31 % 32:
            mem[_31 + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
            mem[_31 + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
            mem[_31 + ceil32(return_data.size) + 224] = 0
            mem[_31 + ceil32(return_data.size) + 288] = _23
            mem[_31 + ceil32(return_data.size) + 256] = 192
            mem[_31 + ceil32(return_data.size) + 352] = 0
            mem[_31 + ceil32(return_data.size) + 384 len 0] = None
            mem[_31 + ceil32(return_data.size) + 320] = 224
            mem[_31 + ceil32(return_data.size) + 384] = mem[ceil32(return_data.size) + 128]
            mem[_31 + ceil32(return_data.size) + 416 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
            if not mem[ceil32(return_data.size) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       0,
                       192,
                       _23,
                       224,
                       0,
                       mem[_31 + ceil32(return_data.size) + 384 len mem[ceil32(return_data.size) + 128] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 128]) + _31 + ceil32(return_data.size) + 416] = mem[floor32(mem[ceil32(return_data.size) + 128]) + _31 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 128] % 32) + 448 len mem[ceil32(return_data.size) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   0,
                   192,
                   _23,
                   224,
                   0,
                   mem[ceil32(return_data.size) + 128],
                   mem[_31 + ceil32(return_data.size) + 416 len floor32(mem[ceil32(return_data.size) + 128]) + 32]
        mem[floor32(_31) + ceil32(return_data.size) + 160] = mem[floor32(_31) + ceil32(return_data.size) + -(_31 % 32) + 192 len _31 % 32]
        mem[floor32(_31) + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
        mem[floor32(_31) + ceil32(return_data.size) + 224] = address(ext_call.return_data[0])
        mem[floor32(_31) + ceil32(return_data.size) + 256] = 0
        mem[floor32(_31) + ceil32(return_data.size) + 320] = _23
        mem[floor32(_31) + ceil32(return_data.size) + 288] = 192
        mem[floor32(_31) + ceil32(return_data.size) + 384] = 0
        mem[floor32(_31) + ceil32(return_data.size) + 416 len 0] = None
        mem[floor32(_31) + ceil32(return_data.size) + 352] = 224
        mem[floor32(_31) + ceil32(return_data.size) + 416] = mem[ceil32(return_data.size) + 128]
        mem[floor32(_31) + ceil32(return_data.size) + 448 len ceil32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len ceil32(mem[ceil32(return_data.size) + 128])]
        if not mem[ceil32(return_data.size) + 128] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   0,
                   192,
                   _23,
                   224,
                   0,
                   mem[floor32(_31) + ceil32(return_data.size) + 416 len mem[ceil32(return_data.size) + 128] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 128]) + floor32(_31) + ceil32(return_data.size) + 448] = mem[floor32(mem[ceil32(return_data.size) + 128]) + floor32(_31) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 128] % 32) + 480 len mem[ceil32(return_data.size) + 128] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               0,
               192,
               _23,
               224,
               0,
               mem[ceil32(return_data.size) + 128],
               mem[floor32(_31) + ceil32(return_data.size) + 448 len floor32(mem[ceil32(return_data.size) + 128]) + 32]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _13 = mem[96 len 4], address(ext_call.return_data[0]) << 64
    _14 = 0, mem[132 len 28]
    require 0, mem[132 len 28] <= 4294967296
    require 0, mem[132 len 28] + 32 <= return_data.size
    require return_data.size >= mem[0, mem[132 len 28] + 96] + 0, mem[132 len 28] + 32 and mem[0, mem[132 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[0, mem[132 len 28] + 96]
    _19 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if not _19 % 32:
        mem[_19 + ceil32(return_data.size) + 128] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
        mem[_19 + ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
        require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
        staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            mem[64] = _19 + ceil32(return_data.size) + 160
            mem[_19 + ceil32(return_data.size) + 128] = 0
            mem[_19 + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
            mem[_19 + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
            mem[_19 + ceil32(return_data.size) + 224] = _13
            mem[_19 + ceil32(return_data.size) + 288] = 0
            mem[_19 + ceil32(return_data.size) + 256] = 192
            mem[_19 + ceil32(return_data.size) + 352] = mem[ceil32(return_data.size) + 96]
            mem[_19 + ceil32(return_data.size) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[mem[ceil32(return_data.size) + 96] + _19 + ceil32(return_data.size) + 384] = 0
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       _13,
                       192,
                       0,
                       mem[ceil32(return_data.size) + 96] + 224,
                       mem[ceil32(return_data.size) + 96],
                       mem[_19 + ceil32(return_data.size) + 384 len mem[ceil32(return_data.size) + 96] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _19 + ceil32(return_data.size) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _19 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   192,
                   0,
                   floor32(mem[ceil32(return_data.size) + 96]) + 256,
                   mem[ceil32(return_data.size) + 96],
                   mem[_19 + ceil32(return_data.size) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 32],
                   0
        mem[_19 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _19 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 64
        _241 = mem[_19 + ceil32(return_data.size) + 128 len 4], address(ext_call.return_data[0]) << 64
        _242 = 0, mem[_19 + ceil32(return_data.size) + 164 len 28]
        require 0, mem[_19 + ceil32(return_data.size) + 164 len 28] <= 4294967296
        require 0, mem[_19 + ceil32(return_data.size) + 164 len 28] + 32 <= return_data.size
        require return_data.size >= mem[_19 + ceil32(return_data.size) + 0, mem[_19 + ceil32(return_data.size) + 164 len 28] + 128] + 0, mem[_19 + ceil32(return_data.size) + 164 len 28] + 32 and mem[_19 + ceil32(return_data.size) + 0, mem[_19 + ceil32(return_data.size) + 164 len 28] + 128] <= 4294967296
        mem[_19 + (2 * ceil32(return_data.size)) + 128] = mem[_19 + ceil32(return_data.size) + 0, mem[_19 + ceil32(return_data.size) + 164 len 28] + 128]
        _265 = mem[_19 + ceil32(return_data.size) + _242 + 128]
        mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _242 + 128])] = mem[_19 + ceil32(return_data.size) + _242 + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _242 + 128])]
        if not _265 % 32:
            mem[64] = _265 + _19 + (2 * ceil32(return_data.size)) + 160
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 224] = _13
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 288] = _241
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 256] = 192
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_265 + _19 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _265 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _265 + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return address(ext_call.return_data[0]), 
                           address(ext_call.return_data[0]),
                           _13,
                           192,
                           _241,
                           mem[_265 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
                mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _265 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _265 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       _13,
                       Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[_265 + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 416 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                       _241,
                       mem[_265 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _265 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _265 + _19 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_265 + _19 + (2 * ceil32(return_data.size)) + 320] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _265 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _265 + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       _13,
                       192,
                       _241,
                       mem[_265 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _265 + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _265 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[_265 + _19 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 448 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                   _241,
                   mem[_265 + _19 + (2 * ceil32(return_data.size)) + 320 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + -(_265 % 32) + 192 len _265 % 32]
        mem[64] = floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 256] = _13
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 320] = _241
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 288] = 192
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       _13,
                       192,
                       _241,
                       mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                   _241,
                   mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 352] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   192,
                   _241,
                   mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_265) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               _13,
               Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
               _241,
               mem[floor32(_265) + _19 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(_19) + ceil32(return_data.size) + 128] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 160 len _19 % 32]
    mem[floor32(_19) + ceil32(return_data.size) + 160] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
    mem[floor32(_19) + ceil32(return_data.size) + 164] = address(ext_call.return_data[0])
    require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
    staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        mem[64] = floor32(_19) + ceil32(return_data.size) + 192
        mem[floor32(_19) + ceil32(return_data.size) + 160] = 0
        mem[floor32(_19) + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
        mem[floor32(_19) + ceil32(return_data.size) + 224] = address(ext_call.return_data[0])
        mem[floor32(_19) + ceil32(return_data.size) + 256] = _13
        mem[floor32(_19) + ceil32(return_data.size) + 320] = 0
        mem[floor32(_19) + ceil32(return_data.size) + 288] = 192
        mem[floor32(_19) + ceil32(return_data.size) + 384] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_19) + ceil32(return_data.size) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[mem[ceil32(return_data.size) + 96] + floor32(_19) + ceil32(return_data.size) + 416] = 0
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   192,
                   0,
                   mem[ceil32(return_data.size) + 96] + 224,
                   mem[ceil32(return_data.size) + 96],
                   mem[floor32(_19) + ceil32(return_data.size) + 416 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_19) + ceil32(return_data.size) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_19) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               _13,
               192,
               0,
               floor32(mem[ceil32(return_data.size) + 96]) + 256,
               mem[ceil32(return_data.size) + 96],
               mem[floor32(_19) + ceil32(return_data.size) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 32],
               0
    mem[floor32(_19) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_19) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 64
    _251 = mem[floor32(_19) + ceil32(return_data.size) + 160 len 4], address(ext_call.return_data[0]) << 64
    _252 = 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28]
    require 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28] <= 4294967296
    require 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_19) + ceil32(return_data.size) + 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28] + 160] + 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28] + 32 and mem[floor32(_19) + ceil32(return_data.size) + 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28] + 160] <= 4294967296
    mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_19) + ceil32(return_data.size) + 0, mem[floor32(_19) + ceil32(return_data.size) + 196 len 28] + 160]
    _276 = mem[floor32(_19) + ceil32(return_data.size) + _252 + 160]
    mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _252 + 160])] = mem[floor32(_19) + ceil32(return_data.size) + _252 + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _252 + 160])]
    if not _276 % 32:
        mem[64] = _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 192
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = _13
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = _251
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = 192
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _455 = mem[ceil32(return_data.size) + 96]
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       _13,
                       192,
                       _251,
                       mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   192,
                   _251,
                   mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + _455 + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   192,
                   _251,
                   mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _276 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               _13,
               192,
               _251,
               mem[_276 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(_455) + 160]
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + -(_276 % 32) + 224 len _276 % 32]
    mem[64] = floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 224
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = _13
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = _251
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = 192
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
    _461 = mem[ceil32(return_data.size) + 96]
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   _13,
                   192,
                   _251,
                   mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               _13,
               192,
               _251,
               mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + _461 + 128]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               _13,
               192,
               _251,
               mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
    mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           _13,
           192,
           _251,
           mem[floor32(_276) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(_461) + 160]
}



}
