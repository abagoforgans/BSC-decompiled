contract main {




// =====================  Runtime code  =====================


array of uint256 version;
mapping of struct stor99;

function proxyOwner() {
    return address(stor[sha3('bulksender.app.proxy.owner')].field_0)
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return address(stor['ion']['bulksender.app.proxy.implementat'].field_0)
}

function transferProxyOwnership(address arg1) {
    require msg.sender == address(stor[sha3('bulksender.app.proxy.owner')].field_0)
    require arg1
    address(stor[sha3('bulksender.app.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('bulksender.app.proxy.owner')].field_160) = 0
    emit ProxyOwnershipTransferred(address(stor[sha3('bulksender.app.proxy.owner')].field_0), arg1);
}

function _fallback() payable {
    require address(stor['ion']['bulksender.app.proxy.implementat'].field_0)
    delegate uint256(stor['ion']['bulksender.app.proxy.implementat'].field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1, string arg2) {
    require msg.sender == address(stor[sha3('bulksender.app.proxy.owner')].field_0)
    require address(stor['ion']['bulksender.app.proxy.implementat'].field_0) != arg1
    address(stor['ion']['bulksender.app.proxy.implementat'].field_0) = arg1
    Mask(96, 0, stor['ion']['bulksender.app.proxy.implementat'].field_160) = 0
    version[] = Array(len=arg2.length, data=arg2[all])
    emit Upgraded(Array(len=arg2.length, data=arg2[all]), arg1);
}

function upgradeToAndCall(address arg1, string arg2, bytes arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == address(stor[sha3('bulksender.app.proxy.owner')].field_0)
    require address(stor['ion']['bulksender.app.proxy.implementat'].field_0) != arg1
    address(stor['ion']['bulksender.app.proxy.implementat'].field_0) = arg1
    Mask(96, 0, stor['ion']['bulksender.app.proxy.implementat'].field_160) = 0
    version[] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    emit Upgraded(Array(len=arg2.length, data=arg2[all]), arg1);
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call this.address.mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + 160] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
        call this.address.mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
