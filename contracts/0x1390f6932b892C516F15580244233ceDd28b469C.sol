contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0250b36b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1e44d0ce3ef57ae38b8d4b7705153711ab474490)
    call 0x1e44d0ce3ef57ae38b8d4b7705153711ab474490.0xcc037ddb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_512ad881(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0x1e44d0ce3ef57ae38b8d4b7705153711ab474490)
    call 0x1e44d0ce3ef57ae38b8d4b7705153711ab474490.0xcc037ddb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
