contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
        return address(ext_call.return_data[0]), address(ext_call.return_data[0]), 8, 192, 8, 256, 5, 0, 5, 0
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _15 = 0, mem[132 len 28]
    require 0, mem[132 len 28] <= 4294967296
    require 0, mem[132 len 28] + 32 <= return_data.size
    require return_data.size >= mem[0, mem[132 len 28] + 96] + 0, mem[132 len 28] + 32 and mem[0, mem[132 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[0, mem[132 len 28] + 96]
    _21 = mem[_15 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
    if not _21 % 32:
        mem[_21 + ceil32(return_data.size) + 128] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
        mem[_21 + ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
        require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
        staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            return address(ext_call.return_data[0]), address(ext_call.return_data[0]), 8, 192, 8, 256, 5, 0, 5, 0
        mem[_21 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _21 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 64
        _188 = 0, mem[_21 + ceil32(return_data.size) + 164 len 28]
        require 0, mem[_21 + ceil32(return_data.size) + 164 len 28] <= 4294967296
        require 0, mem[_21 + ceil32(return_data.size) + 164 len 28] + 32 <= return_data.size
        require return_data.size >= mem[_21 + ceil32(return_data.size) + 0, mem[_21 + ceil32(return_data.size) + 164 len 28] + 128] + 0, mem[_21 + ceil32(return_data.size) + 164 len 28] + 32 and mem[_21 + ceil32(return_data.size) + 0, mem[_21 + ceil32(return_data.size) + 164 len 28] + 128] <= 4294967296
        mem[_21 + (2 * ceil32(return_data.size)) + 128] = mem[_21 + ceil32(return_data.size) + 0, mem[_21 + ceil32(return_data.size) + 164 len 28] + 128]
        _200 = mem[_21 + ceil32(return_data.size) + _188 + 128]
        mem[_21 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_21 + ceil32(return_data.size) + _188 + 128])] = mem[_21 + ceil32(return_data.size) + _188 + 160 len ceil32(mem[_21 + ceil32(return_data.size) + _188 + 128])]
        if not _200 % 32:
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 224] = 0
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 288] = 0
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 256] = 192
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 352] = mem[96 len 4], address(ext_call.return_data[0]) << 64
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
            mem[_200 + _21 + (2 * ceil32(return_data.size)) + 320] = mem[96 len 4], address(ext_call.return_data[0]) << 64 + 224
            mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + _200 + _21 + (2 * ceil32(return_data.size)) + 384] = mem[96 len 4], address(ext_call.return_data[0]) << 64
            mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + _200 + _21 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
            return memory
              from _200 + _21 + (2 * ceil32(return_data.size)) + 160
               len (2 * mem[96 len 4], address(ext_call.return_data[0]) << 64) + 256
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + -(_200 % 32) + 192 len _200 % 32]
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 256] = 0
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 320] = 0
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 288] = 192
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 384] = mem[96 len 4], address(ext_call.return_data[0]) << 64
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
        mem[floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 352] = mem[96 len 4], address(ext_call.return_data[0]) << 64 + 224
        mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 416] = mem[96 len 4], address(ext_call.return_data[0]) << 64
        mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
        return memory
          from floor32(_200) + _21 + (2 * ceil32(return_data.size)) + 192
           len (2 * mem[96 len 4], address(ext_call.return_data[0]) << 64) + 256
    mem[floor32(_21) + ceil32(return_data.size) + 128] = mem[floor32(_21) + ceil32(return_data.size) + -(_21 % 32) + 160 len _21 % 32]
    mem[floor32(_21) + ceil32(return_data.size) + 160] = 0xc2bc2efc00000000000000000000000000000000000000000000000000000000
    mem[floor32(_21) + ceil32(return_data.size) + 164] = address(ext_call.return_data[0])
    require ext_code.size(0xac6fd0db54bcccad6fcbe32641a72b90bcc14365)
    staticcall 0xac6fd0db54bcccad6fcbe32641a72b90bcc14365.0xc2bc2efc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        return address(ext_call.return_data[0]), address(ext_call.return_data[0]), 8, 192, 8, 256, 5, 0, 5, 0
    mem[floor32(_21) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_21) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 64
    _194 = 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28]
    require 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28] <= 4294967296
    require 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_21) + ceil32(return_data.size) + 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28] + 160] + 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28] + 32 and mem[floor32(_21) + ceil32(return_data.size) + 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28] + 160] <= 4294967296
    mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_21) + ceil32(return_data.size) + 0, mem[floor32(_21) + ceil32(return_data.size) + 196 len 28] + 160]
    _206 = mem[floor32(_21) + ceil32(return_data.size) + _194 + 160]
    mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_21) + ceil32(return_data.size) + _194 + 160])] = mem[floor32(_21) + ceil32(return_data.size) + _194 + 192 len ceil32(mem[floor32(_21) + ceil32(return_data.size) + _194 + 160])]
    if not _206 % 32:
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 256] = 0
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 320] = 0
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 288] = 192
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 384] = mem[96 len 4], address(ext_call.return_data[0]) << 64
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
        mem[_206 + floor32(_21) + (2 * ceil32(return_data.size)) + 352] = mem[96 len 4], address(ext_call.return_data[0]) << 64 + 224
        mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + _206 + floor32(_21) + (2 * ceil32(return_data.size)) + 416] = mem[96 len 4], address(ext_call.return_data[0]) << 64
        mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + _206 + floor32(_21) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
        return memory
          from _206 + floor32(_21) + (2 * ceil32(return_data.size)) + 192
           len (2 * mem[96 len 4], address(ext_call.return_data[0]) << 64) + 256
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + -(_206 % 32) + 224 len _206 % 32]
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 288] = 0
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 352] = 0
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 320] = 192
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 416] = mem[96 len 4], address(ext_call.return_data[0]) << 64
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
    mem[floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 384] = mem[96 len 4], address(ext_call.return_data[0]) << 64 + 224
    mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 448] = mem[96 len 4], address(ext_call.return_data[0]) << 64
    mem[mem[96 len 4], address(ext_call.return_data[0]) << 64 + floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)] = mem[128 len ceil32(mem[96 len 4], address(ext_call.return_data[0]) << 64)]
    return memory
      from floor32(_206) + floor32(_21) + (2 * ceil32(return_data.size)) + 224
       len (2 * mem[96 len 4], address(ext_call.return_data[0]) << 64) + 256
}



}
