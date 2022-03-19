contract main {




// =====================  Runtime code  =====================


const INF = -1


address sub_afbeb7bcAddress;
address sub_8800b7e4Address;
address stor2;
address stor3;
address sub_4f31637eAddress;

function sub_4f31637e(?) {
    return sub_4f31637eAddress
}

function sub_8800b7e4(?) {
    return sub_8800b7e4Address
}

function sub_afbeb7bc(?) {
    return sub_afbeb7bcAddress
}

function _fallback() payable {
    revert
}

function sub_cbd20c9a(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = sub_afbeb7bcAddress
    mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[260] = this.address
    mem[292] = -1
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor3)
    call stor3.0x9cf68911 with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[356 len 64]), address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args sub_afbeb7bcAddress, ext_call.return_data[0], 1, 1, msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
