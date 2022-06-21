contract main {




// =====================  Runtime code  =====================


uint8 stor0;

function getData() {
    return bool(stor0)
}

function func() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function get() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
