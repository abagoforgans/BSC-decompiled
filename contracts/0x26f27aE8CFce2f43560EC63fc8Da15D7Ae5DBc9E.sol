contract main {




// =====================  Runtime code  =====================


uint256 totalDeposits;
address sub_e93df725Address;

function totalDeposits() {
    return totalDeposits
}

function sub_e93df725(?) {
    return sub_e93df725Address
}

function _fallback() payable {
    revert
}

function contribute() payable {
    if msg.value + totalDeposits < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += msg.value
    emit 0xf8b6ed19: msg.value, msg.sender
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_e93df725Address != msg.sender:
        revert with 0, 'Admin Only Can do this'
    call sub_e93df725Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
