contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_c9ec965c(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 2
    require ext_code.size(stor0)
    staticcall stor0.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[260] = this.address
    mem[292] = arg3
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[356 len 64]), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _50 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _53 = mem[_50 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_50 + 192])] = mem[_50 + 224 len floor32(mem[_50 + 192])]
    require ext_code.size(stor0)
    staticcall stor0.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _53) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
    mem[(32 * _53) + ceil32(return_data.size) + 320] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _53) + ceil32(return_data.size) + 324] = 2 * 10^18
    mem[(32 * _53) + ceil32(return_data.size) + 356] = 5 * 10^16
    mem[(32 * _53) + ceil32(return_data.size) + 420] = msg.sender
    mem[(32 * _53) + ceil32(return_data.size) + 452] = arg3
    mem[(32 * _53) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _53) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _53) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 2 * 10^18, 5 * 10^16, 160, msg.sender, arg3, 2, mem[(32 * _53) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _53) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _53) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _115 = mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287
    require mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287 <= 4294967296
    require mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287 + 32 <= return_data.size
    require mem[mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287 + (32 * _53) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287 + (32 * mem[mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287 + (32 * _53) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _53) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _53) + ceil32(return_data.size) + 320 len 4], 465661287 + (32 * _53) + ceil32(return_data.size) + 320]
    mem[(32 * _53) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_115 + (32 * _53) + ceil32(return_data.size) + 320])] = mem[_115 + (32 * _53) + ceil32(return_data.size) + 352 len floor32(mem[_115 + (32 * _53) + ceil32(return_data.size) + 320])]
    require 3 < mem[(32 * _53) + (2 * ceil32(return_data.size)) + 320]
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    call address(ext_call.return_data[12 len 20]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, mem[(32 * _53) + (2 * ceil32(return_data.size)) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
