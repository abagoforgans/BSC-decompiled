contract main {




// =====================  Runtime code  =====================


address proxyOwner;
uint256 stor4D33;
address implementationAddress;
uint256 stor613E;
uint256 maintenance;

function proxyOwner() {
    return address(proxyOwner)
}

function implementation() {
    return address(implementationAddress)
}

function maintenance() {
    return bool(maintenance)
}

function setMaintenance(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(proxyOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: FORBIDDEN'
    maintenance = arg1
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(proxyOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: FORBIDDEN'
    if address(implementationAddress) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: INVALID'
    uint256(stor613E) = arg1
    emit Upgraded(arg1);
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(proxyOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: INVALID'
    emit ProxyOwnershipTransferred(address(proxyOwner), arg1);
    uint256(stor4D33) = arg1
}

function _fallback() payable {
    if maintenance:
        if address(proxyOwner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: FORBIDDEN'
    if not address(implementationAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OwnedUpgradeabilityProxy: INVALID'
    delegate uint256(stor613E) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if address(proxyOwner) != msg.sender:
        revert with 0, 'OwnedUpgradeabilityProxy: FORBIDDEN'
    if address(implementationAddress) == arg1:
        revert with 0, 'OwnedUpgradeabilityProxy: INVALID'
    uint256(stor613E) = arg1
    emit Upgraded(arg1);
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call this.address.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'OwnedUpgradeabilityProxy: INVALID'
}



}
