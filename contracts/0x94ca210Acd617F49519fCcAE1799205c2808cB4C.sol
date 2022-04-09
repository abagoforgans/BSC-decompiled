contract main {




// =====================  Runtime code  =====================


address parentAddress;

function parentAddress() {
    return parentAddress
}

function flush() {
    call parentAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function _fallback() payable {
    call parentAddress with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require ext_call.success
    emit ForwarderDeposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function flushTokens(address arg1) {
    require msg.sender == parentAddress
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args parentAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensFlushed(address(arg1), ext_call.return_data[0]);
}



}
