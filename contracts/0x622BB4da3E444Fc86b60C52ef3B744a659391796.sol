contract main {




// =====================  Runtime code  =====================


address sub_ead88dbcAddress;
address WETHAddress;
address sub_d5bfbe4cAddress;

function WETH() payable {
    return WETHAddress
}

function sub_d5bfbe4c(?) payable {
    return sub_d5bfbe4cAddress
}

function sub_ead88dbc(?) payable {
    return sub_ead88dbcAddress
}

function _fallback() payable {
    revert
}

function sub_ec5b5932(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _515 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_7 + ceil32(return_data.size) + 128] + mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_7 + ceil32(return_data.size) + 128] + _7 + ceil32(return_data.size) + 128]
        _521 = mem[_515 + _7 + ceil32(return_data.size) + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_515 + _7 + ceil32(return_data.size) + 128])] = mem[_515 + _7 + ceil32(return_data.size) + 160 len ceil32(mem[_515 + _7 + ceil32(return_data.size) + 128])]
        if not _521 % 32:
            mem[64] = _521 + _7 + (2 * ceil32(return_data.size)) + 160
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 164] = arg1
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 196] = WETHAddress
            require ext_code.size(sub_d5bfbe4cAddress)
            staticcall sub_d5bfbe4cAddress.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(arg1), WETHAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 320] = 0
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                _1071 = mem[ceil32(return_data.size) + 96]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                    if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                        return 192, 
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                               ext_call.return_data[0] << 248,
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               0,
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1071 + 64]
                    mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1071 + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1071 + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1071 + 96]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1071) + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1071) + _521 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1071) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1071) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 288] = address(ext_call.return_data[0])
            if not ext_call.return_data[18 len 14]:
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 320] = 0
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                _1124 = mem[ceil32(return_data.size) + 96]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                    if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                        return 192, 
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                               ext_call.return_data[0] << 248,
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               0,
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1124 + 64]
                    mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1124 + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1124 + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1124 + 96]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1124) + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1124) + _521 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1124) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1124) + 128]
            if not ext_call.return_data[50 len 14]:
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 320] = 0
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                _1138 = mem[ceil32(return_data.size) + 96]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                    if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                        return 192, 
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                               ext_call.return_data[0] << 248,
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               0,
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1138 + 64]
                    mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1138 + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1138 + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1138 + 96]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1138) + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1138) + _521 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1138) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1138) + 128]
            if ext_call.return_data[18 len 14] > 0:
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 320] = 1
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                _1192 = mem[ceil32(return_data.size) + 96]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                    if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                        return 192, 
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                               ext_call.return_data[0] << 248,
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               1,
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1192 + 64]
                    mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1192 + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1192 + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           1,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1192 + 96]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           1,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1192) + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1192) + _521 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1192) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1192) + 128]
            if ext_call.return_data[50 len 14] <= 0:
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 320] = 0
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                _1195 = mem[ceil32(return_data.size) + 96]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                    mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                    if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                        return 192, 
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                               ext_call.return_data[0] << 248,
                               ext_call.return_data[0],
                               address(ext_call.return_data[0]),
                               0,
                               mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1195 + 64]
                    mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1195 + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1195 + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1195 + 96]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1195) + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1195) + _521 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1195) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1195) + 128]
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 320] = 1
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            _1221 = mem[ceil32(return_data.size) + 96]
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _521 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           1,
                           mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1221 + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1221 + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1221 + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1221 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _521 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1221) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1221) + _521 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1221) + _521 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[_521 + _7 + (2 * ceil32(return_data.size)) + 192],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[_521 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1221) + 128]
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(_521 % 32) + 192 len _521 % 32]
        mem[64] = floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 196] = arg1
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 228] = WETHAddress
        require ext_code.size(sub_d5bfbe4cAddress)
        staticcall sub_d5bfbe4cAddress.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg1), WETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 352] = 0
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1082 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1082 + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1082 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1082 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1082 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1082) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1082) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1082) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1082) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        if not ext_call.return_data[18 len 14]:
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 352] = 0
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1144 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1144 + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1144 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1144 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1144 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1144) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1144) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1144) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1144) + 128]
        if not ext_call.return_data[50 len 14]:
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 352] = 0
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1164 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1164 + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1164 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1164 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1164 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1164) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1164) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1164) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1164) + 128]
        if ext_call.return_data[18 len 14] > 0:
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 352] = 1
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1228 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           1,
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1228 + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1228 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1228 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1228 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1228) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1228) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1228) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1228) + 128]
        if ext_call.return_data[50 len 14] <= 0:
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 352] = 0
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1231 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1231 + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1231 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1231 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1231 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1231) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1231) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1231) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1231) + 128]
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 352] = 1
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _1261 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + _1261 + 64]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1261 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1261 + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + _1261 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 192, 
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(_1261) + 96]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1261) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1261) + floor32(_521) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 192, 
               mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               1,
               mem[floor32(_521) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(_1261) + 128]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _518 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_7) + ceil32(return_data.size) + 160] + mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_7) + ceil32(return_data.size) + 160] + floor32(_7) + ceil32(return_data.size) + 160]
    _523 = mem[_518 + floor32(_7) + ceil32(return_data.size) + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_518 + floor32(_7) + ceil32(return_data.size) + 160])] = mem[_518 + floor32(_7) + ceil32(return_data.size) + 192 len ceil32(mem[_518 + floor32(_7) + ceil32(return_data.size) + 160])]
    if not _523 % 32:
        mem[64] = _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 196] = arg1
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = WETHAddress
        require ext_code.size(sub_d5bfbe4cAddress)
        staticcall sub_d5bfbe4cAddress.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg1), WETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 0
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1075 = mem[ceil32(return_data.size) + 96]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1075 + 64]
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1075 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1075 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1075 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1075) + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1075) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1075) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1075) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        if not ext_call.return_data[18 len 14]:
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 0
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1131 = mem[ceil32(return_data.size) + 96]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1131 + 64]
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1131 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1131 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1131 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1131) + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1131) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1131) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1131) + 128]
        if not ext_call.return_data[50 len 14]:
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 0
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1150 = mem[ceil32(return_data.size) + 96]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1150 + 64]
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1150 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1150 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1150 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1150) + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1150) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1150) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1150) + 128]
        if ext_call.return_data[18 len 14] > 0:
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 1
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1207 = mem[ceil32(return_data.size) + 96]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           1,
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1207 + 64]
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1207 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1207 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1207 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1207) + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1207) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1207) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1207) + 128]
        if ext_call.return_data[50 len 14] <= 0:
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 0
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            _1210 = mem[ceil32(return_data.size) + 96]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           address(ext_call.return_data[0]),
                           0,
                           mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1210 + 64]
                mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1210 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1210 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1210 + 96]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1210) + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1210) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1210) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1210) + 128]
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 1
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _1238 = mem[ceil32(return_data.size) + 96]
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1238 + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1238 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1238 + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1238 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1238) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1238) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1238) + _523 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               1,
               mem[_523 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1238) + 128]
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_523 % 32) + 224 len _523 % 32]
    mem[64] = floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = arg1
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 260] = WETHAddress
    require ext_code.size(sub_d5bfbe4cAddress)
    staticcall sub_d5bfbe4cAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = address(ext_call.return_data[0])
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 0
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        _1089 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1089 + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1089 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1089 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1089 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1089) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1089) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1089) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               0,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1089) + 128]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = address(ext_call.return_data[0])
    if not ext_call.return_data[18 len 14]:
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 0
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        _1156 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1156 + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1156 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1156 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1156 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1156) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1156) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1156) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               0,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1156) + 128]
    if not ext_call.return_data[50 len 14]:
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 0
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        _1172 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1172 + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1172 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1172 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1172 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1172) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1172) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1172) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               0,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1172) + 128]
    if ext_call.return_data[18 len 14] > 0:
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 1
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        _1245 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       1,
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1245 + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1245 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1245 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1245 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1245) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1245) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1245) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               1,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1245) + 128]
    if ext_call.return_data[50 len 14] <= 0:
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 0
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        _1248 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       address(ext_call.return_data[0]),
                       0,
                       mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1248 + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1248 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1248 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1248 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   0,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1248) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1248) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1248) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               0,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1248) + 128]
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 1
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
    _1273 = mem[ceil32(return_data.size) + 96]
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   1,
                   mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + _1273 + 64]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1273 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1273 + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               1,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + _1273 + 96]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 192, 
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               1,
               mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(_1273) + 96]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1273) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1273) + floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return 192, 
           mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
           ext_call.return_data[0] << 248,
           ext_call.return_data[0],
           address(ext_call.return_data[0]),
           1,
           mem[floor32(_523) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(_1273) + 128]
}



}
