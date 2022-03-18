contract main {




// =====================  Runtime code  =====================


#
#  - sub_937c70dd(?)
#
address stor0;
address wethAddress;

function weth() {
    return wethAddress
}

function _fallback() payable {
    revert
}

function setWETH(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    wethAddress = arg1
}

function drainBalance() payable {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
