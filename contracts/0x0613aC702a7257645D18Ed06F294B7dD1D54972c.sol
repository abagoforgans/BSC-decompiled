contract main {




// =====================  Runtime code  =====================


uint128 stor6F72; offset 160
address proxyOwner;
uint128 storFE6F; offset 160
address implementationAddress;
uint256 storFE6F;

function proxyOwner() {
    return proxyOwner
}

function implementation() {
    return implementationAddress
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == proxyOwner
    require arg1
    proxyOwner = arg1
    stor6F72 = 0
    emit ProxyOwnershipTransferred(proxyOwner, arg1);
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == proxyOwner
    require implementationAddress != arg1
    implementationAddress = arg1
    Mask(96, 0, storFE6F.field_160) = 0
    emit Upgraded(arg1);
}

function _fallback() payable {
    require implementationAddress
    delegate uint256(storFE6F.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
