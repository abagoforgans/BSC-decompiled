contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sendEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    call 0x1b26c4beaeca43c91dee71f7ad319351b46e4ed1 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed'
    else:
        return 0
}

function sub_84f9c7d8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_7312f005(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function borrowToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function supplyErc20ToCompound(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.mint(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args 0x1b26c4beaeca43c91dee71f7ad319351b46e4ed1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function redeemCErc20Tokens(uint256 arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    if arg2 != 1:
        call arg3.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
    else:
        call arg3.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'redeemResult error'
    return 1
}

function sub_7e03f60f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_15))
        call address(_15).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_c6183e0d(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        call arg1.borrow(uint256 rg1) with:
             gas gas_remaining wei
            args _21
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg2.length
        _27 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        call arg1.mint(uint256 rg1) with:
             gas gas_remaining wei
            args _27
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_afb03447(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        call arg1.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args _25
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg2.length
        _33 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        call arg1.repayBorrow(uint256 rg1) with:
             gas gas_remaining wei
            args _33
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_5d917da6(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg2
    mem[(32 * arg4.length) + 196] = this.address
    mem[(32 * arg4.length) + 228] = block.timestamp + 30
    mem[(32 * arg4.length) + 164] = 128
    mem[(32 * arg4.length) + 260] = arg4.length
    mem[(32 * arg4.length) + 292 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg3)
    call arg3.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args arg2, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 292 len (32 * arg4.length) - floor32(arg4.length)]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
    return 1
}

function sub_0fa8d2aa(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg1
    mem[(32 * arg4.length) + 164] = arg2
    mem[(32 * arg4.length) + 228] = this.address
    mem[(32 * arg4.length) + 260] = block.timestamp + 30
    mem[(32 * arg4.length) + 196] = 160
    mem[(32 * arg4.length) + 292] = arg4.length
    mem[(32 * arg4.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg3)
    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
    return 1
}

function sub_0a5f7676(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg1
    mem[(32 * arg4.length) + 164] = arg2
    mem[(32 * arg4.length) + 228] = this.address
    mem[(32 * arg4.length) + 260] = block.timestamp + 30
    mem[(32 * arg4.length) + 196] = 160
    mem[(32 * arg4.length) + 292] = arg4.length
    mem[(32 * arg4.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg3)
    call arg3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
    return 1
}

function sub_54c2fe53(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require ext_code.size(arg3)
    call arg3.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg6.length) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg6.length) + 132] = arg2
    mem[(32 * arg6.length) + 196] = this.address
    mem[(32 * arg6.length) + 228] = block.timestamp + 30
    mem[(32 * arg6.length) + 164] = 128
    mem[(32 * arg6.length) + 260] = arg6.length
    mem[(32 * arg6.length) + 292 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    require ext_code.size(arg5)
    call arg5.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args arg2, Array(len=arg6.length, data=call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg6.length) + floor32(arg6.length) + 292 len (32 * arg6.length) - floor32(arg6.length)]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg6.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg6.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg6.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg6.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg6.length) + 128] <= 4294967296 and mem[(32 * arg6.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg6.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg6.length) + 128]) + 32 <= return_data.size
    require ext_code.size(arg3)
    call arg3.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_d50b1379(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = 32
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + (32 * arg3.length) + 164 len (96 * arg2.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _28 = mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0
    require mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * arg2.length) + (32 * arg3.length) + 160] <= 4294967296 and mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * mem[mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * arg2.length) + (32 * arg3.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * arg2.length) + (32 * arg3.length) + 160]
    _31 = mem[_28 + (32 * arg2.length) + (32 * arg3.length) + 160]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len floor32(mem[_28 + (32 * arg2.length) + (32 * arg3.length) + 160])] = mem[_28 + (32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[_28 + (32 * arg2.length) + (32 * arg3.length) + 160])]
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _60 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < arg2.length
        mem[(32 * _31) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 196] = mem[(32 * idx) + 140 len 20]
        mem[(32 * _31) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 228] = -1
        require ext_code.size(address(_60))
        call address(_60).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * _31) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 196], -1
        mem[(32 * _31) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_c42d1bc4(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    require 0 < arg6.length
    require ext_code.size(arg3)
    call arg3.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.liquidateBorrow(address rg1, address rg2) with:
       value arg2 wei
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg6.length) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg6.length) + 132] = 0
    mem[(32 * arg6.length) + 164] = arg2
    mem[(32 * arg6.length) + 228] = this.address
    mem[(32 * arg6.length) + 260] = block.timestamp + 30
    mem[(32 * arg6.length) + 196] = 160
    mem[(32 * arg6.length) + 292] = arg6.length
    mem[(32 * arg6.length) + 324 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    require ext_code.size(arg5)
    call arg5.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, arg2, 160, address(this.address), block.timestamp + 30, arg6.length, call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg6.length) + floor32(arg6.length) + 324 len (32 * arg6.length) - floor32(arg6.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg6.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg6.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg6.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg6.length) + 128 len 4], 0 + (32 * arg6.length) + 128] <= 4294967296 and mem[(32 * arg6.length) + 128 len 4], 0 + (32 * mem[mem[(32 * arg6.length) + 128 len 4], 0 + (32 * arg6.length) + 128]) + 32 <= return_data.size
    require ext_code.size(arg3)
    call arg3.repayBorrow() with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_5a12b426(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    require 0 < arg6.length
    require ext_code.size(arg3)
    call arg3.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg6.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg6.length) + 132] = 0
    mem[(32 * arg6.length) + 164] = arg2
    mem[(32 * arg6.length) + 228] = this.address
    mem[(32 * arg6.length) + 260] = block.timestamp + 30
    mem[(32 * arg6.length) + 196] = 160
    mem[(32 * arg6.length) + 292] = arg6.length
    mem[(32 * arg6.length) + 324 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    require ext_code.size(arg5)
    call arg5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, arg2, 160, address(this.address), block.timestamp + 30, arg6.length, call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg6.length) + floor32(arg6.length) + 324 len (32 * arg6.length) - floor32(arg6.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg6.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg6.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg6.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg6.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg6.length) + 128 len 4], 0 + (32 * arg6.length) + 128] <= 4294967296 and mem[(32 * arg6.length) + 128 len 4], 0 + (32 * mem[mem[(32 * arg6.length) + 128 len 4], 0 + (32 * arg6.length) + 128]) + 32 <= return_data.size
    require ext_code.size(arg3)
    call arg3.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
