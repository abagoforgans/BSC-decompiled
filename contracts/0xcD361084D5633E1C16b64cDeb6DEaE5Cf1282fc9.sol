contract main {




// =====================  Runtime code  =====================


const INF = -1


address sub_afbeb7bcAddress; offset 8
address sub_8800b7e4Address;
address stor2;
address sub_4f31637eAddress;
address stor5;

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

function sub_e4bf9d54(?) {
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8800b7e4Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
