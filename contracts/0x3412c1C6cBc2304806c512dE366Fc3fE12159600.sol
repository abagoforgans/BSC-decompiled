contract main {




// =====================  Runtime code  =====================


address stor0;
address operatorAddress;
address stor2;
address stor3;
address stor4;
uint256 sub_0ae8a68e;
address stor6;

function sub_0ae8a68e(?) {
    if stor0 != msg.sender:
        revert with 0, 'fuck'
    return sub_0ae8a68e
}

function getOperator() {
    if stor0 != msg.sender:
        revert with 0, 'fuck'
    return operatorAddress
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    if stor0 != msg.sender:
        revert with 0, 'fuck'
    stor0 = arg1
}

function sub_6a5039b1(?) {
    if stor0 != msg.sender:
        revert with 0, 'fuck'
    sub_0ae8a68e = arg1
}

function setOperator(address arg1) {
    if stor0 != msg.sender:
        revert with 0, 'fuck'
    operatorAddress = arg1
}

function sub_2910f263(?) {
    if operatorAddress != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'fuck2'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc4040df6: address(arg1), address(arg2), arg3, bool(ext_call.return_data[0])
}

function sub_0583a311(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 2
    mem[(32 * arg1.length) + 160 len 64] = code.data[15493 len 64]
    require 1 < arg1.length
    mem[(32 * arg1.length) + 160] = mem[172 len 20]
    require 0 < arg1.length
    mem[(32 * arg1.length) + 192] = mem[140 len 20]
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 260] = 64
    mem[(32 * arg1.length) + 292] = 2
    mem[(32 * arg1.length) + 324 len 0] = None
    require ext_code.size(stor6)
    call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=2, data=mem[(32 * arg1.length) + 324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 224] <= 4294967296 and mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 224]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 224]
    _43 = mem[mem[(32 * arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 288]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 260] = _43 - (_43 * arg2 / 1000)
    mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = block.timestamp + 15
    mem[(32 * arg1.length) + ceil32(return_data.size) + 292] = 160
    mem[(32 * arg1.length) + ceil32(return_data.size) + 388] = 2
    mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _43 - (_43 * arg2 / 1000), Array(len=2, data=mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function sub_4b8bc779(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 2
    mem[(32 * arg1.length) + 160 len 64] = code.data[15493 len 64]
    require 1 < arg1.length
    mem[(32 * arg1.length) + 160] = mem[172 len 20]
    require 0 < arg1.length
    mem[(32 * arg1.length) + 192] = mem[140 len 20]
    mem[(32 * arg1.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 228] = 10^14
    mem[(32 * arg1.length) + 260] = 64
    mem[(32 * arg1.length) + 292] = arg1.length
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor6)
    call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args 10^14, 64, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 224 len 4], 23283 <= 4294967296
    require mem[(32 * arg1.length) + 224 len 4], 23283 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 224] <= 4294967296 and mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 224]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 224]
    _58 = mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 288]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + ceil32(return_data.size) + 228] = _58 - (_58 * arg2 / 1000)
    mem[(32 * arg1.length) + ceil32(return_data.size) + 292] = this.address
    mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = block.timestamp + 15
    mem[(32 * arg1.length) + ceil32(return_data.size) + 260] = 128
    mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = arg1.length
    mem[(32 * arg1.length) + ceil32(return_data.size) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor6)
    call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10^14 wei
         gas gas_remaining wei
        args _58 - (_58 * arg2 / 1000), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _58 - (_58 * arg2 / 1000)) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _58 - (_58 * arg2 / 1000)) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _58 - (_58 * arg2 / 1000)) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _58 - (_58 * arg2 / 1000)) >> 32 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _58 - (_58 * arg2 / 1000)) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    require 1 < arg1.length
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = stor4
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 260] = -1
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x70a08231 with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 260] = 64
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 292] = 2
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324 len 0] = None
    require ext_code.size(stor6)
    call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224]
    _128 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 260] = _128 - (_128 * arg2 / 1000)
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = this.address
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 15
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 292] = 160
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 388] = 2
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 420 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_65b40be1(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 2
    mem[(32 * arg1.length) + 160] = stor2
    mem[(32 * arg1.length) + 192] = stor3
    mem[(32 * arg1.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 228] = 10^14
    mem[(32 * arg1.length) + 260] = 64
    mem[(32 * arg1.length) + 292] = 2
    mem[(32 * arg1.length) + 324 len 0] = None
    require ext_code.size(stor6)
    call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args 10^14, 64, 2, mem[(32 * arg1.length) + 324 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 224 len 4], 23283 <= 4294967296
    require mem[(32 * arg1.length) + 224 len 4], 23283 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 224] <= 4294967296 and mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 224]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 224]
    _90 = mem[mem[(32 * arg1.length) + 224 len 4], 23283 + (32 * arg1.length) + 288]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + ceil32(return_data.size) + 228] = _90
    mem[(32 * arg1.length) + ceil32(return_data.size) + 292] = this.address
    mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = block.timestamp + 15
    mem[(32 * arg1.length) + ceil32(return_data.size) + 260] = 128
    mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = 2
    mem[(32 * arg1.length) + ceil32(return_data.size) + 388 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10^14 wei
         gas gas_remaining wei
        args _90, Array(len=2, data=mem[(32 * arg1.length) + ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _90) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _90) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _90) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _90) >> 32 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _90) >> 32 + (32 * arg1.length) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 260] = 64
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 292] = arg1.length
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor6)
    call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 228 len (32 * arg1.length) + ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 224]
    _232 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 260] = _232 - (_232 * arg2 / 1000)
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = this.address
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 15
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 292] = 160
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 388] = arg1.length
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor6)
    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 228 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (6 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 224] = 2
    require 1 < arg1.length
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 256] = mem[172 len 20]
    require 0 < arg1.length
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 288] = mem[140 len 20]
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 356] = 64
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 388] = 2
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 420 len 0] = None
    require ext_code.size(stor6)
    call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=2, data=mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (7 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320]
    _322 = mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 384]
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 356] = _322 - (_322 * arg2 / 1000)
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 420] = this.address
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 452] = block.timestamp + 15
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 388] = 160
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 484] = 2
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 516 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _322 - (_322 * arg2 / 1000), Array(len=2, data=mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 516 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (8 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
}

function sub_fc4344d4(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if operatorAddress == msg.sender:
        mem[(32 * arg1.length) + 128] = 2
        mem[(32 * arg1.length) + 160 len 64] = code.data[15493 len 64]
        mem[(32 * arg1.length) + 224] = 2
        require 1 < arg1.length
        mem[(32 * arg1.length) + 160] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 192] = mem[140 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 256] = mem[140 len 20]
        mem[(32 * arg1.length) + 288] = stor3
        mem[(32 * arg1.length) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 324] = 10^18
        mem[(32 * arg1.length) + 356] = 64
        mem[(32 * arg1.length) + 388] = 2
        mem[(32 * arg1.length) + 420 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^18, 64, 2, mem[(32 * arg1.length) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + 320 len 4], 232830643 <= 4294967296
        require mem[(32 * arg1.length) + 320 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 320] <= 4294967296 and mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 320]
        _208 = mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 384]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = 10^18
        mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = 64
        mem[(32 * arg1.length) + ceil32(return_data.size) + 388] = 2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^18, 64, 2, mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 <= 4294967296
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 320]
        if mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 384] * _208 / 10^18 > arg2 * sub_0ae8a68e:
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324] = 32
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 356] = 4
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 388] = 'err2'
            revert with memory
              from (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320
               len ceil32(return_data.size) + 100
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324] = msg.value
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 356] = 64
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 388] = arg1.length
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324 len (32 * arg1.length) + ceil32(return_data.size) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320]
        _524 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = _524 - (_524 * arg3 / 1000)
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 15
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 356] = 128
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 452] = arg1.length
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 484 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _524 - (_524 * arg3 / 1000)) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _524 - (_524 * arg3 / 1000)) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _524 - (_524 * arg3 / 1000)) >> 32 + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _524 - (_524 * arg3 / 1000)) >> 32 + (32 * mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _524 - (_524 * arg3 / 1000)) >> 32 + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
    else:
        if stor0 != msg.sender:
            revert with 0, 'fuck2'
        mem[(32 * arg1.length) + 128] = 2
        mem[(32 * arg1.length) + 160 len 64] = code.data[15493 len 64]
        mem[(32 * arg1.length) + 224] = 2
        require 1 < arg1.length
        mem[(32 * arg1.length) + 160] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 192] = mem[140 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 256] = mem[140 len 20]
        mem[(32 * arg1.length) + 288] = stor3
        mem[(32 * arg1.length) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 324] = 10^18
        mem[(32 * arg1.length) + 356] = 64
        mem[(32 * arg1.length) + 388] = 2
        mem[(32 * arg1.length) + 420 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^18, 64, 2, mem[(32 * arg1.length) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + 320 len 4], 232830643 <= 4294967296
        require mem[(32 * arg1.length) + 320 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 320] <= 4294967296 and mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 320]
        _212 = mem[mem[(32 * arg1.length) + 320 len 4], 232830643 + (32 * arg1.length) + 384]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = 10^18
        mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = 64
        mem[(32 * arg1.length) + ceil32(return_data.size) + 388] = 2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^18, 64, 2, mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 <= 4294967296
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 320]
        if mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 232830643 + (32 * arg1.length) + ceil32(return_data.size) + 384] * _212 / 10^18 > arg2 * sub_0ae8a68e:
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324] = 32
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 356] = 4
            mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 388] = 'err2'
            revert with memory
              from (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320
               len ceil32(return_data.size) + 100
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324] = msg.value
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 356] = 64
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 388] = arg1.length
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324 len (32 * arg1.length) + ceil32(return_data.size) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320]
        _526 = mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = _526 - (_526 * arg3 / 1000)
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 15
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 356] = 128
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 452] = arg1.length
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 484 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _526 - (_526 * arg3 / 1000)) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _526 - (_526 * arg3 / 1000)) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _526 - (_526 * arg3 / 1000)) >> 32 + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _526 - (_526 * arg3 / 1000)) >> 32 + (32 * mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _526 - (_526 * arg3 / 1000)) >> 32 + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x70a08231 with:
         gas gas_remaining wei
        args address(this.address), mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 356 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require 1 < arg1.length
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] = mem[140 len 20]
    mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 352] = mem[172 len 20]
    emit 0xa699432c: mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 64], msg.value, ext_call.return_data[0], mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 448 len 9 * ceil32(return_data.size)]
}

function sub_0b72b9e7(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if operatorAddress == msg.sender:
        mem[(32 * arg1.length) + 128] = 2
        mem[(32 * arg1.length) + 160 len 64] = code.data[15493 len 64]
        require 1 < arg1.length
        mem[(32 * arg1.length) + 160] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 192] = mem[140 len 20]
        mem[(32 * arg1.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 228] = 10^18
        mem[(32 * arg1.length) + 260] = 64
        mem[(32 * arg1.length) + 292] = 2
        mem[(32 * arg1.length) + 324 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^18, 64, 2, mem[(32 * arg1.length) + 324 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[(32 * arg1.length) + 224 len 4], 232830643 <= 4294967296
        require mem[(32 * arg1.length) + 224 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 224] <= 4294967296 and mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 224]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 224]
        if mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 288] > arg2 * sub_0ae8a68e:
            revert with 0, 'err2'
        mem[(32 * arg1.length) + ceil32(return_data.size) + 224] = 2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 256] = stor2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 288] = stor3
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = 10^14
        mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = 64
        mem[(32 * arg1.length) + ceil32(return_data.size) + 388] = 2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^14, 64, 2, mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 <= 4294967296
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 320]
        _1220 = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 384]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324] = _1220
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp + 15
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 356] = 128
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = 2
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484 len 0] = None
        require ext_code.size(stor6)
        call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 10^14 wei
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1220) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1220) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1220) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1220) >> 32 + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1220) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 356] = 64
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 388] = arg1.length
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320]
        _2260 = mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 384]
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 356] = _2260 - (_2260 * arg3 / 1000)
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 420] = this.address
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 452] = block.timestamp + 15
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 388] = 160
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 484] = arg1.length
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 516 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _2260 - (_2260 * arg3 / 1000), Array(len=arg1.length, data=mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 516 len (32 * arg1.length) + (9 * ceil32(return_data.size))]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (7 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320] = 2
        require 1 < arg1.length
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 352] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 384] = mem[140 len 20]
        require 1 < arg1.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 452] = 64
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 484] = 2
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 516 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=2, data=mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 516 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (8 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 416]
        _3092 = mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 480]
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 452] = _3092 - (_3092 * arg3 / 1000)
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 548] = block.timestamp + 15
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 420 len ceil32(return_data.size) + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (10 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (8 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (8 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 416] = 2
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 448] = stor2
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 480] = stor3
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 516] = msg.value
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args msg.value, Array(len=2, data=mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 612 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (11 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 512]
        _3644 = mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 576]
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 516] = _3644
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 580] = this.address
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 612] = block.timestamp + 15
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 548] = 128
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 644] = 2
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 676 len 0] = None
        require ext_code.size(stor6)
        call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args _3644, Array(len=2, data=mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3644) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3644) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3644) >> 32 + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3644) >> 32 + (32 * mem[mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3644) >> 32 + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 580] = arg1.length
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 612 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + floor32(arg1.length) + 612 len (32 * arg1.length) - floor32(arg1.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (13 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512]
        _4028 = mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 576]
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 548] = _4028 - (_4028 * arg3 / 1000)
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 612] = this.address
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 644] = block.timestamp + 15
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 580] = 160
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 676] = arg1.length
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 708 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _4028 - (_4028 * arg3 / 1000), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + floor32(arg1.length) + 708 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 15
    else:
        if stor0 != msg.sender:
            revert with 0, 'fuck2'
        mem[(32 * arg1.length) + 128] = 2
        mem[(32 * arg1.length) + 160 len 64] = code.data[15493 len 64]
        require 1 < arg1.length
        mem[(32 * arg1.length) + 160] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 192] = mem[140 len 20]
        mem[(32 * arg1.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 228] = 10^18
        mem[(32 * arg1.length) + 260] = 64
        mem[(32 * arg1.length) + 292] = 2
        mem[(32 * arg1.length) + 324 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^18, 64, 2, mem[(32 * arg1.length) + 324 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[(32 * arg1.length) + 224 len 4], 232830643 <= 4294967296
        require mem[(32 * arg1.length) + 224 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 224] <= 4294967296 and mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 224]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 224]
        if mem[mem[(32 * arg1.length) + 224 len 4], 232830643 + (32 * arg1.length) + 288] > arg2 * sub_0ae8a68e:
            revert with 0, 'err2'
        mem[(32 * arg1.length) + ceil32(return_data.size) + 224] = 2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 256] = stor2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 288] = stor3
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + ceil32(return_data.size) + 324] = 10^14
        mem[(32 * arg1.length) + ceil32(return_data.size) + 356] = 64
        mem[(32 * arg1.length) + ceil32(return_data.size) + 388] = 2
        mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^14, 64, 2, mem[(32 * arg1.length) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 <= 4294967296
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 320]
        _1228 = mem[mem[(32 * arg1.length) + ceil32(return_data.size) + 320 len 4], 23283 + (32 * arg1.length) + ceil32(return_data.size) + 384]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324] = _1228
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 420] = block.timestamp + 15
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 356] = 128
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 452] = 2
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 484 len 0] = None
        require ext_code.size(stor6)
        call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 10^14 wei
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1228) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1228) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1228) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1228) >> 32 + (32 * mem[mem[(32 * arg1.length) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _1228) >> 32 + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 356] = 64
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 388] = arg1.length
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 324 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 320]
        _2262 = mem[mem[(32 * arg1.length) + (4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (4 * ceil32(return_data.size)) + 384]
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 356] = _2262 - (_2262 * arg3 / 1000)
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 420] = this.address
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 452] = block.timestamp + 15
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 388] = 160
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 484] = arg1.length
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 516 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _2262 - (_2262 * arg3 / 1000), Array(len=arg1.length, data=mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 516 len (32 * arg1.length) + (9 * ceil32(return_data.size))]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (7 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (6 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (6 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 320] = 2
        require 1 < arg1.length
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 352] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 384] = mem[140 len 20]
        require 1 < arg1.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 452] = 64
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 484] = 2
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 516 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=2, data=mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 516 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (8 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 416]
        _3094 = mem[mem[(32 * arg1.length) + (7 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (7 * ceil32(return_data.size)) + 480]
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 452] = _3094 - (_3094 * arg3 / 1000)
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 548] = block.timestamp + 15
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 420 len ceil32(return_data.size) + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (10 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (8 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (8 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 416] = 2
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 448] = stor2
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 480] = stor3
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 516] = msg.value
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args msg.value, Array(len=2, data=mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 612 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (11 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 512]
        _3652 = mem[mem[(32 * arg1.length) + (10 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, msg.value) >> 32 + (32 * arg1.length) + (10 * ceil32(return_data.size)) + 576]
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 516] = _3652
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 580] = this.address
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 612] = block.timestamp + 15
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 548] = 128
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 644] = 2
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 676 len 0] = None
        require ext_code.size(stor6)
        call stor6.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args _3652, Array(len=2, data=mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 676 len 64]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3652) >> 32 <= 4294967296
        require mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3652) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3652) >> 32 + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3652) >> 32 + (32 * mem[mem[(32 * arg1.length) + (11 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _3652) >> 32 + (32 * arg1.length) + (11 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 580] = arg1.length
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 612 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + floor32(arg1.length) + 612 len (32 * arg1.length) - floor32(arg1.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + (13 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        require mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
        require 1 < mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 512]
        _4030 = mem[mem[(32 * arg1.length) + (12 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (12 * ceil32(return_data.size)) + 576]
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 548] = _4030 - (_4030 * arg3 / 1000)
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 612] = this.address
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 644] = block.timestamp + 15
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 580] = 160
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 676] = arg1.length
        mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 708 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _4030 - (_4030 * arg3 / 1000), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + floor32(arg1.length) + 708 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (14 * ceil32(return_data.size)) + 512
    require return_data.size >= 32
    require mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (13 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + (13 * ceil32(return_data.size)) + 512 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + (13 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require 1 < arg1.length
    mem[(32 * arg1.length) + (14 * ceil32(return_data.size)) + 512] = mem[140 len 20]
    mem[(32 * arg1.length) + (14 * ceil32(return_data.size)) + 544] = mem[172 len 20]
    emit 0x3a43c005: mem[(32 * arg1.length) + (14 * ceil32(return_data.size)) + 512 len 64], ext_call.return_data[0], ext_call.return_data[0]
}



}
