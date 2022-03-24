contract main {




// =====================  Runtime code  =====================


address primaryAddress;
mapping of uint256 balanceOf;
uint256 totalAmount;

function totalAmount() {
    return totalAmount
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() {
    return primaryAddress
}

function primary() {
    return primaryAddress
}

function _fallback() payable {
    totalAmount += msg.value
    emit FundTransfer(msg.value);
}

function stop() {
    require msg.sender == primaryAddress
    call primaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
