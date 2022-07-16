contract main {




// =====================  Runtime code  =====================


const getPathForETHtoToken = Array(len=3, data=mem[288 len 96])


address pancakeRouterAddress;
address stor3;
uint256 sub_9f80e7c8;

function sub_9f80e7c8(?) {
    return sub_9f80e7c8
}

function pancakeRouter() {
    return pancakeRouterAddress
}

function _fallback() payable {
    revert
}

function sub_251c7c69(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_9f80e7c8 = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a6a7f2e8(?) {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    mem[160] = 0x804678fa97d91b974ec2af3c843270886528a9e6
    mem[192] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
    mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _24 = mem[224 len 4], Mask(224, 32, arg1) >> 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    _27 = mem[_24 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_24 + 224])] = mem[_24 + 256 len floor32(mem[_24 + 224])]
    mem[(32 * _27) + ceil32(return_data.size) + 256] = 32
    mem[(32 * _27) + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 224]
    mem[(32 * _27) + ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 224])] = mem[ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 224])]
    return 32, mem[(32 * _27) + ceil32(return_data.size) + 288 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
}

function sub_e0d380e5(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args 0x804678fa97d91b974ec2af3c843270886528a9e6, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x804678fa97d91b974ec2af3c843270886528a9e6, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 0
    mem[324] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
    mem[356] = block.timestamp + 500
    mem[292] = 160
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}



}
