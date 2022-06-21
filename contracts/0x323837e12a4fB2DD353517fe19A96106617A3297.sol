contract main {




// =====================  Runtime code  =====================


const sub_13cf7e7b(?) = eth.balance(this.address)


address stor0;
address stor1;
uint256 sub_29641931;

function sub_29641931(?) {
    return sub_29641931
}

function _fallback() payable {
  stop
}

function sub_fc1f5317(?) payable {
  stop
}

function sub_1e96c2a7(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not authorized!'
    stor1 = arg1
}

function sub_f4f4abc8(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not authorized!'
    sub_29641931 = arg1
}

function sub_fc8bdd36(?) {
    if stor0 != msg.sender:
        revert with 0, 'Not authorized!'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bb1f397c(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Not authorized!'
    mem[96] = 2
    mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^15
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^15, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _68 = mem[192 len 4], 232830
    require mem[192 len 4], 232830 <= 4294967296
    require mem[192 len 4], 232830 + 32 <= return_data.size
    require mem[mem[192 len 4], 232830 + 192] <= 4294967296 and mem[192 len 4], 232830 + (32 * mem[mem[192 len 4], 232830 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
    _71 = mem[_68 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_68 + 192])] = mem[_68 + 224 len floor32(mem[_68 + 192])]
    mem[(32 * _71) + ceil32(return_data.size) + 260] = 128
    mem[(32 * _71) + ceil32(return_data.size) + 388 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10^15 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 60, 2, mem[(32 * _71) + ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _71) + ceil32(return_data.size) + 228] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _71) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < mem[ceil32(return_data.size) + 192]
    require 1 < mem[ceil32(return_data.size) + 192]
    require mem[ceil32(return_data.size) + 256] / 100
    if mem[ceil32(return_data.size) + 256] - ext_call.return_data[0] / mem[ceil32(return_data.size) + 256] / 100 >= sub_29641931:
        revert with 0, 'Buying tax too high!'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _71) + ceil32(return_data.size) + 288] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[(32 * _71) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _71) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
    mem[(32 * _71) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _71) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _71) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 64, 0, 2, mem[(32 * _71) + ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _71) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _71) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _218 = mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _71) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= 4294967296 and mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _71) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 <= return_data.size
    mem[(32 * _71) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _71) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    _221 = mem[(32 * _71) + ceil32(return_data.size) + _218 + 320]
    mem[(32 * _71) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _71) + ceil32(return_data.size) + _218 + 320])] = mem[(32 * _71) + ceil32(return_data.size) + _218 + 352 len floor32(mem[(32 * _71) + ceil32(return_data.size) + _218 + 320])]
    mem[(32 * _221) + (32 * _71) + (2 * ceil32(return_data.size)) + 352] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(32 * _221) + (32 * _71) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(32 * _221) + (32 * _71) + (2 * ceil32(return_data.size)) + 388] = 0
    mem[(32 * _221) + (32 * _71) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(32 * _221) + (32 * _71) + (2 * ceil32(return_data.size)) + 548 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < mem[(32 * _71) + (2 * ceil32(return_data.size)) + 320]
    require 1 < mem[(32 * _71) + (2 * ceil32(return_data.size)) + 320]
    require mem[(32 * _71) + (2 * ceil32(return_data.size)) + 384] / 100
    if mem[(32 * _71) + (2 * ceil32(return_data.size)) + 384] / mem[(32 * _71) + (2 * ceil32(return_data.size)) + 384] / 100 >= sub_29641931:
        revert with 0, 'Selling tax too high!'
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, 128, stor1, block.timestamp + 60, 2, 2, mem[(32 * _221) + (32 * _71) + (2 * ceil32(return_data.size)) + 548]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
