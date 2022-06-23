contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0250b36b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x7e2ea1063bee76eabf678d18bda017cc7f51f8d0)
    call 0x7e2ea1063bee76eabf678d18bda017cc7f51f8d0.0xcc037ddb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ddf45518(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0x7e2ea1063bee76eabf678d18bda017cc7f51f8d0)
    call 0x7e2ea1063bee76eabf678d18bda017cc7f51f8d0.0xcc037ddb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
