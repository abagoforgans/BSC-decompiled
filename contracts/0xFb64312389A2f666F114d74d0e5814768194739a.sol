contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (stor0 == arg1)
}

function withdrawBase(uint256 arg1) {
    require stor0 == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_352855bf(?) {
    require ext_code.size(arg1)
    call arg1.0x301b5e47 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f7fad322(?) {
    require ext_code.size(arg1)
    call arg1.0x5e07312b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_db70f767(?) {
    require ext_code.size(arg1)
    call arg1.Sell(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1, ext_call.return_data[0]
}

function sub_22911ff7(?) {
    require ext_code.size(arg1)
    call arg1.Buy(address rg1) with:
       value arg2 wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1, ext_call.return_data[0]
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require stor0 == msg.sender
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
    require stor0 == msg.sender
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

function sub_452e2a7f(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 1
    mem[(32 * arg1.length) + 196] = this.address
    mem[(32 * arg1.length) + 228] = block.timestamp + 360
    mem[(32 * arg1.length) + 164] = 128
    mem[(32 * arg1.length) + 260] = arg1.length
    mem[(32 * arg1.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], 0 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128]
    return 1, mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 192]
}

function sub_6ba41243(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
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
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
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

function sub_5bd95214(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 0
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args 0, 64, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], 0 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128]
    require ext_code.size(arg2)
    call arg2.0x301b5e47 with:
         gas gas_remaining wei
        args mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        return 0
    return (ext_call.return_data[0] - arg3)
}

function sub_bf9eb4da(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 1
    mem[(32 * arg1.length) + 228] = this.address
    mem[(32 * arg1.length) + 260] = block.timestamp + 360
    mem[(32 * arg1.length) + 196] = 160
    mem[(32 * arg1.length) + 292] = arg1.length
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]
    return 1, mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 192]
}

function sub_ca41cfcc(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 1
    mem[(32 * arg1.length) + 196] = this.address
    mem[(32 * arg1.length) + 228] = block.timestamp + 360
    mem[(32 * arg1.length) + 164] = 128
    mem[(32 * arg1.length) + 260] = arg1.length
    mem[(32 * arg1.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], 0 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 128]
    require ext_code.size(arg2)
    call arg2.Sell(uint256 rg1) with:
         gas gas_remaining wei
        args mem[mem[(32 * arg1.length) + 128 len 4], 0 + (32 * arg1.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1, ext_call.return_data[0] - arg3
}

function sub_e41cc653(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 416] = 0
    mem[(32 * arg1.length) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 452] = arg3
    mem[(32 * arg1.length) + 484] = 64
    mem[(32 * arg1.length) + 516] = arg1.length
    mem[(32 * arg1.length) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 448
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 448] <= 4294967296 and mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 448]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 448]
    mem[(32 * arg1.length) + 384] = mem[mem[(32 * arg1.length) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 512]
    require ext_code.size(arg2)
    call arg2.0x301b5e47 with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        revert with 0, 'test# Something went wrong1'
    # nil
}

function sub_98e7bf29(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(arg2)
    call arg2.0x5e07312b with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
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
    if mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 192] <= arg3:
        return 0
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 192] - arg3
    return memory
      from (32 * arg1.length) + ceil32(return_data.size) + 128
       len 32
}

function sub_fb1e6be4(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(arg2)
    call arg2.Buy(address rg1) with:
       value arg3 wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 164] = 1
    mem[(32 * arg1.length) + 228] = this.address
    mem[(32 * arg1.length) + 260] = block.timestamp + 360
    mem[(32 * arg1.length) + 196] = 160
    mem[(32 * arg1.length) + 292] = arg1.length
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
    return 1, mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 192] - arg3
}

function sub_c550d908(?) {
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
    require ext_code.size(arg3)
    call arg3.0x5e07312b with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 548] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + 580] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 612] = arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 644 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
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
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 548] = arg4
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 580] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 612] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg4, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg1.length) + 644 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544]
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, arg4) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 608]
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 548] = mem[(32 * arg1.length) + (32 * arg2.length) + 416]
    require ext_code.size(arg3)
    call arg3.0x301b5e47 with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 548 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[(32 * arg1.length) + (32 * arg2.length) + 384] <= arg4:
        mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544] = 0
        if ext_call.return_data[0] <= arg4:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = 0
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - arg4
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg1.length) + (32 * arg2.length) + 384] - arg4
        if ext_call.return_data[0] <= arg4:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = 0
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - arg4
    return memory
      from (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 544
       len ceil32(return_data.size) + 64
}

function sub_6ae8b83e(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 384] = 0
    mem[(32 * arg1.length) + 416] = 0
    require ext_code.size(arg2)
    call arg2.0x5e07312b with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 452] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 484] = 64
    mem[(32 * arg1.length) + 516] = arg1.length
    mem[(32 * arg1.length) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 448
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 448] <= 4294967296 and mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 448]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 448]
    if mem[mem[(32 * arg1.length) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 512] <= arg3:
        revert with 0, 'test# Something went wrong1'
    mem[(32 * arg1.length) + 128] = 10^17
    mem[(32 * arg1.length) + 160] = eth.balance(this.address)
    mem[(32 * arg1.length) + 288] = 0
    mem[(32 * arg1.length) + 256] = arg3
    mem[(32 * arg1.length) + 192] = 0
    if arg3 >= eth.balance(this.address):
        if 0 <= eth.balance(this.address):
            require ext_code.size(arg2)
            call arg2.0x5e07312b with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + ceil32(return_data.size) + 452] = ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 484] = 64
            mem[(32 * arg1.length) + ceil32(return_data.size) + 516] = arg1.length
            mem[(32 * arg1.length) + ceil32(return_data.size) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor1)
            call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
            require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]
            mem[(32 * arg1.length) + 320] = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 512]
            if mem[(32 * arg1.length) + 320] <= 0:
                mem[(32 * arg1.length) + 224] = 0
                mem[(32 * arg1.length) + 352] = 0
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                require ext_code.size(arg2)
                call arg2.Buy(address rg1) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                require return_data.size >= 32
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    _3633 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3633 - arg3
                    return memory
                      from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                       len (5 * ceil32(return_data.size)) + 64
            else:
                mem[(32 * arg1.length) + 224] = mem[(32 * arg1.length) + 320]
                if mem[(32 * arg1.length) + 320] <= 0:
                    mem[(32 * arg1.length) + 352] = 0
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                    require ext_code.size(arg2)
                    call arg2.Buy(address rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        _3629 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3629 - arg3
                        return memory
                          from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                           len (5 * ceil32(return_data.size)) + 64
                else:
                    if mem[(32 * arg1.length) + 320] <= arg4:
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3630 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3630 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
                    else:
                        if arg3 < eth.balance(this.address):
                            mem[(32 * arg1.length) + 352] = 1
                            var52004 = ext_call.return_data[0]
                            continue 
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3631 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3631 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
        else:
            mem[(32 * arg1.length) + 288] = eth.balance(this.address)
            require ext_code.size(arg2)
            call arg2.0x5e07312b with:
                 gas gas_remaining wei
                args eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + ceil32(return_data.size) + 452] = ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 484] = 64
            mem[(32 * arg1.length) + ceil32(return_data.size) + 516] = arg1.length
            mem[(32 * arg1.length) + ceil32(return_data.size) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor1)
            call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
            require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]
            mem[(32 * arg1.length) + 320] = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 512]
            if mem[(32 * arg1.length) + 320] <= eth.balance(this.address):
                mem[(32 * arg1.length) + 224] = 0
                mem[(32 * arg1.length) + 352] = 0
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                require ext_code.size(arg2)
                call arg2.Buy(address rg1) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                require return_data.size >= 32
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    _3641 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3641 - arg3
                    return memory
                      from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                       len (5 * ceil32(return_data.size)) + 64
            else:
                mem[(32 * arg1.length) + 224] = mem[(32 * arg1.length) + 320] - eth.balance(this.address)
                if mem[(32 * arg1.length) + 320] - eth.balance(this.address) <= 0:
                    mem[(32 * arg1.length) + 352] = 0
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                    require ext_code.size(arg2)
                    call arg2.Buy(address rg1) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        _3637 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3637 - arg3
                        return memory
                          from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                           len (5 * ceil32(return_data.size)) + 64
                else:
                    if mem[(32 * arg1.length) + 320] - eth.balance(this.address) <= arg4:
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3638 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3638 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
                    else:
                        if arg3 < eth.balance(this.address):
                            mem[(32 * arg1.length) + 352] = 1
                            var52004 = ext_call.return_data[0]
                            continue 
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3639 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3639 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
    else:
        mem[(32 * arg1.length) + 288] = arg3 + 10^17
        if arg3 + 10^17 <= eth.balance(this.address):
            require ext_code.size(arg2)
            call arg2.0x5e07312b with:
                 gas gas_remaining wei
                args (arg3 + 10^17)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + ceil32(return_data.size) + 452] = ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 484] = 64
            mem[(32 * arg1.length) + ceil32(return_data.size) + 516] = arg1.length
            mem[(32 * arg1.length) + ceil32(return_data.size) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor1)
            call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
            require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]
            mem[(32 * arg1.length) + 320] = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 512]
            if mem[(32 * arg1.length) + 320] <= arg3 + 10^17:
                mem[(32 * arg1.length) + 224] = 0
                mem[(32 * arg1.length) + 352] = 0
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                require ext_code.size(arg2)
                call arg2.Buy(address rg1) with:
                   value arg3 + 10^17 wei
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                require return_data.size >= 32
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    _3649 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3649 - arg3
                    return memory
                      from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                       len (5 * ceil32(return_data.size)) + 64
            else:
                mem[(32 * arg1.length) + 224] = mem[(32 * arg1.length) + 320] + -arg3 - 10^17
                if mem[(32 * arg1.length) + 320] + -arg3 - 10^17 <= 0:
                    mem[(32 * arg1.length) + 352] = 0
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                    require ext_code.size(arg2)
                    call arg2.Buy(address rg1) with:
                       value arg3 + 10^17 wei
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        _3645 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3645 - arg3
                        return memory
                          from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                           len (5 * ceil32(return_data.size)) + 64
                else:
                    if mem[(32 * arg1.length) + 320] + -arg3 - 10^17 <= arg4:
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                           value arg3 + 10^17 wei
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3646 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3646 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
                    else:
                        if arg3 < eth.balance(this.address):
                            mem[(32 * arg1.length) + 352] = 1
                            var52004 = ext_call.return_data[0]
                            continue 
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                           value arg3 + 10^17 wei
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3647 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3647 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
        else:
            mem[(32 * arg1.length) + 288] = eth.balance(this.address)
            require ext_code.size(arg2)
            call arg2.0x5e07312b with:
                 gas gas_remaining wei
                args eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + ceil32(return_data.size) + 452] = ext_call.return_data[0]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 484] = 64
            mem[(32 * arg1.length) + ceil32(return_data.size) + 516] = arg1.length
            mem[(32 * arg1.length) + ceil32(return_data.size) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor1)
            call stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
            require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 448]
            mem[(32 * arg1.length) + 320] = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 512]
            if mem[(32 * arg1.length) + 320] <= eth.balance(this.address):
                mem[(32 * arg1.length) + 224] = 0
                mem[(32 * arg1.length) + 352] = 0
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                require ext_code.size(arg2)
                call arg2.Buy(address rg1) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                require return_data.size >= 32
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    _3657 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3657 - arg3
                    return memory
                      from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                       len (5 * ceil32(return_data.size)) + 64
            else:
                mem[(32 * arg1.length) + 224] = mem[(32 * arg1.length) + 320] - eth.balance(this.address)
                if mem[(32 * arg1.length) + 320] - eth.balance(this.address) <= 0:
                    mem[(32 * arg1.length) + 352] = 0
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                    require ext_code.size(arg2)
                    call arg2.Buy(address rg1) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(stor1)
                    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                    if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        _3653 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3653 - arg3
                        return memory
                          from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                           len (5 * ceil32(return_data.size)) + 64
                else:
                    if mem[(32 * arg1.length) + 320] - eth.balance(this.address) <= arg4:
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3654 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3654 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
                    else:
                        if arg3 < eth.balance(this.address):
                            mem[(32 * arg1.length) + 352] = 1
                            var52004 = ext_call.return_data[0]
                            continue 
                        mem[(32 * arg1.length) + 352] = 0
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = this.address
                        require ext_code.size(arg2)
                        call arg2.Buy(address rg1) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484] = 1
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 548] = this.address
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 360
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 516] = 160
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 612] = arg1.length
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 644 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(stor1)
                        call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452 len (32 * arg1.length) + ceil32(return_data.size) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                        if mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512] > arg3 + arg4:
                            require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 448]
                            _3655 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 512]
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 1
                            mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 480] = _3655 - arg3
                            return memory
                              from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
                               len (5 * ceil32(return_data.size)) + 64
    ('le', ('mem', ('range', ('add', 512, ('data', ('mem', ('range', ('add', 448, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 4)), ('ext_call.return_data', 0, 28)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32)), ('add', ('param', 'arg3'), ('param', 'arg4')))
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 452] = 32
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 484] = 27
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 516] = 'test# Something went wrong2'
    revert with memory
      from (32 * arg1.length) + (4 * ceil32(return_data.size)) + 448
       len (5 * ceil32(return_data.size)) + 100
}



}
