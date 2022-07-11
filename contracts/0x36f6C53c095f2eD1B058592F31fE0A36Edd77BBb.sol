contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function setContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0 = arg1
}

function sub_d1fdbb9f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
