contract main {




// =====================  Runtime code  =====================


address senderAddress;
address receiverAddress;
uint256 deposited;
address stor3;
mapping of uint256 _balance;

function sender() {
    return senderAddress
}

function _balance(address arg1) {
    require calldata.size - 4 >= 32
    return _balance[arg1]
}

function deposited() {
    return deposited
}

function receiver() {
    return receiverAddress
}

function _fallback() payable {
    revert
}

function deposit() payable {
    senderAddress = msg.sender
    deposited = msg.value
    receiverAddress = stor3
    _balance[stor0] += deposited
    call receiverAddress with:
       value deposited wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(senderAddress, receiverAddress, deposited);
}

function transferFrom(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    senderAddress = arg1
    deposited = arg3
    receiverAddress = stor3
    _balance[stor0] += deposited
    require ext_code.size(arg4)
    call arg4.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(address(arg1), address(arg2), arg3);
    return 1
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    senderAddress = arg2
    deposited = arg3
    receiverAddress = stor3
    _balance[stor0] += deposited
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), 0x6f6cdc25c640fec9d2f9f006cd03712cd89b489a, arg3 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), 0xac00a7e1466233d96290668c8e949ef2c8859376, arg3 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(address(arg2), 0x6f6cdc25c640fec9d2f9f006cd03712cd89b489a, arg3);
    emit Transfer(address(arg2), 0xac00a7e1466233d96290668c8e949ef2c8859376, arg3);
    return 1
}



}
