contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
uint256 totalETH;
address pancakeswapRouterAddress;

function totalETH() {
    return totalETH
}

function pancakeswapRouter() {
    return pancakeswapRouterAddress
}

function selfDestruct(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_6393ff6c(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * arg1)
}

function newOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'You are not the owner.'
    stor1 = arg1
}

function getAmountsIn(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[96] = 2
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg2
    mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _25
    mem[mem[64] + 64 len 32 * _25] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25]
    return Array(len=_25, data=mem[mem[64] + 64 len 32 * _25])
}

function sub_61308472(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = stor2
    mem[ceil32(return_data.size) + 324] = block.timestamp + 300
    require ext_code.size(pancakeswapRouterAddress)
    call pancakeswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, stor2, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _26 + (32 * _27) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _27] = mem[ceil32(return_data.size) + _26 + 224 len 32 * _27]
    if 1 >= _27:
        revert with 0, 50
    _38 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _38
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _38
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_41] == bool(mem[_41])
}

function sub_d5d080ab(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = stor2
    mem[ceil32(return_data.size) + 324] = block.timestamp + 300
    require ext_code.size(pancakeswapRouterAddress)
    call pancakeswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, stor2, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _26 + (32 * _27) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _27] = mem[ceil32(return_data.size) + _26 + 224 len 32 * _27]
    if 1 >= _27:
        revert with 0, 50
    _38 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = address(arg3)
    mem[mem[64] + 36] = _38
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), _38
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_41] == bool(mem[_41])
}

function sub_cfb4ca1b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = stor2
    mem[ceil32(return_data.size) + 292] = block.timestamp + 300
    require ext_code.size(pancakeswapRouterAddress)
    call pancakeswapRouterAddress.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), stor2, block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _34 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _35 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _34 + (32 * _35) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _35] = mem[ceil32(return_data.size) + _34 + 224 len 32 * _35]
    if 1 >= _35:
        revert with 0, 50
    _54 = mem[(2 * ceil32(return_data.size)) + 256]
    if 1 >= _35:
        revert with 0, 50
    _56 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] < mem[(2 * ceil32(return_data.size)) + 256] / 100:
        revert with 0, 17
    if 1 >= _35:
        revert with 0, 50
    _58 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _56 - (_54 / 100)
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _56 - (_54 / 100)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_61] == bool(mem[_61])
    mem[mem[64] + 4] = stor1
    mem[mem[64] + 36] = _58 / 100
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor1, _58 / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == bool(mem[_65])
}

function swap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[100] = this.address
    mem[132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[(2 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg2
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = arg1
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = arg2
    mem[(6 * ceil32(return_data.size)) + 228] = 100
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = stor2
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 300
    require ext_code.size(pancakeswapRouterAddress)
    call pancakeswapRouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _46 = mem[_45]
    require mem[_45] <= test266151307()
    require _45 + mem[_45] + 31 < _45 + return_data.size
    _47 = mem[_45 + mem[_45]]
    if mem[_45 + mem[_45]] > test266151307():
        revert with 0, 65
    if _45 + ceil32(return_data.size) + (32 * mem[_45 + mem[_45]]) + 32 > test266151307() or (32 * mem[_45 + mem[_45]]) + 32 < 0:
        revert with 0, 65
    mem[64] = _45 + ceil32(return_data.size) + (32 * mem[_45 + mem[_45]]) + 32
    mem[_45 + ceil32(return_data.size)] = _47
    require return_data.size >= _46 + (32 * _47) + 32
    mem[_45 + ceil32(return_data.size) + 32 len 32 * _47] = mem[_45 + _46 + 32 len 32 * _47]
    if 1 >= _47:
        revert with 0, 50
    if 1 >= _47:
        revert with 0, 50
    if mem[_45 + ceil32(return_data.size) + 64] < mem[_45 + ceil32(return_data.size) + 64] / 100:
        revert with 0, 17
    if 1 >= _47:
        revert with 0, 50
    call msg.sender with:
       value mem[_45 + ceil32(return_data.size) + 64] - (mem[_45 + ceil32(return_data.size) + 64] / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value mem[_45 + ceil32(return_data.size) + 64] / 100 wei
         gas 2300 * is_zero(value) wei
    if 1 >= _47:
        revert with 0, 50
    _74 = mem[_45 + ceil32(return_data.size) + 64]
    _75 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = _47
    mem[mem[64] + 128 len 32 * _47] = mem[_45 + ceil32(return_data.size) + 32 len 32 * _47]
    mem[_75 + 32] = _74
    mem[_75 + 64] = totalETH
    emit 0xc98f824b: mem[mem[64] len _75 + (32 * _47) + -mem[64] + 128]
}



}
