contract main {




// =====================  Runtime code  =====================


#
#  - sub_3b545524(?)
#
address stor3;

function _fallback() payable {
    revert
}

function withdrawETH() {
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'owner != address(0)'
    if stor3 != msg.sender:
        revert with 0, 'ownerUser == msg.sender'
    stor3 = arg1
}

function sub_dfe3d537(?) {
    require calldata.size - 4 >= 32
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
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
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
