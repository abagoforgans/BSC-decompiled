contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[2003 len 20]
    return code.data[117 len 1874]
}



// =====================  Runtime code  =====================


address upgradeabilityOwner;
array of uint256 version;
address implementationAddress;

function proxyOwner() {
    return upgradeabilityOwner
}

function version() {
    return version[0 len version.length]
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

function upgradeTo(string arg1, address arg2) {
    require msg.sender == upgradeabilityOwner
    require implementationAddress != arg2
    version[] = Array(len=arg1.length, data=arg1[all])
    implementationAddress = arg2
    emit Upgraded(Array(len=arg1.length, data=arg1[all]), arg2);
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

function upgradeToAndCall(string arg1, address arg2, bytes arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == upgradeabilityOwner
    require implementationAddress != arg2
    version[] = Array(len=arg1.length, data=arg1[all])
    implementationAddress = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 32
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit Upgraded(Array(len=arg1.length, data=arg1[all]), arg2);
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call this.address.mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len 4] with:
           value msg.value wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg1.length) + ceil32(arg3.length) + 164 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg1.length) + ceil32(arg3.length) + 160] = mem[floor32(arg3.length) + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
        call this.address.mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len 4] with:
           value msg.value wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg1.length) + ceil32(arg3.length) + 164 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
