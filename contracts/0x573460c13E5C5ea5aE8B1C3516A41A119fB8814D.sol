contract main {




// =====================  Runtime code  =====================


address upgradeabilityOwner;
uint256 version;
address implementationAddress;

function proxyOwner() {
    return upgradeabilityOwner
}

function version() {
    return version
}

function implementation() {
    return implementationAddress
}

function upgradeabilityOwner() {
    return upgradeabilityOwner
}

function transferProxyOwnership(address arg1) {
    require msg.sender == upgradeabilityOwner
    require arg1
    emit ProxyOwnershipTransferred(upgradeabilityOwner, arg1);
    upgradeabilityOwner = arg1
}

function upgradeTo(uint256 arg1, address arg2) {
    require msg.sender == upgradeabilityOwner
    require implementationAddress != arg2
    require arg1 > version
    version = arg1
    implementationAddress = arg2
    emit Upgraded(arg1, arg2);
}

function _fallback() payable {
    require implementationAddress
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeToAndCall(uint256 arg1, address arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == upgradeabilityOwner
    require implementationAddress != arg2
    require arg1 > version
    version = arg1
    implementationAddress = arg2
    mem[ceil32(arg3.length) + 128] = arg1
    emit Upgraded(arg1, arg2);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call this.address.mem[ceil32(arg3.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call this.address.mem[ceil32(arg3.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
