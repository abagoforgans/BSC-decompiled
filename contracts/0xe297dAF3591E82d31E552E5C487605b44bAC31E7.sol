contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_835cd856(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = arg3
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = 64
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = arg4.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + floor32(arg4.length) + 292 len (32 * arg4.length) - floor32(arg4.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    _51 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 192] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _54 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _51 + 192]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _51 + 192])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _51 + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _51 + 192])]
    mem[64] = (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 192] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 192]
    _92 = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 192] - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224]
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 228] = _92
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 292] = arg5.length
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 324 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _92, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + floor32(arg5.length) + 324 len (32 * arg5.length) - floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _126 = mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32
    require mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32 <= 4294967296
    require mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32 + 32 <= return_data.size
    require mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32 + 224] <= 4294967296 and mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32 + (32 * mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _92) >> 32 + 224]
    _129 = mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + _126 + 224]
    mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + _126 + 224])] = mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + _126 + 256 len floor32(mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + _126 + 224])]
    mem[64] = (32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256
    require mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 224]
    _153 = mem[(32 * mem[(32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256]
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 260] = _153
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 292] = 64
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 324] = arg6.length
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 356 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _153, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + floor32(arg6.length) + 356 len (32 * arg6.length) - floor32(arg6.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _173 = mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32
    require mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32 <= 4294967296
    require mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32 + 32 <= return_data.size
    require mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32 + 256] <= 4294967296 and mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32 + (32 * mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32 + 256]) + 32 <= return_data.size
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _153) >> 32 + 256]
    _176 = mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + _173 + 256]
    mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + _173 + 256])] = mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + _173 + 288 len floor32(mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + _173 + 256])]
    mem[64] = (32 * _176) + (32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 288
    require mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 256]
    mem[(32 * _176) + (32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * mem[(32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 288]
    return memory
      from (32 * _176) + (32 * _129) + (32 * _54) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 288
       len 32
}



}
