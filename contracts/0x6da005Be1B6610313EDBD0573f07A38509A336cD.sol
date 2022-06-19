contract main {




// =====================  Runtime code  =====================


address owner;
uint256 balance;

function owner() {
    return owner
}

function balance() {
    return balance
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner can withdraw funds'
    if arg1 > balance:
        revert with 0, 'Insufficient funds'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balance < arg1:
        revert with 'NH{q', 17
    balance -= arg1
    emit TransferSent(msg.sender, address(arg2), arg1);
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Only owner can withdraw funds'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'balance is low'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TransferSent(msg.sender, address(arg2), arg3);
}



}
