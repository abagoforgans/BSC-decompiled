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
    _32 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _35 = mem[_32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_32 + 192])] = mem[_32 + 224 len floor32(mem[_32 + 192])]
    require 3 < mem[ceil32(return_data.size) + 192]
    _49 = mem[ceil32(return_data.size) + 320]
    if not mem[ceil32(return_data.size) + 320]:
        revert with 0, '0'
    s = 0
    idx = mem[ceil32(return_data.size) + 320]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if not s:
        t = s - 1
        idx = mem[ceil32(return_data.size) + 320]
        while idx:
            require t < s
            mem[t + (32 * _35) + ceil32(return_data.size) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
    else:
        mem[(32 * _35) + ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = _49
        while idx:
            require t < s
            mem[t + (32 * _35) + ceil32(return_data.size) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
    mem[(32 * _35) + ceil32(return_data.size) + ceil32(s) + 324 len ceil32(s)] = mem[(32 * _35) + ceil32(return_data.size) + 256 len ceil32(s)]
    if not s % 32:
        revert with 0, 32, s, mem[(32 * _35) + ceil32(return_data.size) + 256 len s]
    mem[floor32(s) + (32 * _35) + ceil32(return_data.size) + ceil32(s) + 324] = mem[floor32(s) + (32 * _35) + ceil32(return_data.size) + ceil32(s) + -(s % 32) + 356 len s % 32]
    revert with 0, 
                32,
                s,
                mem[(32 * _35) + ceil32(return_data.size) + 256 len ceil32(s)],
                mem[(32 * _35) + ceil32(return_data.size) + (2 * ceil32(s)) + 324 len floor32(s) + -ceil32(s) + 32]
}



}
