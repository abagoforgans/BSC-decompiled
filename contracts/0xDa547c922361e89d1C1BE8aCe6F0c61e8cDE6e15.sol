contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_df2c49e1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _11 % 32:
        mem[64] = _11 + ceil32(return_data.size) + 128
        mem[_11 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        mem[_11 + ceil32(return_data.size) + 160] = 64
        mem[_11 + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[_11 + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return ext_call.return_data[0], 64, mem[_11 + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _11 + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _11 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
        return ext_call.return_data[0], 
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_11 + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    mem[floor32(_11) + ceil32(return_data.size) + 128] = mem[floor32(_11) + ceil32(return_data.size) + -(_11 % 32) + 160 len _11 % 32]
    mem[64] = floor32(_11) + ceil32(return_data.size) + 160
    mem[floor32(_11) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    mem[floor32(_11) + ceil32(return_data.size) + 192] = 64
    mem[floor32(_11) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_11) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return ext_call.return_data[0], 
               64,
               mem[floor32(_11) + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_11) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_11) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
    return ext_call.return_data[0], 
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_11) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _19 = mem[_16 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_16 + 96])] = mem[_16 + 128 len ceil32(mem[_16 + 96])]
    if not _19 % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_19 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_19 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _131 = mem[_19 + ceil32(return_data.size) + 128]
        require mem[_19 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_19 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128] + mem[_19 + ceil32(return_data.size) + 128] + 32 and mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_19 + (2 * ceil32(return_data.size)) + 128] = mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128]
        _137 = mem[_19 + ceil32(return_data.size) + _131 + 128]
        mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _131 + 128])] = mem[_19 + ceil32(return_data.size) + _131 + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _131 + 128])]
        if not _137 % 32:
            mem[64] = _137 + _19 + (2 * ceil32(return_data.size)) + 160
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 256] = 192
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return address(ext_call.return_data[0]), 
                           address(ext_call.return_data[0]),
                           ext_call.return_data[0],
                           192,
                           ext_call.return_data[0],
                           mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
                mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _137 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       ext_call.return_data[0],
                       Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[_137 + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 416 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                       ext_call.return_data[0],
                       mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _137 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _137 + _19 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _137 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _137 + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       ext_call.return_data[0],
                       192,
                       ext_call.return_data[0],
                       mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _137 + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _137 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[_137 + _19 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 448 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                   ext_call.return_data[0],
                   mem[_137 + _19 + (2 * ceil32(return_data.size)) + 320 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + -(_137 % 32) + 192 len _137 % 32]
        mem[64] = floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 288] = 192
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       ext_call.return_data[0],
                       192,
                       ext_call.return_data[0],
                       mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
                   ext_call.return_data[0],
                   mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   192,
                   ext_call.return_data[0],
                   mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_137) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               Array(len=mem[_19 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]),
               ext_call.return_data[0],
               mem[floor32(_137) + _19 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(_19) + ceil32(return_data.size) + 128] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 160 len _19 % 32]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_19) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_19) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _134 = mem[floor32(_19) + ceil32(return_data.size) + 160]
    require mem[floor32(_19) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160] <= 4294967296
    mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160]
    _139 = mem[floor32(_19) + ceil32(return_data.size) + _134 + 160]
    mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _134 + 160])] = mem[floor32(_19) + ceil32(return_data.size) + _134 + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _134 + 160])]
    if not _139 % 32:
        mem[64] = _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 192
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = 192
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _221 = mem[ceil32(return_data.size) + 96]
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
                return address(ext_call.return_data[0]), 
                       address(ext_call.return_data[0]),
                       ext_call.return_data[0],
                       192,
                       ext_call.return_data[0],
                       mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   192,
                   ext_call.return_data[0],
                   mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + _221 + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   192,
                   ext_call.return_data[0],
                   mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _139 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               192,
               ext_call.return_data[0],
               mem[_139 + floor32(_19) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(_221) + 160]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + -(_139 % 32) + 224 len _139 % 32]
    mem[64] = floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 224
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = address(ext_call.return_data[0])
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = 192
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
    _227 = mem[ceil32(return_data.size) + 96]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return address(ext_call.return_data[0]), 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   192,
                   ext_call.return_data[0],
                   mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               192,
               ext_call.return_data[0],
               mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + _227 + 128]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               192,
               ext_call.return_data[0],
               mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
    mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           192,
           ext_call.return_data[0],
           mem[floor32(_139) + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(_227) + 160]
}



}
