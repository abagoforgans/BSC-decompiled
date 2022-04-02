contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed.'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if msg.sender != 0x1b96b92314c44b159149f7e0303511fb2fc4774f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 96
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 132] = cd[(arg4 + 68)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 164] = cd[(arg4 + 68)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = this.address
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 260] = block.timestamp + 120
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 292] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])]
    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[(arg4 + 68)], cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=call.data[arg4 + cd[(arg4 + 100)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324 len (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)])]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 <= 4294967296
    require mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 32 <= return_data.size
    require mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 128]) + 32 <= return_data.size
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function flashSwap(address arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg3.length
    mem[196 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 196] = 0
    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
    staticcall 0x5ff2b0db69458a0750badebc4f9e13add608c7f.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] <= arg2 + (3 * arg2 / 997) + 1:
        revert with 0, 'U1'
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
    staticcall 0x1b96b92314c44b159149f7e0303511fb2fc4774f.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _9) + ceil32(return_data.size) + 160] = arg1
    mem[(32 * _9) + ceil32(return_data.size) + 192] = arg2
    mem[(32 * _9) + ceil32(return_data.size) + 224] = 96
    mem[(32 * _9) + ceil32(return_data.size) + 256] = arg3.length
    mem[(32 * _9) + ceil32(return_data.size) + 288 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * _9) + ceil32(return_data.size) + (32 * arg3.length) + 288] = 0
    if address(ext_call.return_data[0]) == arg1:
        if arg1 == ext_call.return_data[12 len 20]:
            require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
            call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg2, arg2, address(this.address), Array(len=floor32(arg3.length) + 128, data=mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(arg3.length) + -ceil32(floor32(arg3.length)) + 124])
        else:
            if not floor32(arg3.length) + 128 % 32:
                require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
                call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg2, 0, address(this.address), 128, floor32(arg3.length) + 128, mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(arg3.length) + -ceil32(floor32(arg3.length)) + 124]
            else:
                mem[floor32(floor32(arg3.length) + 128) + (32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + 452] = mem[floor32(floor32(arg3.length) + 128) + (32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + -(floor32(arg3.length) + 128 % 32) + 484 len floor32(arg3.length) + 128 % 32]
                require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
                call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg2, 0, address(this.address), 128, floor32(arg3.length) + 128, mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(floor32(arg3.length) + 128) + -ceil32(floor32(arg3.length)) + 28]
    else:
        if arg1 == ext_call.return_data[12 len 20]:
            if not floor32(arg3.length) + 128 % 32:
                require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
                call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg2, address(this.address), 128, floor32(arg3.length) + 128, mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(arg3.length) + -ceil32(floor32(arg3.length)) + 124]
            else:
                mem[floor32(floor32(arg3.length) + 128) + (32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + 452] = mem[floor32(floor32(arg3.length) + 128) + (32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + -(floor32(arg3.length) + 128 % 32) + 484 len floor32(arg3.length) + 128 % 32]
                require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
                call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg2, address(this.address), 128, floor32(arg3.length) + 128, mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(floor32(arg3.length) + 128) + -ceil32(floor32(arg3.length)) + 28]
        else:
            if not floor32(arg3.length) + 128 % 32:
                require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
                call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, floor32(arg3.length) + 128, mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(arg3.length) + -ceil32(floor32(arg3.length)) + 124]
            else:
                mem[floor32(floor32(arg3.length) + 128) + (32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + 452] = mem[floor32(floor32(arg3.length) + 128) + (32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + -(floor32(arg3.length) + 128 % 32) + 484 len floor32(arg3.length) + 128 % 32]
                require ext_code.size(0x1b96b92314c44b159149f7e0303511fb2fc4774f)
                call 0x1b96b92314c44b159149f7e0303511fb2fc4774f.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, floor32(arg3.length) + 128, mem[(32 * _9) + ceil32(return_data.size) + 160 len ceil32(floor32(arg3.length)) + 4], mem[(32 * _9) + ceil32(return_data.size) + floor32(arg3.length) + ceil32(floor32(arg3.length)) + 456 len floor32(floor32(arg3.length) + 128) + -ceil32(floor32(arg3.length)) + 28]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
