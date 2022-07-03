contract main {




// =====================  Runtime code  =====================


const sub_70de629f(?) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


mapping of uint256 sub_6e5bc567;

function sub_6e5bc567(?) {
    require calldata.size - 4 >= 32
    return sub_6e5bc567[arg1]
}

function _fallback() payable {
    revert
}

function depositBNB(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 != msg.value:
        revert with 0, 'Incorrect funds amount'
    if sub_6e5bc567[address(msg.sender)] + arg1 < sub_6e5bc567[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_6e5bc567[address(msg.sender)] += arg1
    emit DepositBnbEvent(arg1, msg.sender);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid withdrawal amount'
    if sub_6e5bc567[address(msg.sender)] < arg1:
        revert with 0, 'Insufficient amount to withdraw'
    if arg1 > sub_6e5bc567[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_6e5bc567[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Withdraw failed'
    emit WithdrawBnbEvent(arg1, msg.sender);
}



}
