contract main {




// =====================  Runtime code  =====================


address pancakeRouterAddress;
address sub_cadfc995Address;

function pancakeRouter() {
    return pancakeRouterAddress
}

function sub_cadfc995(?) {
    return sub_cadfc995Address
}

function _fallback() payable {
    revert
}

function sub_df14af42(?) payable {
    require calldata.size - 4 >= 96
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[260] = msg.sender
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[356 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}



}
