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
address sub_1129c901Address;
uint256 stor7;
mapping of uint8 stor8;
mapping of uint256 sub_a1d2def0;
array of address sub_87cab37e;

function newAuthorityAddress() {
    return newAuthorityAddress
}

function sub_1129c901(?) {
    return address(sub_1129c901Address)
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

function sub_87cab37e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_87cab37e.length
    return sub_87cab37e[arg1]
}

function primaryOwner() {
    return primaryOwner
}

function isSpender(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_a1d2def0(?) {
    require calldata.size - 4 >= 32
    return sub_a1d2def0[arg1]
}

function systemAddress() {
    return systemAddress
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function _fallback() payable {
    emit 0x988be5a4: 0, msg.sender, msg.value
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

function transferEther(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor8[msg.sender]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(address(arg1), 0, arg2, msg.sender);
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

function unLockTokens() {
    if systemAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(sub_1129c901Address))
    call address(sub_1129c901Address).0x1044bbe6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function addSpender(address arg1) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if stor8[address(arg1)]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    stor8[address(arg1)] = 1
    sub_a1d2def0[address(arg1)] = sub_87cab37e.length
    sub_87cab37e.length++
    sub_87cab37e[sub_87cab37e.length] = arg1
    emit 0x32f37e1d: arg1
    return 1
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e5f50524f54454354494f4e0000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return 0
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
           args 0x41554354494f4e5f50524f54454354494f4e0000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return 1
}

function removeSpender(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not stor8[address(arg1)]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require 1 <= sub_87cab37e.length
    require sub_87cab37e.length - 1 < sub_87cab37e.length
    require sub_a1d2def0[address(arg1)] < sub_87cab37e.length
    sub_87cab37e[stor9[address(arg1)]] = sub_87cab37e[sub_87cab37e.length]
    sub_a1d2def0[stor10[stor10.length]] = sub_a1d2def0[address(arg1)]
    stor8[address(arg1)] = 0
    require sub_87cab37e.length
    sub_87cab37e[sub_87cab37e.length] = 0
    sub_87cab37e.length--
    emit 0xf77c089a: arg1
    return 1
}

function sub_f83d1791(?) {
    require calldata.size - 4 >= 96
    if not stor8[msg.sender]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
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
    emit FundTransfer(address(arg2), address(arg1), arg3, msg.sender);
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
    contractsRegistryAddress = arg4
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e5f50524f54454354494f4e0000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
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
}



}
