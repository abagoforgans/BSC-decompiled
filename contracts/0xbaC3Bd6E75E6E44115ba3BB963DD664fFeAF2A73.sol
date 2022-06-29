contract main {




// =====================  Runtime code  =====================


address pancakeswapRouterAddress;
address sub_57da063bAddress;
address stor2;

function sub_57da063b(?) {
    return sub_57da063bAddress
}

function pancakeswapRouter() {
    return pancakeswapRouterAddress
}

function _fallback() payable {
    revert
}

function sub_05391e66(?) payable {
    require calldata.size - 4 >= 64
    stor2 = arg1
    require ext_code.size(sub_57da063bAddress)
    staticcall sub_57da063bAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(sub_57da063bAddress)
    staticcall sub_57da063bAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _43 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _46 = mem[_43 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_43 + 192])] = mem[_43 + 224 len floor32(mem[_43 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(sub_57da063bAddress)
    staticcall sub_57da063bAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _46) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(sub_57da063bAddress)
    call sub_57da063bAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 89 * mem[ceil32(return_data.size) + 256] / 100, Array(len=2, data=mem[(32 * _46) + ceil32(return_data.size) + 484 len 64]), address(arg2), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_bf84812a(?) payable {
    require calldata.size - 4 >= 64
    stor2 = arg1
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _43 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _46 = mem[_43 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_43 + 192])] = mem[_43 + 224 len floor32(mem[_43 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _46) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(pancakeswapRouterAddress)
    call pancakeswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 89 * mem[ceil32(return_data.size) + 256] / 100, Array(len=2, data=mem[(32 * _46) + ceil32(return_data.size) + 484 len 64]), address(arg2), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_d332d32f(?) payable {
    require calldata.size - 4 >= 64
    stor2 = arg1
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _49 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _52 = mem[_49 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_49 + 192])] = mem[_49 + 224 len floor32(mem[_49 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(pancakeswapRouterAddress)
    staticcall pancakeswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _52) + ceil32(return_data.size) + 288] = stor2
    mem[(32 * _52) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * _52) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _52) + ceil32(return_data.size) + 388] = arg2
    mem[(32 * _52) + ceil32(return_data.size) + 420] = block.timestamp
    mem[(32 * _52) + ceil32(return_data.size) + 356] = 128
    mem[(32 * _52) + ceil32(return_data.size) + 452] = 2
    mem[(32 * _52) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(pancakeswapRouterAddress)
    call pancakeswapRouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 256], Array(len=2, data=mem[(32 * _52) + ceil32(return_data.size) + 484 len 64]), address(arg2), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _52) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _52) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * _52) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] <= 4294967296
    require mem[(32 * _52) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _52) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _52) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _52) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * mem[mem[(32 * _52) + ceil32(return_data.size) + 320 len 4], mem[ceil32(return_data.size) + 256 len 28] + (32 * _52) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}



}
