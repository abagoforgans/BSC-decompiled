contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
