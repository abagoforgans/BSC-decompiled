contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - swapExactTokensForETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - swapTokensForExactETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - swapExactETHForTokens(address arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#
function _fallback() payable {
    revert
}

function swapETHForExactTokens(address arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[132] = arg2
    mem[196] = arg4
    mem[228] = arg5
    mem[164] = 128
    mem[260] = arg3.length
    mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 292] = 0
    mem[96] = floor32(arg3.length) + 164
    mem[132 len 28] = Mask(224, 32, arg2) >> 32
    mem[128 len 4] = swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4)
    mem[floor32(arg3.length) + 292 len floor32(floor32(arg3.length) + 164)] = swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), arg2, Array(len=arg5, data=mem[260 len floor32(floor32(arg3.length) + 164) - 132]), address(arg4)
    mem[floor32(arg3.length) + floor32(floor32(arg3.length) + 164) + -(floor32(arg3.length) + 164 % 32) + 324 len floor32(arg3.length) + 164 % 32] = mem[(3 * floor32(floor32(arg3.length) + 164)) + (-2 * floor32(arg3.length)) - 200 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 164) + 164]
    delegate arg1.mem[floor32(floor32(arg3.length) + 164) + 96 len 4] with:
         gas gas_remaining wei
        args Mask(8 * floor32(floor32(arg3.length) + 164) - 4, -(8 * floor32(floor32(arg3.length) + 164)) + 256, mem[260 len floor32(floor32(arg3.length) + 164) - 132]) << (8 * floor32(floor32(arg3.length) + 164)) - 256, mem[floor32(arg3.length) + floor32(floor32(arg3.length) + 164) + 292 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 164) + 164]
    if not return_data.size:
        require delegate.return_code
        require floor32(arg3.length) + 164 >= 32
        require swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 <= 4294967296
        require swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 160 <= floor32(arg3.length) + 292
        require mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + (32 * mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 128]) + 160 <= floor32(arg3.length) + 292
        mem[floor32(arg3.length) + 292] = mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 128]
        _46 = mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 128]
        mem[floor32(arg3.length) + 324 len floor32(mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 128])] = mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 160 len floor32(mem[swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4), Mask(224, 32, arg2) >> 32 + 128])]
        mem[(32 * _46) + floor32(arg3.length) + 324] = 32
        mem[(32 * _46) + floor32(arg3.length) + 356] = mem[floor32(arg3.length) + 292]
        mem[(32 * _46) + floor32(arg3.length) + 388 len floor32(mem[floor32(arg3.length) + 292])] = mem[floor32(arg3.length) + 324 len floor32(mem[floor32(arg3.length) + 292])]
        emit Amounts(uint256[] rg1):
                     32,
                     mem[(32 * _46) + floor32(arg3.length) + 356 len (32 * mem[floor32(arg3.length) + 292]) + 32],
    else:
        mem[floor32(arg3.length) + 292] = return_data.size
        mem[floor32(arg3.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require delegate.return_code
        require return_data.size >= 32
        _42 = mem[floor32(arg3.length) + 324]
        require mem[floor32(arg3.length) + 324] <= 4294967296
        require mem[floor32(arg3.length) + 324] + 64 <= return_data.size + 32
        require mem[floor32(arg3.length) + mem[floor32(arg3.length) + 324] + 324] <= 4294967296 and mem[floor32(arg3.length) + 324] + (32 * mem[floor32(arg3.length) + mem[floor32(arg3.length) + 324] + 324]) + 64 <= return_data.size + 32
        mem[floor32(arg3.length) + ceil32(return_data.size) + 293] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 324] + 324]
        _47 = mem[floor32(arg3.length) + _42 + 324]
        mem[floor32(arg3.length) + ceil32(return_data.size) + 325 len floor32(mem[floor32(arg3.length) + _42 + 324])] = mem[floor32(arg3.length) + _42 + 356 len floor32(mem[floor32(arg3.length) + _42 + 324])]
        mem[(32 * _47) + floor32(arg3.length) + ceil32(return_data.size) + 325] = 32
        mem[(32 * _47) + floor32(arg3.length) + ceil32(return_data.size) + 357] = mem[floor32(arg3.length) + ceil32(return_data.size) + 293]
        mem[(32 * _47) + floor32(arg3.length) + ceil32(return_data.size) + 389 len floor32(mem[floor32(arg3.length) + ceil32(return_data.size) + 293])] = mem[floor32(arg3.length) + ceil32(return_data.size) + 325 len floor32(mem[floor32(arg3.length) + ceil32(return_data.size) + 293])]
        emit Amounts(uint256[] rg1):
                     32,
                     mem[(32 * _47) + floor32(arg3.length) + ceil32(return_data.size) + 357 len (32 * mem[floor32(arg3.length) + ceil32(return_data.size) + 293]) + 32],
}

function swapTokensForExactTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[132] = arg2
    mem[164] = arg3
    mem[228] = arg5
    mem[260] = arg6
    mem[196] = 160
    mem[292] = arg4.length
    mem[324 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 324] = 0
    mem[96] = floor32(arg4.length) + 196
    mem[132 len 28] = Mask(224, 32, arg2) >> 32
    mem[128 len 4] = swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5)
    mem[floor32(arg4.length) + 324 len floor32(floor32(arg4.length) + 196)] = swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), arg2, arg3, Array(len=arg6, data=mem[292 len floor32(floor32(arg4.length) + 196) - 164]), address(arg5)
    mem[floor32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 356 len floor32(arg4.length) + 196 % 32] = mem[(3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 264 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
    delegate arg1.mem[floor32(floor32(arg4.length) + 196) + 96 len 4] with:
         gas gas_remaining wei
        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[292 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + floor32(floor32(arg4.length) + 196) + 324 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
    if not return_data.size:
        require delegate.return_code
        require floor32(arg4.length) + 196 >= 32
        require swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 <= 4294967296
        require swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 160 <= floor32(arg4.length) + 324
        require mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + (32 * mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 128]) + 160 <= floor32(arg4.length) + 324
        mem[floor32(arg4.length) + 324] = mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 128]
        _46 = mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 128]
        mem[floor32(arg4.length) + 356 len floor32(mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 128])] = mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 160 len floor32(mem[swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5), Mask(224, 32, arg2) >> 32 + 128])]
        mem[(32 * _46) + floor32(arg4.length) + 356] = 32
        mem[(32 * _46) + floor32(arg4.length) + 388] = mem[floor32(arg4.length) + 324]
        mem[(32 * _46) + floor32(arg4.length) + 420 len floor32(mem[floor32(arg4.length) + 324])] = mem[floor32(arg4.length) + 356 len floor32(mem[floor32(arg4.length) + 324])]
        emit Amounts(uint256[] rg1):
                     32,
                     mem[(32 * _46) + floor32(arg4.length) + 388 len (32 * mem[floor32(arg4.length) + 324]) + 32],
    else:
        mem[floor32(arg4.length) + 324] = return_data.size
        mem[floor32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require delegate.return_code
        require return_data.size >= 32
        _42 = mem[floor32(arg4.length) + 356]
        require mem[floor32(arg4.length) + 356] <= 4294967296
        require mem[floor32(arg4.length) + 356] + 64 <= return_data.size + 32
        require mem[floor32(arg4.length) + mem[floor32(arg4.length) + 356] + 356] <= 4294967296 and mem[floor32(arg4.length) + 356] + (32 * mem[floor32(arg4.length) + mem[floor32(arg4.length) + 356] + 356]) + 64 <= return_data.size + 32
        mem[floor32(arg4.length) + ceil32(return_data.size) + 325] = mem[floor32(arg4.length) + mem[floor32(arg4.length) + 356] + 356]
        _47 = mem[floor32(arg4.length) + _42 + 356]
        mem[floor32(arg4.length) + ceil32(return_data.size) + 357 len floor32(mem[floor32(arg4.length) + _42 + 356])] = mem[floor32(arg4.length) + _42 + 388 len floor32(mem[floor32(arg4.length) + _42 + 356])]
        mem[(32 * _47) + floor32(arg4.length) + ceil32(return_data.size) + 357] = 32
        mem[(32 * _47) + floor32(arg4.length) + ceil32(return_data.size) + 389] = mem[floor32(arg4.length) + ceil32(return_data.size) + 325]
        mem[(32 * _47) + floor32(arg4.length) + ceil32(return_data.size) + 421 len floor32(mem[floor32(arg4.length) + ceil32(return_data.size) + 325])] = mem[floor32(arg4.length) + ceil32(return_data.size) + 357 len floor32(mem[floor32(arg4.length) + ceil32(return_data.size) + 325])]
        emit Amounts(uint256[] rg1):
                     32,
                     mem[(32 * _47) + floor32(arg4.length) + ceil32(return_data.size) + 389 len (32 * mem[floor32(arg4.length) + ceil32(return_data.size) + 325]) + 32],
}



}
