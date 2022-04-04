contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;

function isOwner(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
  stop
}

function withdrawBase(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require msg.sender
    require stor0[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_8117369f(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    require ext_code.size(arg4)
    call arg4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_6ba41243(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 192]
    return memory
      from (32 * arg2.length) + ceil32(return_data.size) + 128
       len 32
}

function sub_98f650da(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 192]
    return memory
      from (32 * arg2.length) + ceil32(return_data.size) + 128
       len 32
}

function sub_46a47959(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg2, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]
    require ext_code.size(stor1)
    call stor1.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg5')))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))), mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        revert with 0, 'test# Something went wrong1'
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + ceil32(return_data.size) + 132] = 1
    mem[(32 * arg1.length) + ceil32(return_data.size) + 196] = this.address
    mem[(32 * arg1.length) + ceil32(return_data.size) + 228] = block.timestamp + 360
    mem[(32 * arg1.length) + ceil32(return_data.size) + 164] = 128
    mem[(32 * arg1.length) + ceil32(return_data.size) + 260] = arg1.length
    mem[(32 * arg1.length) + ceil32(return_data.size) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 + (32 * arg1.length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 + (32 * arg1.length) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 + (32 * arg1.length) + ceil32(return_data.size) + 128]
    _73 = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], 0 + (32 * arg1.length) + ceil32(return_data.size) + 192]
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 132] = ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg5'))))
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 164] = ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4'))))
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 196] = _73
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = 0
    require ext_code.size(stor1)
    call stor1.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg2 + arg3:
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 128] = 1
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0] - arg2
        return memory
          from (32 * arg1.length) + (2 * ceil32(return_data.size)) + 128
           len ceil32(return_data.size) + 64
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 132] = 32
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 164] = 27
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 196] = 'test# Something went wrong2'
    revert with memory
      from (32 * arg1.length) + (2 * ceil32(return_data.size)) + 128
       len ceil32(return_data.size) + 100
}

function sub_071b744f(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor1)
    call stor1.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg5')))), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
    if mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 192] <= arg2:
        revert with 0, 'test# Something went wrong1'
    require ext_code.size(stor1)
    call stor1.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg5')))), arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 164] = 1
    mem[(32 * arg1.length) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * arg1.length) + ceil32(return_data.size) + 260] = block.timestamp + 360
    mem[(32 * arg1.length) + ceil32(return_data.size) + 196] = 160
    mem[(32 * arg1.length) + ceil32(return_data.size) + 292] = arg1.length
    mem[(32 * arg1.length) + ceil32(return_data.size) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 128]
    if mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 192] > arg2 + arg3:
        require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 128]
        _77 = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 192]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 128] = 1
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 160] = _77 - arg2
        return memory
          from (32 * arg1.length) + (2 * ceil32(return_data.size)) + 128
           len ceil32(return_data.size) + 64
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 132] = 32
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 164] = 27
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 196] = 'test# Something went wrong2'
    revert with memory
      from (32 * arg1.length) + (2 * ceil32(return_data.size)) + 128
       len ceil32(return_data.size) + 100
}

function sub_2d631094(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
    require ext_code.size(stor1)
    call stor1.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg3')))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 548] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + 580] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 612] = arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 644 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 644 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (32 * arg2.length) + 544] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (32 * arg2.length) + 544]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (32 * arg2.length) + 544]
    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = mem[mem[(32 * arg1.length) + (32 * arg2.length) + 544 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (32 * arg2.length) + 608]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 548] = arg5
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 580] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 612] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg5, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg1.length) + 644 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544]
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg5) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 608]
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 548] = ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4'))))
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 580] = ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg3'))))
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 612] = mem[(32 * arg1.length) + (32 * arg2.length) + 416]
    require ext_code.size(stor1)
    call stor1.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 548 len ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[(32 * arg1.length) + (32 * arg2.length) + 384] <= arg5:
        mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544] = 0
        if ext_call.return_data[0] <= arg5:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = 0
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - arg5
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg1.length) + (32 * arg2.length) + 384] - arg5
        if ext_call.return_data[0] <= arg5:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = 0
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - arg5
    return memory
      from (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544
       len ceil32(return_data.size) + 64
}



}
