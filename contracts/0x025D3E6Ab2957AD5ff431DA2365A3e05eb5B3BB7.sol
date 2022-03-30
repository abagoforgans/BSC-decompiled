contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function b() payable {
    require ext_code.size(stor0)
    call stor0.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Balance(ext_call.return_data[0], ext_call.return_data[0]);
}



}
