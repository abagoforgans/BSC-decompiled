contract main {




// =====================  Runtime code  =====================


address routerAddress;

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function factory() payable {
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}



}
