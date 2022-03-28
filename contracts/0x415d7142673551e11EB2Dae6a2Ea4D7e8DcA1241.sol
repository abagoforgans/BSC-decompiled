contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256[] arg5, uint256 arg6)
#
address sub_0a9ac856Address;

function sub_0a9ac856(?) {
    return sub_0a9ac856Address
}

function _fallback() payable {
    revert
}

function sub_24574bc3(?) {
    require calldata.size - 4 >= 128
    mem[96] = 0x24574bc300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    require ext_code.size(sub_0a9ac856Address)
    staticcall sub_0a9ac856Address.0x24574bc3 with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function sub_626d66a6(?) {
    require calldata.size - 4 >= 160
    mem[96] = 0x95a1c37200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    mem[260] = 0
    require ext_code.size(sub_0a9ac856Address)
    staticcall sub_0a9ac856Address.0x95a1c372 with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4, arg5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], address(arg1) << 64
    require 0, Mask(224, 32, arg3) >> 32 <= 4294967296
    require 0, Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[0, Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and 0, Mask(224, 32, arg3) >> 32 + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    _9 = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[0, Mask(224, 32, arg3) >> 32 + 96])] = mem[0, Mask(224, 32, arg3) >> 32 + 128 len floor32(mem[0, Mask(224, 32, arg3) >> 32 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = _4
    mem[(32 * _9) + ceil32(return_data.size) + 160] = 64
    mem[(32 * _9) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _4, 64, mem[(32 * _9) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function sub_95a1c372(?) {
    require calldata.size - 4 >= 192
    mem[96] = 0x95a1c37200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    mem[260] = arg6
    require ext_code.size(sub_0a9ac856Address)
    staticcall sub_0a9ac856Address.0x95a1c372 with:
            gas gas_remaining wei
           args 0, 0, address(arg2), arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], address(arg1) << 64
    require 0, Mask(224, 32, arg3) >> 32 <= 4294967296
    require 0, Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[0, Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and 0, Mask(224, 32, arg3) >> 32 + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    _9 = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[0, Mask(224, 32, arg3) >> 32 + 96])] = mem[0, Mask(224, 32, arg3) >> 32 + 128 len floor32(mem[0, Mask(224, 32, arg3) >> 32 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = _4
    mem[(32 * _9) + ceil32(return_data.size) + 160] = 0, address(arg2) << 64
    mem[(32 * _9) + ceil32(return_data.size) + 192] = 96
    mem[(32 * _9) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _4, 
           0,
           address(arg2) << 64,
           96,
           mem[(32 * _9) + ceil32(return_data.size) + 224 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}



}
