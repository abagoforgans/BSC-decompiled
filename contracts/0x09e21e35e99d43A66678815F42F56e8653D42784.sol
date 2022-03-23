contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fe78a2e2(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg2
    mem[(32 * arg4.length) + 164] = 64
    mem[(32 * arg4.length) + 196] = arg4.length
    mem[(32 * arg4.length) + 228 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 228 len (32 * arg4.length) - floor32(arg4.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _37 = mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128]
    _40 = mem[_37 + (32 * arg4.length) + 128]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 160 len floor32(mem[_37 + (32 * arg4.length) + 128])] = mem[_37 + (32 * arg4.length) + 160 len floor32(mem[_37 + (32 * arg4.length) + 128])]
    require arg4.length - 1 < mem[(32 * arg4.length) + ceil32(return_data.size) + 128]
    if mem[(32 * arg4.length - 1) + (32 * arg4.length) + ceil32(return_data.size) + 160] < arg3:
        revert with 0, 'less than amountsOut'
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 164] = arg3
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 228] = msg.sender
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 260] = arg5
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 196] = 128
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 292] = arg4.length
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]), msg.sender, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _88 = mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
    mem[(32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160]
    _91 = mem[_88 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160]
    mem[(32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_88 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160])] = mem[_88 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 192 len floor32(mem[_88 + (32 * _40) + (32 * arg4.length) + ceil32(return_data.size) + 160])]
    mem[(32 * _91) + (32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 192] = 32
    mem[(32 * _91) + (32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 224] = arg4.length
    mem[(32 * _91) + (32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 256 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    return memory
      from (32 * _91) + (32 * _40) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 192
       len (96 * arg4.length) + 64
}



}
