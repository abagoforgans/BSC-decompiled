contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
uint256 sub_eeeb3650;
uint256 sub_f1e25acc;
mapping of uint256 balanceOf;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function price() {
    return price
}

function sub_eeeb3650(?) {
    return sub_eeeb3650
}

function sub_f1e25acc(?) {
    return sub_f1e25acc
}

function withdraw() {
    sub_f1e25acc = eth.balance(this.address)
    if beneficiaryAddress != msg.sender:
        emit 0x19f46026: msg.sender, sub_f1e25acc, 0
    else:
        call beneficiaryAddress with:
           value sub_f1e25acc wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x19f46026: msg.sender, sub_f1e25acc, 0
        else:
            emit 0x19f46026: beneficiaryAddress, sub_f1e25acc, 1
}

function _fallback() payable {
    require block.timestamp <= deadline
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require price
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value
    require msg.value + sub_eeeb3650 >= sub_eeeb3650
    sub_eeeb3650 += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / price * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
