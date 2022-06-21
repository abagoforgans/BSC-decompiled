contract main {




// =====================  Runtime code  =====================


const getBal = eth.balance(this.address)


address stor0;
address stor1;

function kill() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_103bdf43(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return eth.balance(arg1)
}

function runTest() payable {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.Play() with:
       value eth.balance(this.address) / 5 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_28f07383(?) payable {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.Play() with:
       value eth.balance(this.address) / 5 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= eth.balance(this.address):
        revert with 0, 'lost'
}



}
