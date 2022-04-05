contract main {




// =====================  Runtime code  =====================


#
#  - sub_4c962a2d(?)
#  - sub_5905df9d(?)
#  - sub_a1a80a0f(?)
#
address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (stor0 == arg1)
}

function renounceOwnership() {
    require stor0 == msg.sender
    emit OwnershipTransferred(0, stor0);
    stor0 = 0
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

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
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

function sub_6ba41243(?) {
    mem[96] = arg2.length
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
    mem[96] = arg2.length
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

function sub_99d62be2(?) {
    mem[96] = arg2.length
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

function sub_c29c9142(?) {
    mem[96] = arg2.length
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

function sub_3931f5ed(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = block.timestamp + 360
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 128
    mem[(32 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * arg1.length) + (32 * arg2.length) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * arg1.length) + (32 * arg2.length) + 160]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * arg1.length) + (32 * arg2.length) + 160]
    _31 = mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], 0 + (32 * arg1.length) + (32 * arg2.length) + 224]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 164] = _31
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 292] = block.timestamp + 360
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 160
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _31, 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
    _50 = mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224]
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = _50 - arg3
    return memory
      from (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
       len ceil32(return_data.size) + 64
}

function sub_97201e03(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp + 360
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 160
    mem[(32 * arg1.length) + (32 * arg2.length) + 324] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]
    _31 = mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 224]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 164] = _31
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 292] = block.timestamp + 360
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 160
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _31, 1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 356 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
    _50 = mem[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _31) >> 32 + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224]
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = _50 - arg3
    return memory
      from (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
       len ceil32(return_data.size) + 64
}



}
