contract main {




// =====================  Runtime code  =====================


address pancakeRouterAddress;
address stor1;

function pancakeRouter() {
    return pancakeRouterAddress
}

function _fallback() payable {
    revert
}

function convertEthToDai(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor1
    mem[192] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[260] = this.address
    mem[292] = block.timestamp + 15
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function getEstimatedETHforDAI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _27 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _30 = mem[_27 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_27 + 192])] = mem[_27 + 224 len floor32(mem[_27 + 192])]
    mem[(32 * _30) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _30) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _30) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _30) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}



}
