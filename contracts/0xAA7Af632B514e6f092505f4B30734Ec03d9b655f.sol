contract main {




// =====================  Runtime code  =====================


#
#  - withdrawToken(address arg1, uint256 arg2)
#  - sub_b14c5539(?)
#  - _fallback()
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[address(arg1)].field_0)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function isWorker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105][address(arg1)].field_0)
}

function inWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760][address(arg1)].field_0)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function revokeRole(bytes32 arg1, address arg2) {
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

function grantRole(bytes32 arg1, address arg2) {
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

function call(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if roleAdmin[address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
        call arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    mem[ceil32(ceil32(arg2.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg2.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg2.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function revokeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
            if roleAdmin[address(arg1)].field_0:
                roleAdmin[address(arg1)].field_0 = 0
                emit RoleRevoked(0, arg1, msg.sender);
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
        s = uint256(roleAdmin.field_256)
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
        if uint256(roleAdmin.field_256) + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_dc978059(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
            if not roleAdmin[address(arg1)].field_0:
                roleAdmin[address(arg1)].field_0 = 1
                emit RoleGranted(0, address(arg1), msg.sender);
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
        s = uint256(roleAdmin.field_256)
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
        if uint256(roleAdmin.field_256) + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function revokeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760].field_256][address(msg.sender)].field_0:
            if roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760][address(arg1)].field_0:
                roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760][address(arg1)].field_0 = 0
                emit RoleRevoked(0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760, arg1, msg.sender);
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
        s = roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760].field_256
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
        if roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760][address(arg1)].field_0:
                roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760][address(arg1)].field_0 = 1
                emit RoleGranted(0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760, arg1, msg.sender);
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
        s = roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760].field_256
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
        if roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_3d6a9f5e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105].field_256][address(msg.sender)].field_0:
            if roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105][address(arg1)].field_0:
                roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105][address(arg1)].field_0 = 0
                emit RoleRevoked(0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105, address(arg1), msg.sender);
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
        s = roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105].field_256
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
        if roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_1135f3a1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105][address(arg1)].field_0:
                roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105][address(arg1)].field_0 = 1
                emit RoleGranted(0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105, address(arg1), msg.sender);
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
        s = roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105].field_256
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
        if roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    mem[100] = this.address
    mem[132] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), address(arg2) << 64 == bool(uint32(this.address), address(arg2) << 64)
            if not uint32(this.address), address(arg2) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_05a83dd8(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    require cd[132] == address(cd[132])
    if not roleAdmin[0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe6a160630e434fbeefa5ce47ba514f0df9609ac9dfa2f3cdd890f55be8db105
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
        revert with 0, 'Strings: hex length insufficient'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    if bool(roleAdmin[0xdc72ed553f2544c34465af23b847953efeb813428162d767f9ba5f4013be6760][address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])].field_0) != 1:
        revert with 0, 'token is not in whitelist'
    if 600 > !block.timestamp:
        revert with 0, 17
    if not cd[100]:
        mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[68]
        mem[132] = cd[36]
        mem[164] = 160
        mem[260] = ('cd', 4).length
        idx = 0
        s = 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp + 600
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[36], Array(len=('cd', 4).length, data=mem[292 len 32 * ('cd', 4).length]), address(this.address), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 <= return_data.size
    else:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[36]
        mem[132] = cd[68]
        mem[164] = 160
        mem[260] = ('cd', 4).length
        idx = 0
        s = 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp + 600
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[68], Array(len=('cd', 4).length, data=mem[292 len 32 * ('cd', 4).length]), address(this.address), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 <= return_data.size
}



}
