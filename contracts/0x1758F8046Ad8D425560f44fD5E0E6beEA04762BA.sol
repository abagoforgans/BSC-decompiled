contract main {




// =====================  Runtime code  =====================


uint128 stor10D6; offset 160
address adminAddress;
uint128 stor7050; offset 160
address implementationAddress;
uint256 stor7050;

function implementation() {
    return implementationAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    if msg.sender == adminAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function changeAdmin(address arg1) {
    if adminAddress != msg.sender:
        delegate uint256(stor7050.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot change the admin of a proxy to the zero address'
    emit AdminChanged(adminAddress, arg1);
    adminAddress = arg1
    stor10D6 = 0
}

function upgradeTo(address arg1) {
    if adminAddress != msg.sender:
        delegate uint256(stor7050.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    implementationAddress = arg1
    Mask(96, 0, stor7050.field_160) = 0
    emit Upgraded(arg1);
}



}
