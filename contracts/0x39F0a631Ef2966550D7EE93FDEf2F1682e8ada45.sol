contract main {




// =====================  Runtime code  =====================


const STAKING_ROLE = 0xfef18246d2e788c2a885ec6aeee43fc7c89077b8b7a1e52e99f27f5889e429e2

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address sub_7c9fbafbAddress;
address vaultAddress;
array of address allPools;
array of struct sub_56f3d197;
mapping of struct stor5;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function allPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPools.length
    return allPools[arg1]
}

function sub_56f3d197(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_56f3d197[address(arg1)].field_0
}

function sub_7c9fbafb(?) payable {
    return sub_7c9fbafbAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function userStakes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < sub_56f3d197[arg1].field_0
    return sub_56f3d197[arg1][arg2].field_0
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Only admin'
    require not sub_7c9fbafbAddress
    require arg1
    require not vaultAddress
    require arg2
    sub_7c9fbafbAddress = arg1
    vaultAddress = arg2
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_4520c12c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfef18246d2e788c2a885ec6aeee43fc7c89077b8b7a1e52e99f27f5889e429e2][address(msg.sender)].field_0:
        revert with 0, 'Only admin'
    if not stor5[msg.sender][address(arg1)].field_0:
        stor5[msg.sender][address(arg1)].field_0 = 1
        stor5[msg.sender][address(arg1)].field_256 = sub_56f3d197[address(arg1)].field_0
        sub_56f3d197[address(arg1)].field_0++
        sub_56f3d197[address(arg1)][sub_56f3d197[address(arg1)].field_0].field_0 = msg.sender
}

function sub_cece696b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfef18246d2e788c2a885ec6aeee43fc7c89077b8b7a1e52e99f27f5889e429e2][address(msg.sender)].field_0:
        revert with 0, 'Only admin'
    require stor5[msg.sender][address(arg1)].field_0
    if sub_56f3d197[address(arg1)].field_0 < 1:
        revert with 0, 17
    if stor5[msg.sender][address(arg1)].field_256 != sub_56f3d197[address(arg1)].field_0 - 1:
        if sub_56f3d197[address(arg1)].field_0 - 1 >= sub_56f3d197[address(arg1)].field_0:
            revert with 0, 50
        if stor5[msg.sender][address(arg1)].field_256 >= sub_56f3d197[address(arg1)].field_0:
            revert with 0, 50
        sub_56f3d197[address(arg1)][stor5[msg.sender][address(arg1)].field_256].field_0 = sub_56f3d197[address(arg1)][sub_56f3d197[address(arg1)].field_0].field_0
        stor5[stor4[address(arg1)][stor4[address(arg1)].field_0].field_0][address(arg1)].field_256 = stor5[msg.sender][address(arg1)].field_256
    if not sub_56f3d197[address(arg1)].field_0:
        revert with 0, 49
    sub_56f3d197[address(arg1)][sub_56f3d197[address(arg1)].field_0].field_0 = 0
    sub_56f3d197[address(arg1)].field_0--
    stor5[msg.sender][address(arg1)].field_0 = 0
    stor5[msg.sender][address(arg1)].field_256 = 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function getUserStakes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * sub_56f3d197[address(arg1)].field_0) + 128
    mem[96] = sub_56f3d197[address(arg1)].field_0
    if not sub_56f3d197[address(arg1)].field_0:
        mem[(32 * sub_56f3d197[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_56f3d197[address(arg1)].field_0) + 160] = sub_56f3d197[address(arg1)].field_0
        idx = 0
        s = (32 * sub_56f3d197[address(arg1)].field_0) + 192
        t = 128
        while idx < sub_56f3d197[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_56f3d197[address(arg1)].field_0) + 128
           len (96 * sub_56f3d197[address(arg1)].field_0) + 64
    mem[128] = sub_56f3d197[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_56f3d197[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_56f3d197[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_56f3d197[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_56f3d197[address(arg1)].field_0) + 160] = sub_56f3d197[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_56f3d197[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_56f3d197[address(arg1)].field_0) + -mem[64] + 192
}

function sub_21c2a63c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321 < 320 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 36 <= calldata.size
    if not sub_7c9fbafbAddress:
        revert with 0, 'Initialize'
    if not vaultAddress:
        revert with 0, 'Initialize'
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Only admin'
    if ('cd', 4)[1] >= ('cd', 4)[2]:
        revert with 0, 'Wrong params'
    if ('cd', 4)[1] <= block.timestamp:
        revert with 0, 'Wrong params'
    if not ('cd', 4).length:
        revert with 0, 'Wrong params'
    if ('cd', 4)[4] <= 0:
        revert with 0, 'Wrong params'
    if ('cd', 4)[0] <= ('cd', 4)[4]:
        revert with 0, 'Wrong params'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_7c9fbafbAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x249f1c7f with:
         gas gas_remaining wei
        args 32, ('cd', 4).length, ('cd', 4)[0], ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3], ('cd', 4)[4], 224, cd[(cd[4] + ('cd', 4)[5] + 4)], call.data[cd[4] + ('cd', 4)[5] + 36 len cd[(cd[4] + ('cd', 4)[5] + 4)]], Mask(8 * ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) - cd[(cd[4] + ('cd', 4)[5] + 4)], -(8 * ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 27) + 256, 32) >> -(8 * ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 27) + 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    call vaultAddress.setStaking(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[0xfef18246d2e788c2a885ec6aeee43fc7c89077b8b7a1e52e99f27f5889e429e2][address(create.new_address)].field_0:
        roleAdmin[0xfef18246d2e788c2a885ec6aeee43fc7c89077b8b7a1e52e99f27f5889e429e2][address(create.new_address)].field_0 = 1
        emit RoleGranted(0xfef18246d2e788c2a885ec6aeee43fc7c89077b8b7a1e52e99f27f5889e429e2, address(create.new_address), msg.sender);
    allPools.length++
    allPools[allPools.length] = address(create.new_address)
}



}
