contract main {




// =====================  Runtime code  =====================


address sub_04ce1254Address;

function sub_04ce1254(?) payable {
    return sub_04ce1254Address
}

function _fallback() payable {
    revert
}

function sub_5d928dc7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_04ce1254Address)
    call sub_04ce1254Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
