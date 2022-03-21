contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6c80bf06(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
