contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address authorityAddress;
address governorAddress;
address guardianAddress;
address policyAddress;
address vaultAddress;
address newGovernorAddress;
address newGuardianAddress;
address newPolicyAddress;
address newVaultAddress;

function policy() payable {
    return policyAddress
}

function governor() payable {
    return governorAddress
}

function newGuardian() payable {
    return newGuardianAddress
}

function newPolicy() payable {
    return newPolicyAddress
}

function guardian() payable {
    return guardianAddress
}

function newVault() payable {
    return newVaultAddress
}

function newGovernor() payable {
    return newGovernorAddress
}

function authority() payable {
    return authorityAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function pullVault() payable {
    if newVaultAddress != msg.sender:
        revert with 0, '!newVault'
    emit VaultPulled(vaultAddress, newVaultAddress);
    vaultAddress = newVaultAddress
}

function pullPolicy() payable {
    if newPolicyAddress != msg.sender:
        revert with 0, '!newPolicy'
    emit PolicyPulled(policyAddress, newPolicyAddress);
    policyAddress = newPolicyAddress
}

function pullGuardian() payable {
    if newGuardianAddress != msg.sender:
        revert with 0, '!newGuard'
    emit GuardianPulled(guardianAddress, newGuardianAddress);
    guardianAddress = newGuardianAddress
}

function pullGovernor() payable {
    if newGovernorAddress != msg.sender:
        revert with 0, '!newGovernor'
    emit GovernorPulled(governorAddress, newGovernorAddress);
    governorAddress = newGovernorAddress
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        authorityAddress = arg1
        emit AuthorityUpdated(arg1);
    mem[164] = uint256(stor0.field_0)
    idx = 164
    s = 0
    while stor0.length + 164 > idx + 32:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
}

function pushVault(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        mem[164] = uint256(stor0.field_0)
        idx = 164
        s = 0
        while stor0.length + 164 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    if arg2:
        vaultAddress = arg1
    newVaultAddress = arg1
    emit VaultPushed(arg2, vaultAddress, newVaultAddress);
}

function pushPolicy(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        mem[164] = uint256(stor0.field_0)
        idx = 164
        s = 0
        while stor0.length + 164 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    if arg2:
        policyAddress = arg1
    newPolicyAddress = arg1
    emit PolicyPushed(arg2, policyAddress, newPolicyAddress);
}

function pushGuardian(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        mem[164] = uint256(stor0.field_0)
        idx = 164
        s = 0
        while stor0.length + 164 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    if arg2:
        guardianAddress = arg1
    newGuardianAddress = arg1
    emit GuardianPushed(arg2, guardianAddress, newGuardianAddress);
}

function pushGovernor(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        mem[164] = uint256(stor0.field_0)
        idx = 164
        s = 0
        while stor0.length + 164 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    if arg2:
        governorAddress = arg1
    newGovernorAddress = arg1
    emit GovernorPushed(arg2, governorAddress, newGovernorAddress);
}



}
