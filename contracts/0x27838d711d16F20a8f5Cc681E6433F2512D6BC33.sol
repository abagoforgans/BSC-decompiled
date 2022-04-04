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
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0x24574bc300000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = address(arg2)
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
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function sub_626d66a6(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0x95a1c37200000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = address(arg2)
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
    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
    require 0, Mask(224, 32, arg3) >> 32 + 127 < return_data.size + 96
    _7 = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    require mem[0, Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
    require (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= 0, Mask(224, 32, arg3) >> 32 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[0, Mask(224, 32, arg3) >> 32 + 128 len 32 * _7]
    mem[mem[64]] = _4
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _7
    mem[mem[64] + 96 len 32 * _7] = mem[ceil32(return_data.size) + 128 len 32 * _7]
    return _4, Array(len=_7, data=mem[mem[64] + 96 len 32 * _7])
}

function sub_95a1c372(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0x95a1c37200000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = address(arg2)
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
    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
    require 0, Mask(224, 32, arg3) >> 32 + 127 < return_data.size + 96
    _7 = mem[0, Mask(224, 32, arg3) >> 32 + 96]
    require mem[0, Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
    require (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[0, Mask(224, 32, arg3) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= 0, Mask(224, 32, arg3) >> 32 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[0, Mask(224, 32, arg3) >> 32 + 128 len 32 * _7]
    mem[mem[64]] = _4
    mem[mem[64] + 32] = 0, address(arg2) << 64
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = _7
    mem[mem[64] + 128 len 32 * _7] = mem[ceil32(return_data.size) + 128 len 32 * _7]
    return _4, 0, address(arg2) << 64, 96, _7, mem[mem[64] + 128 len 32 * _7]
}



}
