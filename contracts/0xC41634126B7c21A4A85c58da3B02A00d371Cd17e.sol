contract main {




// =====================  Runtime code  =====================


address registryAddress;
address implementationAddress;
address primaryOwner;
address authorityAddress;
address newAuthorityAddress;
uint8 stor5; offset 160
address systemAddress;
address contractsRegistryAddress;
address liquidityAddress;
uint256 stor7;

function newAuthorityAddress() {
    return newAuthorityAddress
}

function liquidityAddress() {
    return address(liquidityAddress)
}

function authorityAddress() {
    return authorityAddress
}

function sub_3ff59a52(?) {
    return bool(stor5)
}

function implementation() {
    return implementationAddress
}

function registry() {
    return registryAddress
}

function primaryOwner() {
    return primaryOwner
}

function systemAddress() {
    return systemAddress
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function _fallback() payable {
  stop
}

function initialize() {
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
}

function changePrimaryOwner() {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function acceptAuthorityAddress() {
    if newAuthorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'AUTHORITY_ADDRESS', authorityAddress, newAuthorityAddress
    authorityAddress = newAuthorityAddress
    newAuthorityAddress = 0
    return 1
}

function changeAuthorityAddress(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    newAuthorityAddress = arg1
    return 1
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return 1
}

function changeSystemAddress(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if this.address == arg1:
        revert with 0, 'ERR_CONTRACT_SELF_ADDRESS'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    emit 0x6840904f: 'SYSTEM_ADDRESS', systemAddress, arg1
    systemAddress = arg1
    return 1
}

function sub_c1bc42bb(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    if arg2 != this.address:
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(this.address), arg3
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    emit 0x988be5a4: address(arg1), address(arg2), arg3
    return 1
}

function sub_8926191d(?) {
    require calldata.size - 4 >= 32
    if address(liquidityAddress) != msg.sender:
        revert with 0, 'ERR_ONLY_Liquidity_ALLOWED'
    if arg1 <= eth.balance(this.address):
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return arg1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return eth.balance(this.address)
}

function updateRegistery(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    contractsRegistryAddress = arg1
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return 1
}

function sub_3a9553fb(?) {
    require calldata.size - 4 >= 96
    if address(liquidityAddress) != msg.sender:
        revert with 0, 'ERR_ONLY_Liquidity_ALLOWED'
    require ext_code.size(arg1)
    if this.address != this.address:
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg2), arg3
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg3:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if stor5:
        revert with 0, 'ERR_OWNER_INTIALIZED_ALREADY'
    if arg1 == arg2:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg2 == arg3:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg1 == arg3:
        revert with 0, 'ERR_SAME_ADDRESS'
    primaryOwner = arg1
    authorityAddress = arg3
    systemAddress = arg2
    stor5 = 1
    contractsRegistryAddress = arg4
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}



}
