contract main {




// =====================  Runtime code  =====================


address primaryOwner;
address authorityAddress;
address systemAddress;
address newAuthorityAddress;
mapping of address sub_b88da759;
uint256 currentVersion;
address proxyAddress;

function newAuthorityAddress() payable {
    return newAuthorityAddress
}

function proxyAddress() payable {
    return proxyAddress
}

function authorityAddress() payable {
    return authorityAddress
}

function primaryOwner() payable {
    return primaryOwner
}

function currentVersion() payable {
    return currentVersion
}

function sub_b88da759(?) payable {
    require calldata.size - 4 >= 32
    return sub_b88da759[arg1]
}

function systemAddress() payable {
    return systemAddress
}

function _fallback() payable {
    revert
}

function changePrimaryOwner() payable {
    if primaryOwner != msg.sender:
        revert with 0, 32, 27, code.data[5040 len 27]
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function acceptAuthorityAddress() payable {
    if newAuthorityAddress != msg.sender:
        revert with 0, 32, 27, code.data[5040 len 27]
    emit 0x6840904f: 'AUTHORITY_ADDRESS', authorityAddress, newAuthorityAddress
    authorityAddress = newAuthorityAddress
    newAuthorityAddress = 0
    return 1
}

function sub_272860fd(?) payable {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        if systemAddress != msg.sender:
            revert with 0, 32, 27, code.data[5040 len 27]
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if sub_b88da759[arg1]:
        revert with 0, 32, 40, code.data[4995 len 40], mem[332 len 24]
    sub_b88da759[arg1] = arg2
    emit 0x8acfa0f9: arg1, arg2
}

function sub_fd016b34(?) payable {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 32, 27, code.data[5040 len 27]
    if not sub_b88da759[arg1]:
        revert with 0, 'ERR_ZERO_ADDDRESS'
    currentVersion = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress.0xfd016b34 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function changeAuthorityAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 32, 27, code.data[5040 len 27]
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
        revert with 0, 32, 27, code.data[5040 len 27]
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

function sub_0560a3df(?) payable {
    require calldata.size - 4 >= 352
    if primaryOwner != msg.sender:
        if systemAddress != msg.sender:
            revert with 0, 32, 27, code.data[5040 len 27]
    if proxyAddress:
        revert with 0, 'ERR_PROXY_ALREADY_CREATED'
    create contract with 0 wei
                    code: code.data[3954 len 1041], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x6436efca with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4, arg5, arg6, arg7, arg8, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    currentVersion = arg1
    proxyAddress = address(create.new_address)
    emit ProxyCreated(address(create.new_address));
    return address(create.new_address)
}



}
