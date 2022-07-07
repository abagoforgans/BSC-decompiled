contract main {




// =====================  Runtime code  =====================


address implementationAddress;
address adminAddress;

function getAdmin() {
    return adminAddress
}

function getImplementation() {
    return implementationAddress
}

function _fallback() payable {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Caller must be admin'
    emit AdminChanged(adminAddress, arg1);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1967: new admin is the zero address'
    adminAddress = arg1
}



}
