contract main {




// =====================  Runtime code  =====================


address primaryOwner;
address authorityAddress;
address systemAddress;
address newAuthorityAddress;
mapping of address sub_18298189;

function newAuthorityAddress() payable {
    return newAuthorityAddress
}

function sub_18298189(?) payable {
    require calldata.size - 4 >= 32
    return sub_18298189[arg1]
}

function authorityAddress() payable {
    return authorityAddress
}

function primaryOwner() payable {
    return primaryOwner
}

function systemAddress() payable {
    return systemAddress
}

function _fallback() payable {
    revert
}

function sub_62163dd4(?) payable {
    require calldata.size - 4 >= 64
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_18298189[address(arg1)] = arg2
    return 1
}

function changePrimaryOwner() payable {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function sub_b9b4d0d3(?) payable {
    require calldata.size - 4 >= 64
    if systemAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if sub_18298189[address(arg1)]:
        revert with 0, 'ERR_ADDRESS_IS_SET'
    sub_18298189[address(arg1)] = arg2
    return 1
}

function acceptAuthorityAddress() payable {
    if newAuthorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'AUTHORITY_ADDRESS', authorityAddress, newAuthorityAddress
    authorityAddress = newAuthorityAddress
    newAuthorityAddress = 0
    return 1
}

function getCurrencyPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_18298189[address(arg1)])
    staticcall sub_18298189[address(arg1)].0xb9e1a0c6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeAuthorityAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    newAuthorityAddress = arg1
    return 1
}

function changeSystemAddress(address arg1) payable {
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



}
