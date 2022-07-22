contract main {




// =====================  Runtime code  =====================


#
#  - sub_2b1db79d(?)
#  - claimGame(uint256 arg1)
#  - sub_6632efbb(?)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of address stor1;
mapping of uint8 stor99;
mapping of struct roleAdmin;
uint256 stor151;
uint8 paused;
address stor251;
address stor252;
uint32 stor253;
address stor253;
array of struct stor254;
array of struct stor255;
array of struct stor256;
uint256 stor257;
uint256 stor258;
address treasuryAddress;
mapping of struct sub_bc0167cd;
mapping of uint8 stor261;
array of struct queue;
array of address stor91338261969839830423929228665509523722175104513074912698963065116483434702395;
array of uint256 stor91338261969839830423929228665509523722175104513074912698963065116483434702396;
array of uint256 stor91338261969839830423929228665509523722175104513074912698963065116483434702397;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function sub_4a6b3492(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor261[arg1][arg2])
}

function paused() payable {
    return bool(paused)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_bc0167cd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return uint256(sub_bc0167cd[arg1][arg2].field_0), 
           uint256(sub_bc0167cd[arg1][arg2].field_256),
           uint256(sub_bc0167cd[arg1][arg2].field_512),
           bool(sub_bc0167cd[arg1][arg2].field_768)
}

function treasuryAddress() payable {
    return treasuryAddress
}

function sub_ce348c6f(?) payable {
    return queue.length
}

function queue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < queue.length
    return address(queue[arg1].field_0), uint256(queue[arg1].field_256), uint256(queue[arg1].field_512)
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        stor251 = arg1
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

function pause() payable {
    if roleAdmin[0][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
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

function unpause() payable {
    if roleAdmin[0][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
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

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'Address cant be zero'
        treasuryAddress = arg1
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

function sub_5e75896a(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        if arg1 >= stor254.length:
            revert with 0, 'Wrong game index'
        if stor254[arg1].field_1024:
            revert with 0, 'Game already enabled'
        if arg1 >= stor254.length:
            revert with 0, 50
        stor254[arg1].field_1024 = 1
        emit 0x3b092959: arg1
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

function sub_1a45e3c0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if roleAdmin[0][address(msg.sender)].field_0:
        if not address(arg1):
            revert with 0, 'Address cant be zero'
        if not address(arg2):
            revert with 0, 'Address cant be zero'
        stor252 = address(arg1)
        address(stor253) = address(arg2)
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

function sub_9125de1f(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        if arg1 >= stor254.length:
            revert with 0, 'Wrong game index'
        if not stor254[arg1].field_1024:
            revert with 0, 'Game already disabled'
        if arg1 >= stor254.length:
            revert with 0, 50
        stor254[arg1].field_1024 = 0
        emit 0xff69b1d0: arg1
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_e451ad87(?) payable {
    mem[64] = (32 * stor255.length) + 128
    mem[96] = stor255.length
    s = 128
    idx = 0
    while idx < stor255.length:
        mem[0] = 255
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = uint32(stor255[idx].field_0)
        mem[_19 + 32] = uint64(stor255[idx].field_32)
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[64] = mem[64] + (32 * stor256.length) + 32
    mem[_17] = stor256.length
    s = _17 + 32
    idx = 0
    while idx < stor256.length:
        mem[0] = 256
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = uint32(stor256[idx].field_0)
        mem[_33 + 32] = uint64(stor256[idx].field_32)
        mem[s] = _33
        s = s + 32
        idx = idx + 1
        continue 
    _34 = mem[64]
    mem[mem[64]] = 64
    _35 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _35:
        _44 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_44 + 56 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_34 + 32] = (64 * _35) + 96
    _47 = mem[_17]
    mem[_34 + (64 * _35) + 96] = mem[_17]
    idx = 0
    s = _17 + 32
    t = _34 + (64 * _35) + 128
    while idx < _47:
        _52 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_52 + 56 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _34 + (64 * _35) + (64 * _47) + -mem[64] + 128
}

function sub_3b52c301(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        if not ('cd', 4).length:
            revert with 0, 'Length must be greater than zero'
        stor255.length = 0
        idx = 0
        while stor255.length > idx:
            Mask(96, 0, stor255[idx].field_0) = 0
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            stor255.length++
            mem[0] = 255
            require cd[((64 * idx) + cd[4] + 36)] == uint32(cd[((64 * idx) + cd[4] + 36)])
            uint32(stor255[stor255.length].field_0) = uint32(cd[((64 * idx) + cd[4] + 36)])
            require cd[((64 * idx) + cd[4] + 68)] == uint64(cd[((64 * idx) + cd[4] + 68)])
            uint32(stor255[stor255.length].field_0) = uint32(cd[((64 * idx) + cd[4] + 36)])
            uint64(stor255[stor255.length].field_32) = uint64(cd[((64 * idx) + cd[4] + 68)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[4] + 68)] == uint64(cd[((64 * idx) + cd[4] + 68)])
            if s > !uint64(cd[((64 * idx) + cd[4] + 68)]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint64(cd[((64 * idx) + cd[4] + 68)])
            continue 
        stor257 = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
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

function sub_3dd4885d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        if not ('cd', 4).length:
            revert with 0, 'Length must be greater than zero'
        stor256.length = 0
        idx = 0
        while stor256.length > idx:
            Mask(96, 0, stor256[idx].field_0) = 0
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            stor256.length++
            mem[0] = 256
            require cd[((64 * idx) + cd[4] + 36)] == uint32(cd[((64 * idx) + cd[4] + 36)])
            uint32(stor256[stor256.length].field_0) = uint32(cd[((64 * idx) + cd[4] + 36)])
            require cd[((64 * idx) + cd[4] + 68)] == uint64(cd[((64 * idx) + cd[4] + 68)])
            uint32(stor256[stor256.length].field_0) = uint32(cd[((64 * idx) + cd[4] + 36)])
            uint64(stor256[stor256.length].field_32) = uint64(cd[((64 * idx) + cd[4] + 68)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[4] + 68)] == uint64(cd[((64 * idx) + cd[4] + 68)])
            if s > !uint64(cd[((64 * idx) + cd[4] + 68)]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint64(cd[((64 * idx) + cd[4] + 68)])
            continue 
        stor258 = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
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

function games(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor254.length
    if bool(stor254[arg1].field_1280):
        if bool(stor254[arg1].field_1280) == uint255(uint256(stor254[arg1].field_1280)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor254[arg1].field_1280):
            if bool(stor254[arg1].field_1280) == uint255(uint256(stor254[arg1].field_1280)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor254[arg1].field_1280)):
                if 31 >= uint255(uint256(stor254[arg1].field_1280)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor254[arg1].field_1288)
                else:
                    mem[128] = uint256(stor[sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor254[arg1].field_1280)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor254[arg1].field_1280) == stor254[arg1].field_1281 % 128 < 32:
                revert with 0, 34
            if stor254[arg1].field_1281 % 128:
                if 31 >= stor254[arg1].field_1281 % 128:
                    mem[128] = 256 * Mask(248, 0, stor254[arg1].field_1288)
                else:
                    mem[128] = uint256(stor[sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_0)
                    idx = 128
                    s = 0
                    while stor254[arg1].field_1281 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return uint256(stor254[arg1].field_0), 
               uint256(stor254[arg1].field_256),
               bool(stor254[arg1].field_1024),
               Array(len=2 * Mask(256, -1, uint256(stor254[arg1].field_1280)), data=mem[128 len ceil32(uint255(uint256(stor254[arg1].field_1280)) * 0.5)])
    if bool(stor254[arg1].field_1280) == stor254[arg1].field_1281 % 128 < 32:
        revert with 0, 34
    if bool(stor254[arg1].field_1280):
        if bool(stor254[arg1].field_1280) == uint255(uint256(stor254[arg1].field_1280)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor254[arg1].field_1280)):
            if 31 >= uint255(uint256(stor254[arg1].field_1280)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor254[arg1].field_1288)
            else:
                mem[128] = uint256(stor[sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor254[arg1].field_1280)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor254[arg1].field_1280) == stor254[arg1].field_1281 % 128 < 32:
            revert with 0, 34
        if stor254[arg1].field_1281 % 128:
            if 31 >= stor254[arg1].field_1281 % 128:
                mem[128] = 256 * Mask(248, 0, stor254[arg1].field_1288)
            else:
                mem[128] = uint256(stor[sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_0)
                idx = 128
                s = 0
                while stor254[arg1].field_1281 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor254', 254) + 5)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return uint256(stor254[arg1].field_0), 
           uint256(stor254[arg1].field_256),
           bool(stor254[arg1].field_1024),
           Array(len=stor254[arg1].field_1280 % 128, data=mem[128 len ceil32(stor254[arg1].field_1281 % 128)])
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    stor151 = 1
    paused = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    stor252 = arg2
    address(stor253) = arg3
    stor251 = arg4
    treasuryAddress = arg1
    stor255.length++
    stor255[stor255.length].field_0 = 10
    stor255[stor255.length].field_8 % 16777216 = 0
    stor255[stor255.length].field_32 = 200
    stor255[stor255.length].field_40 % 72057594037927936 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 12
    stor255[stor255.length].field_8 % 16777216 = 0
    stor255[stor255.length].field_32 = 200
    stor255[stor255.length].field_40 % 72057594037927936 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 13
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 300
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 15
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 400
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 18
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 500
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 20
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 600
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 21
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 700
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 22
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 800
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 23
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 1000
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 25
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 1000
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 28
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 2000
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor255.length++
    stor255[stor255.length].field_0 = 30
    stor255[stor255.length].field_8 % 16777216 = 0
    uint16(stor255[stor255.length].field_32) = 2300
    stor255[stor255.length].field_48 % 281474976710656 = 0
    stor256.length++
    stor256[stor256.length].field_0 = 20
    stor256[stor256.length].field_8 % 16777216 = 0
    uint16(stor256[stor256.length].field_32) = 2725
    stor256[stor256.length].field_48 % 281474976710656 = 0
    stor256.length++
    stor256[stor256.length].field_0 = 30
    stor256[stor256.length].field_8 % 16777216 = 0
    uint16(stor256[stor256.length].field_32) = 5000
    stor256[stor256.length].field_48 % 281474976710656 = 0
    stor256.length++
    stor256[stor256.length].field_0 = 50
    stor256[stor256.length].field_8 % 16777216 = 0
    uint16(stor256[stor256.length].field_32) = 1500
    stor256[stor256.length].field_48 % 281474976710656 = 0
    stor256.length++
    stor256[stor256.length].field_0 = 100
    stor256[stor256.length].field_8 % 16777216 = 0
    uint16(stor256[stor256.length].field_32) = 500
    stor256[stor256.length].field_48 % 281474976710656 = 0
    stor256.length++
    stor256[stor256.length].field_0 = 150
    stor256[stor256.length].field_8 % 16777216 = 0
    stor256[stor256.length].field_32 = 200
    stor256[stor256.length].field_40 % 72057594037927936 = 0
    stor256.length++
    stor256[stor256.length].field_0 = 250
    stor256[stor256.length].field_8 % 16777216 = 0
    stor256[stor256.length].field_32 = 50
    stor256[stor256.length].field_40 % 72057594037927936 = 0
    stor256.length++
    uint16(stor256[stor256.length].field_0) = 500
    uint16(stor256[stor256.length].field_16) = 0
    stor256[stor256.length].field_32 = 25
    stor256[stor256.length].field_40 % 72057594037927936 = 0
    stor257 = 10000
    stor258 = 10000
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function pendingReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= stor254.length:
        revert with 0, 'Wrong game index parameter'
    mem[96] = uint256(stor254[arg2].field_512)
    if uint256(stor254[arg2].field_512):
        mem[128] = address(stor[sha3((6 * arg2) + ('name', 'stor254', 254) + 2)].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor254[arg2].field_512)) + 96 > idx:
            mem[idx + 32] = address(stor[s + sha3((6 * arg2) + ('name', 'stor254', 254) + 2)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if uint256(stor254[arg2].field_512) > test266151307():
        revert with 0, 65
    mem[(32 * uint256(stor254[arg2].field_512)) + 128] = uint256(stor254[arg2].field_512)
    mem[64] = (64 * uint256(stor254[arg2].field_512)) + 160
    if uint256(stor254[arg2].field_512):
        mem[(32 * uint256(stor254[arg2].field_512)) + 160 len 32 * uint256(stor254[arg2].field_512)] = call.data[calldata.size len 32 * uint256(stor254[arg2].field_512)]
    idx = 0
    while idx < uint256(stor254[arg2].field_512):
        if uint256(sub_bc0167cd[address(arg1)][arg2].field_256) >= block.number:
            if idx >= uint256(stor254[arg2].field_512):
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg2, sha3(address(arg1), 260)) + 4
            if uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0) and 0 > -1 / uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0):
                revert with 0, 17
            if idx >= uint256(stor254[arg2].field_512):
                revert with 0, 50
            mem[(32 * idx) + (32 * uint256(stor254[arg2].field_512)) + 160] = 0
        else:
            if not uint256(sub_bc0167cd[address(arg1)][arg2].field_256):
                if idx >= uint256(stor254[arg2].field_512):
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(arg2, sha3(address(arg1), 260)) + 4
                if uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0) and 0 > -1 / uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0):
                    revert with 0, 17
                if idx >= uint256(stor254[arg2].field_512):
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor254[arg2].field_512)) + 160] = 0
            else:
                if not block.number:
                    if idx >= uint256(stor254[arg2].field_512):
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(arg2, sha3(address(arg1), 260)) + 4
                    if uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0) and 0 > -1 / uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0):
                        revert with 0, 17
                    if idx >= uint256(stor254[arg2].field_512):
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(stor254[arg2].field_512)) + 160] = 0
                else:
                    if block.number < uint256(sub_bc0167cd[address(arg1)][arg2].field_256):
                        revert with 0, 17
                    if idx >= uint256(stor254[arg2].field_512):
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3(arg2, sha3(address(arg1), 260)) + 4
                    if uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0) and block.number - uint256(sub_bc0167cd[address(arg1)][arg2].field_256) > -1 / uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0):
                        revert with 0, 17
                    if idx >= uint256(stor254[arg2].field_512):
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(stor254[arg2].field_512)) + 160] = (block.number * uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0)) - (uint256(sub_bc0167cd[address(arg1)][arg2].field_256) * uint256(sub_bc0167cd[address(arg1)][arg2][4][mem[(32 * idx) + 140 len 20]].field_0))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * uint256(stor254[arg2].field_512)) + 160] = 64
    mem[(64 * uint256(stor254[arg2].field_512)) + 224] = uint256(stor254[arg2].field_512)
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < uint256(stor254[arg2].field_512):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * uint256(stor254[arg2].field_512)) + 192] = (32 * uint256(stor254[arg2].field_512)) + 96
    mem[(98 * uint256(stor254[arg2].field_512)) + 256] = mem[(32 * uint256(stor254[arg2].field_512)) + 128]
    mem[(98 * uint256(stor254[arg2].field_512)) + 288 len 32 * mem[(32 * uint256(stor254[arg2].field_512)) + 128]] = mem[(32 * uint256(stor254[arg2].field_512)) + 160 len 32 * mem[(32 * uint256(stor254[arg2].field_512)) + 128]]
    return memory
      from mem[64]
       len (98 * uint256(stor254[arg2].field_512)) + (32 * mem[(32 * uint256(stor254[arg2].field_512)) + 128]) + -mem[64] + 288
}

function sub_a1c5a6a9(?) payable {
    mem[64] = 96
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < queue.length:
        mem[0] = 262
        if address(queue[idx].field_0) != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= queue.length:
            revert with 0, 50
        mem[96] = address(queue[idx].field_0)
        mem[128] = uint256(queue[idx].field_256)
        mem[160] = uint256(queue[idx].field_512)
        if block.number <= uint256(queue[idx].field_256):
        if block.number < uint256(queue[idx].field_256):
            revert with 0, 17
        if block.number - uint256(queue[idx].field_256) > 255:
            if idx >= queue.length:
                revert with 0, 50
            uint256(queue[idx].field_256) = block.number
        if queue.length < 1:
            revert with 0, 17
        if queue.length - 1 >= queue.length:
            revert with 0, 50
        if idx >= queue.length:
            revert with 0, 50
        address(queue[idx].field_0) = address(queue[queue.length].field_0)
        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
        if not queue.length:
            revert with 0, 49
        mem[0] = 262
        address(queue[queue.length].field_0) = 0
        uint256(queue[queue.length].field_0) = 0
        uint256(queue[queue.length].field_0) = 0
        queue.length--
        mem[224] = address(queue[idx].field_0)
        mem[244] = uint256(queue[idx].field_512)
        mem[276] = block.hash(uint256(queue[idx].field_256))
        mem[192] = 84
        mem[64] = (32 * stor255.length) + 340
        mem[308] = stor255.length
        t = 340
        s = 0
        while s < stor255.length:
            mem[0] = 255
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = uint32(stor255[s].field_0)
            mem[_131 + 32] = uint64(stor255[s].field_32)
            mem[t] = _131
            t = t + 32
            s = s + 1
            continue 
        _129 = mem[64]
        mem[64] = mem[64] + (32 * stor256.length) + 32
        mem[_129] = stor256.length
        t = _129 + 32
        s = 0
        while s < stor256.length:
            mem[0] = 256
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = uint32(stor256[s].field_0)
            mem[_175 + 32] = uint64(stor256[s].field_32)
            mem[t] = _175
            t = t + 32
            s = s + 1
            continue 
        if not stor257:
            revert with 0, 18
        mem[mem[64] + 32] = sha3(address(queue[idx].field_0), uint256(queue[idx].field_512), block.hash(uint256(queue[idx].field_256))) % stor257
        mem[mem[64] + 64] = sha3(address(queue[idx].field_0), uint256(queue[idx].field_512), block.hash(uint256(queue[idx].field_256)))
        _177 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _179 = sha3(mem[_177 + 32 len mem[_177]])
        if not stor258:
            revert with 0, 18
        _216 = mem[308]
        s = 0
        t = 0
        while s < _216:
            if s >= mem[308]:
                revert with 0, 50
            if 0 > !mem[mem[(32 * s) + 340] + 56 len 8]:
                revert with 0, 17
            if sha3(address(queue[idx].field_0), uint256(queue[idx].field_512), block.hash(uint256(queue[idx].field_256))) % stor257 > mem[mem[(32 * s) + 340] + 56 len 8]:
                if s == -1:
                    revert with 0, 17
                _216 = mem[308]
                s = s + 1
                t = t
                continue 
            if s >= mem[308]:
                revert with 0, 50
            _224 = mem[mem[(32 * s) + 340]]
            t = 0
            u = 0
            while t < mem[_129]:
                if t >= mem[_129]:
                    revert with 0, 50
                if u > !mem[mem[(32 * t) + _129 + 32] + 56 len 8]:
                    revert with 0, 17
                if _179 % stor258 > u + mem[mem[(32 * t) + _129 + 32] + 56 len 8]:
                    if t == -1:
                        revert with 0, 17
                    _216 = mem[308]
                    t = t + 1
                    u = u + mem[mem[(32 * t) + _129 + 32] + 56 len 8]
                    continue 
                if t >= mem[_129]:
                    revert with 0, 50
                _258 = mem[mem[(32 * t) + _129 + 32]]
                mem[32] = sha3(address(queue[idx].field_0), 260)
                if uint256(queue[idx].field_512) >= stor254.length:
                    revert with 0, 50
                mem[0] = 254
                mem[mem[64] + 4] = address(stor253)
                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                mem[mem[64] + 68] = stor252
                require ext_code.size(stor251)
                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                        gas gas_remaining wei
                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _265 = mem[_264]
                if uint32(_224) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                    revert with 0, 17
                if block.number > !(8 * 3600 * uint32(_224)):
                    revert with 0, 17
                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_264]
                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_224))
                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                if uint256(queue[idx].field_512) >= stor254.length:
                    revert with 0, 50
                mem[0] = 254
                _267 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                mem[_267] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                    s = 0
                    t = 0
                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                        if not s:
                            if uint32(_224) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                revert with 0, 17
                            if _265 and uint32(_258) > -1 / _265:
                                revert with 0, 17
                            if not 8 * 3600 * uint32(_224):
                                revert with 0, 18
                            if s >= mem[_267]:
                                revert with 0, 50
                            mem[0] = mem[(32 * s) + _267 + 44 len 20]
                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _265 * uint32(_258) / 100 / 8 * 3600 * uint32(_224)
                            if s == -1:
                                revert with 0, 17
                            _216 = mem[308]
                            s = s + 1
                            t = _265 * uint32(_258) / 100 / 8 * 3600 * uint32(_224)
                            continue 
                        if uint256(queue[idx].field_512) >= stor254.length:
                            revert with 0, 50
                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                            revert with 0, 50
                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                            revert with 0, 17
                        if s >= mem[_267]:
                            revert with 0, 50
                        mem[0] = mem[(32 * s) + _267 + 44 len 20]
                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                        if s == -1:
                            revert with 0, 17
                        _216 = mem[308]
                        s = s + 1
                        t = t
                        continue 
                else:
                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                    mem[_267 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                    s = _267 + 32
                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                    while _267 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                        _216 = mem[308]
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    t = 0
                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                        if not s:
                            if uint32(_224) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                revert with 0, 17
                            if _265 and uint32(_258) > -1 / _265:
                                revert with 0, 17
                            if not 8 * 3600 * uint32(_224):
                                revert with 0, 18
                            if s >= mem[_267]:
                                revert with 0, 50
                            mem[0] = mem[(32 * s) + _267 + 44 len 20]
                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _265 * uint32(_258) / 100 / 8 * 3600 * uint32(_224)
                            if s == -1:
                                revert with 0, 17
                            _216 = mem[308]
                            s = s + 1
                            t = _265 * uint32(_258) / 100 / 8 * 3600 * uint32(_224)
                            continue 
                        if uint256(queue[idx].field_512) >= stor254.length:
                            revert with 0, 50
                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                            revert with 0, 50
                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                            revert with 0, 17
                        if s >= mem[_267]:
                            revert with 0, 50
                        mem[0] = mem[(32 * s) + _267 + 44 len 20]
                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                        if s == -1:
                            revert with 0, 17
                        _216 = mem[308]
                        s = s + 1
                        t = t
                        continue 
                mem[mem[64]] = uint32(_224)
                mem[mem[64] + 32] = uint32(_258)
                emit 0x1511ad56: _224 << 224, uint32(_258), msg.sender, uint256(queue[idx].field_512)
                stor261[mem[108 len 20]][mem[160]] = 0
            if s == -1:
                revert with 0, 17
            _216 = mem[308]
            s = s + 1
            t = mem[mem[(32 * s) + 340] + 28 len 4]
            continue 
        revert with 0, 'Cant find correct random'
}

function sub_48338a66(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if queue.length:
        if not arg1:
            idx = 0
            while idx < queue.length:
                mem[0] = 262
                _184 = mem[64]
                mem[64] = mem[64] + 96
                mem[_184] = address(queue[idx].field_0)
                mem[_184 + 32] = uint256(queue[idx].field_256)
                mem[_184 + 64] = uint256(queue[idx].field_512)
                if block.number <= uint256(queue[idx].field_256):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.number < uint256(queue[idx].field_256):
                    revert with 0, 17
                if block.number - uint256(queue[idx].field_256) > 255:
                    if idx >= queue.length:
                        revert with 0, 50
                    mem[0] = 262
                    uint256(queue[idx].field_256) = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if queue.length < 1:
                    revert with 0, 17
                if queue.length - 1 >= queue.length:
                    revert with 0, 50
                if idx >= queue.length:
                    revert with 0, 50
                address(queue[idx].field_0) = address(queue[queue.length].field_0)
                uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                if not queue.length:
                    revert with 0, 49
                mem[0] = 262
                address(queue[queue.length].field_0) = 0
                uint256(queue[queue.length].field_0) = 0
                uint256(queue[queue.length].field_0) = 0
                queue.length--
                _213 = mem[64]
                mem[mem[64] + 32] = address(queue[idx].field_0)
                mem[mem[64] + 52] = uint256(queue[idx].field_512)
                mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                _214 = mem[64]
                mem[mem[64]] = 84
                mem[64] = mem[64] + 116
                _216 = sha3(mem[_214 + 32 len mem[_214]])
                mem[64] = _213 + (32 * stor255.length) + 148
                mem[_213 + 116] = stor255.length
                t = _213 + 148
                s = 0
                while s < stor255.length:
                    mem[0] = 255
                    _365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_365] = uint32(stor255[s].field_0)
                    mem[_365 + 32] = uint64(stor255[s].field_32)
                    mem[t] = _365
                    t = t + 32
                    s = s + 1
                    continue 
                _363 = mem[64]
                mem[64] = mem[64] + (32 * stor256.length) + 32
                mem[_363] = stor256.length
                t = _363 + 32
                s = 0
                while s < stor256.length:
                    mem[0] = 256
                    _499 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_499] = uint32(stor256[s].field_0)
                    mem[_499 + 32] = uint64(stor256[s].field_32)
                    mem[t] = _499
                    t = t + 32
                    s = s + 1
                    continue 
                if not stor257:
                    revert with 0, 18
                mem[mem[64] + 32] = _216 % stor257
                mem[mem[64] + 64] = _216
                _507 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _509 = sha3(mem[_507 + 32 len mem[_507]])
                if not stor258:
                    revert with 0, 18
                _624 = mem[_213 + 116]
                s = 0
                t = 0
                while s < _624:
                    if s >= mem[_213 + 116]:
                        revert with 0, 50
                    if 0 > !mem[mem[(32 * s) + _213 + 148] + 56 len 8]:
                        revert with 0, 17
                    if _216 % stor257 > mem[mem[(32 * s) + _213 + 148] + 56 len 8]:
                        if s == -1:
                            revert with 0, 17
                        _624 = mem[_213 + 116]
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[_213 + 116]:
                        revert with 0, 50
                    _646 = mem[mem[(32 * s) + _213 + 148]]
                    _732 = mem[_363]
                    t = 0
                    u = 0
                    while t < _732:
                        if t >= mem[_363]:
                            revert with 0, 50
                        if u > !mem[mem[(32 * t) + _363 + 32] + 56 len 8]:
                            revert with 0, 17
                        if _509 % stor258 > u + mem[mem[(32 * t) + _363 + 32] + 56 len 8]:
                            if t == -1:
                                revert with 0, 17
                            _624 = mem[_213 + 116]
                            _732 = mem[_363]
                            t = t + 1
                            u = u + mem[mem[(32 * t) + _363 + 32] + 56 len 8]
                            continue 
                        if t >= mem[_363]:
                            revert with 0, 50
                        _748 = mem[mem[(32 * t) + _363 + 32]]
                        mem[32] = sha3(address(queue[idx].field_0), 260)
                        if uint256(queue[idx].field_512) >= stor254.length:
                            revert with 0, 50
                        mem[0] = 254
                        mem[mem[64] + 4] = address(stor253)
                        mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                        mem[mem[64] + 68] = stor252
                        require ext_code.size(stor251)
                        staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _771 = mem[_768]
                        if uint32(_646) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                            revert with 0, 17
                        if block.number > !(8 * 3600 * uint32(_646)):
                            revert with 0, 17
                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_768]
                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_646))
                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                        if uint256(queue[idx].field_512) >= stor254.length:
                            revert with 0, 50
                        mem[0] = 254
                        _775 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                        mem[_775] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                        if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                            s = 0
                            t = 0
                            while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                if not s:
                                    if uint32(_646) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                        revert with 0, 17
                                    if _771 and uint32(_748) > -1 / _771:
                                        revert with 0, 17
                                    if not 8 * 3600 * uint32(_646):
                                        revert with 0, 18
                                    if s >= mem[_775]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * s) + _775 + 44 len 20]
                                    mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                    uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _771 * uint32(_748) / 100 / 8 * 3600 * uint32(_646)
                                    if s == -1:
                                        revert with 0, 17
                                    _624 = mem[_213 + 116]
                                    _732 = mem[_363]
                                    s = s + 1
                                    t = _771 * uint32(_748) / 100 / 8 * 3600 * uint32(_646)
                                    continue 
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                    revert with 0, 50
                                mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                    revert with 0, 17
                                if s >= mem[_775]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * s) + _775 + 44 len 20]
                                mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                if s == -1:
                                    revert with 0, 17
                                _624 = mem[_213 + 116]
                                _732 = mem[_363]
                                s = s + 1
                                t = t
                                continue 
                            mem[mem[64]] = uint32(_646)
                            mem[mem[64] + 32] = uint32(_748)
                            emit 0x1511ad56: _646 << 224, uint32(_748), msg.sender, uint256(queue[idx].field_512)
                            mem[0] = mem[_184 + 12 len 20]
                            _823 = sha3(mem[0], 261)
                            mem[0] = mem[_184 + 64]
                            mem[32] = _823
                            stor[_823][mem[0]] = 0
                        else:
                            mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                            mem[_775 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                            s = _775 + 32
                            t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                            while _775 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                _624 = mem[_213 + 116]
                                _732 = mem[_363]
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            t = 0
                            while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                if not s:
                                    if uint32(_646) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                        revert with 0, 17
                                    if _771 and uint32(_748) > -1 / _771:
                                        revert with 0, 17
                                    if not 8 * 3600 * uint32(_646):
                                        revert with 0, 18
                                    if s >= mem[_775]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * s) + _775 + 44 len 20]
                                    mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                    uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _771 * uint32(_748) / 100 / 8 * 3600 * uint32(_646)
                                    if s == -1:
                                        revert with 0, 17
                                    _624 = mem[_213 + 116]
                                    _732 = mem[_363]
                                    s = s + 1
                                    t = _771 * uint32(_748) / 100 / 8 * 3600 * uint32(_646)
                                    continue 
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                    revert with 0, 50
                                mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                    revert with 0, 17
                                if s >= mem[_775]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * s) + _775 + 44 len 20]
                                mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                if s == -1:
                                    revert with 0, 17
                                _624 = mem[_213 + 116]
                                _732 = mem[_363]
                                s = s + 1
                                t = t
                                continue 
                            mem[mem[64]] = uint32(_646)
                            mem[mem[64] + 32] = uint32(_748)
                            emit 0x1511ad56: _646 << 224, uint32(_748), msg.sender, uint256(queue[idx].field_512)
                            mem[0] = mem[_184 + 12 len 20]
                            _898 = sha3(mem[0], 261)
                            mem[0] = mem[_184 + 64]
                            mem[32] = _898
                            stor[_898][mem[0]] = 0
                        if not queue.length:
                            revert with 0, 17
                        _624 = mem[_213 + 116]
                        _732 = mem[_363]
                        idx = idx
                        continue 
                    if s == -1:
                        revert with 0, 17
                    _624 = mem[_213 + 116]
                    s = s + 1
                    t = uint32(_646)
                    continue 
                revert with 0, 'Cant find correct random'
        else:
            if arg1 > queue.length:
                idx = 0
                while idx < queue.length:
                    mem[0] = 262
                    _186 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_186] = address(queue[idx].field_0)
                    mem[_186 + 32] = uint256(queue[idx].field_256)
                    mem[_186 + 64] = uint256(queue[idx].field_512)
                    if block.number <= uint256(queue[idx].field_256):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if block.number < uint256(queue[idx].field_256):
                        revert with 0, 17
                    if block.number - uint256(queue[idx].field_256) > 255:
                        if idx >= queue.length:
                            revert with 0, 50
                        mem[0] = 262
                        uint256(queue[idx].field_256) = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if queue.length < 1:
                        revert with 0, 17
                    if queue.length - 1 >= queue.length:
                        revert with 0, 50
                    if idx >= queue.length:
                        revert with 0, 50
                    address(queue[idx].field_0) = address(queue[queue.length].field_0)
                    uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                    uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                    if not queue.length:
                        revert with 0, 49
                    mem[0] = 262
                    address(queue[queue.length].field_0) = 0
                    uint256(queue[queue.length].field_0) = 0
                    uint256(queue[queue.length].field_0) = 0
                    queue.length--
                    _217 = mem[64]
                    mem[mem[64] + 32] = address(queue[idx].field_0)
                    mem[mem[64] + 52] = uint256(queue[idx].field_512)
                    mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                    _218 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    _220 = sha3(mem[_218 + 32 len mem[_218]])
                    mem[64] = _217 + (32 * stor255.length) + 148
                    mem[_217 + 116] = stor255.length
                    t = _217 + 148
                    s = 0
                    while s < stor255.length:
                        mem[0] = 255
                        _368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_368] = uint32(stor255[s].field_0)
                        mem[_368 + 32] = uint64(stor255[s].field_32)
                        mem[t] = _368
                        t = t + 32
                        s = s + 1
                        continue 
                    _366 = mem[64]
                    mem[64] = mem[64] + (32 * stor256.length) + 32
                    mem[_366] = stor256.length
                    t = _366 + 32
                    s = 0
                    while s < stor256.length:
                        mem[0] = 256
                        _501 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_501] = uint32(stor256[s].field_0)
                        mem[_501 + 32] = uint64(stor256[s].field_32)
                        mem[t] = _501
                        t = t + 32
                        s = s + 1
                        continue 
                    if not stor257:
                        revert with 0, 18
                    mem[mem[64] + 32] = _220 % stor257
                    mem[mem[64] + 64] = _220
                    _510 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _512 = sha3(mem[_510 + 32 len mem[_510]])
                    if not stor258:
                        revert with 0, 18
                    _625 = mem[_217 + 116]
                    s = 0
                    t = 0
                    while s < _625:
                        if s >= mem[_217 + 116]:
                            revert with 0, 50
                        if 0 > !mem[mem[(32 * s) + _217 + 148] + 56 len 8]:
                            revert with 0, 17
                        if _220 % stor257 > mem[mem[(32 * s) + _217 + 148] + 56 len 8]:
                            if s == -1:
                                revert with 0, 17
                            _625 = mem[_217 + 116]
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[_217 + 116]:
                            revert with 0, 50
                        _648 = mem[mem[(32 * s) + _217 + 148]]
                        _733 = mem[_366]
                        t = 0
                        u = 0
                        while t < _733:
                            if t >= mem[_366]:
                                revert with 0, 50
                            if u > !mem[mem[(32 * t) + _366 + 32] + 56 len 8]:
                                revert with 0, 17
                            if _512 % stor258 > u + mem[mem[(32 * t) + _366 + 32] + 56 len 8]:
                                if t == -1:
                                    revert with 0, 17
                                _625 = mem[_217 + 116]
                                _733 = mem[_366]
                                t = t + 1
                                u = u + mem[mem[(32 * t) + _366 + 32] + 56 len 8]
                                continue 
                            if t >= mem[_366]:
                                revert with 0, 50
                            _750 = mem[mem[(32 * t) + _366 + 32]]
                            mem[32] = sha3(address(queue[idx].field_0), 260)
                            if uint256(queue[idx].field_512) >= stor254.length:
                                revert with 0, 50
                            mem[0] = 254
                            mem[mem[64] + 4] = address(stor253)
                            mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                            mem[mem[64] + 68] = stor252
                            require ext_code.size(stor251)
                            staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _772 = mem[_769]
                            if uint32(_648) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                revert with 0, 17
                            if block.number > !(8 * 3600 * uint32(_648)):
                                revert with 0, 17
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_769]
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_648))
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                            if uint256(queue[idx].field_512) >= stor254.length:
                                revert with 0, 50
                            mem[0] = 254
                            _777 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                            mem[_777] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                            if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                s = 0
                                t = 0
                                while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    if not s:
                                        if uint32(_648) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                            revert with 0, 17
                                        if _772 and uint32(_750) > -1 / _772:
                                            revert with 0, 17
                                        if not 8 * 3600 * uint32(_648):
                                            revert with 0, 18
                                        if s >= mem[_777]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _777 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _772 * uint32(_750) / 100 / 8 * 3600 * uint32(_648)
                                        if s == -1:
                                            revert with 0, 17
                                        _625 = mem[_217 + 116]
                                        _733 = mem[_366]
                                        s = s + 1
                                        t = _772 * uint32(_750) / 100 / 8 * 3600 * uint32(_648)
                                        continue 
                                    if uint256(queue[idx].field_512) >= stor254.length:
                                        revert with 0, 50
                                    if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                        revert with 0, 50
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                    if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                        revert with 0, 17
                                    if s >= mem[_777]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * s) + _777 + 44 len 20]
                                    mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                    uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                    if s == -1:
                                        revert with 0, 17
                                    _625 = mem[_217 + 116]
                                    _733 = mem[_366]
                                    s = s + 1
                                    t = t
                                    continue 
                                mem[mem[64]] = uint32(_648)
                                mem[mem[64] + 32] = uint32(_750)
                                emit 0x1511ad56: _648 << 224, uint32(_750), msg.sender, uint256(queue[idx].field_512)
                                mem[0] = mem[_186 + 12 len 20]
                                _827 = sha3(mem[0], 261)
                                mem[0] = mem[_186 + 64]
                                mem[32] = _827
                                stor[_827][mem[0]] = 0
                            else:
                                mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                mem[_777 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                s = _777 + 32
                                t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                while _777 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                    _625 = mem[_217 + 116]
                                    _733 = mem[_366]
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                s = 0
                                t = 0
                                while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    if not s:
                                        if uint32(_648) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                            revert with 0, 17
                                        if _772 and uint32(_750) > -1 / _772:
                                            revert with 0, 17
                                        if not 8 * 3600 * uint32(_648):
                                            revert with 0, 18
                                        if s >= mem[_777]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _777 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _772 * uint32(_750) / 100 / 8 * 3600 * uint32(_648)
                                        if s == -1:
                                            revert with 0, 17
                                        _625 = mem[_217 + 116]
                                        _733 = mem[_366]
                                        s = s + 1
                                        t = _772 * uint32(_750) / 100 / 8 * 3600 * uint32(_648)
                                        continue 
                                    if uint256(queue[idx].field_512) >= stor254.length:
                                        revert with 0, 50
                                    if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                        revert with 0, 50
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                    if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                        revert with 0, 17
                                    if s >= mem[_777]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * s) + _777 + 44 len 20]
                                    mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                    uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                    if s == -1:
                                        revert with 0, 17
                                    _625 = mem[_217 + 116]
                                    _733 = mem[_366]
                                    s = s + 1
                                    t = t
                                    continue 
                                mem[mem[64]] = uint32(_648)
                                mem[mem[64] + 32] = uint32(_750)
                                emit 0x1511ad56: _648 << 224, uint32(_750), msg.sender, uint256(queue[idx].field_512)
                                mem[0] = mem[_186 + 12 len 20]
                                _902 = sha3(mem[0], 261)
                                mem[0] = mem[_186 + 64]
                                mem[32] = _902
                                stor[_902][mem[0]] = 0
                            if not queue.length:
                                revert with 0, 17
                            _625 = mem[_217 + 116]
                            _733 = mem[_366]
                            idx = idx
                            continue 
                        if s == -1:
                            revert with 0, 17
                        _625 = mem[_217 + 116]
                        s = s + 1
                        t = uint32(_648)
                        continue 
                    revert with 0, 'Cant find correct random'
            else:
                idx = 0
                while idx < arg1:
                    if idx >= queue.length:
                        revert with 0, 50
                    mem[0] = 262
                    _188 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_188] = address(queue[idx].field_0)
                    mem[_188 + 32] = uint256(queue[idx].field_256)
                    mem[_188 + 64] = uint256(queue[idx].field_512)
                    if block.number <= uint256(queue[idx].field_256):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if block.number < uint256(queue[idx].field_256):
                        revert with 0, 17
                    if block.number - uint256(queue[idx].field_256) > 255:
                        if idx >= queue.length:
                            revert with 0, 50
                        mem[0] = 262
                        uint256(queue[idx].field_256) = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if queue.length < 1:
                        revert with 0, 17
                    if queue.length - 1 >= queue.length:
                        revert with 0, 50
                    if idx >= queue.length:
                        revert with 0, 50
                    address(queue[idx].field_0) = address(queue[queue.length].field_0)
                    uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                    uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                    if not queue.length:
                        revert with 0, 49
                    mem[0] = 262
                    address(queue[queue.length].field_0) = 0
                    uint256(queue[queue.length].field_0) = 0
                    uint256(queue[queue.length].field_0) = 0
                    queue.length--
                    _221 = mem[64]
                    mem[mem[64] + 32] = address(queue[idx].field_0)
                    mem[mem[64] + 52] = uint256(queue[idx].field_512)
                    mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                    _222 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    _224 = sha3(mem[_222 + 32 len mem[_222]])
                    mem[64] = _221 + (32 * stor255.length) + 148
                    mem[_221 + 116] = stor255.length
                    t = _221 + 148
                    s = 0
                    while s < stor255.length:
                        mem[0] = 255
                        _371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_371] = uint32(stor255[s].field_0)
                        mem[_371 + 32] = uint64(stor255[s].field_32)
                        mem[t] = _371
                        t = t + 32
                        s = s + 1
                        continue 
                    _369 = mem[64]
                    mem[64] = mem[64] + (32 * stor256.length) + 32
                    mem[_369] = stor256.length
                    t = _369 + 32
                    s = 0
                    while s < stor256.length:
                        mem[0] = 256
                        _503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_503] = uint32(stor256[s].field_0)
                        mem[_503 + 32] = uint64(stor256[s].field_32)
                        mem[t] = _503
                        t = t + 32
                        s = s + 1
                        continue 
                    if not stor257:
                        revert with 0, 18
                    mem[mem[64] + 32] = _224 % stor257
                    mem[mem[64] + 64] = _224
                    _513 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _515 = sha3(mem[_513 + 32 len mem[_513]])
                    if not stor258:
                        revert with 0, 18
                    _626 = mem[_221 + 116]
                    s = 0
                    t = 0
                    while s < _626:
                        if s >= mem[_221 + 116]:
                            revert with 0, 50
                        if 0 > !mem[mem[(32 * s) + _221 + 148] + 56 len 8]:
                            revert with 0, 17
                        if _224 % stor257 > mem[mem[(32 * s) + _221 + 148] + 56 len 8]:
                            if s == -1:
                                revert with 0, 17
                            _626 = mem[_221 + 116]
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[_221 + 116]:
                            revert with 0, 50
                        _650 = mem[mem[(32 * s) + _221 + 148]]
                        _734 = mem[_369]
                        t = 0
                        u = 0
                        while t < _734:
                            if t >= mem[_369]:
                                revert with 0, 50
                            if u > !mem[mem[(32 * t) + _369 + 32] + 56 len 8]:
                                revert with 0, 17
                            if _515 % stor258 > u + mem[mem[(32 * t) + _369 + 32] + 56 len 8]:
                                if t == -1:
                                    revert with 0, 17
                                _626 = mem[_221 + 116]
                                _734 = mem[_369]
                                t = t + 1
                                u = u + mem[mem[(32 * t) + _369 + 32] + 56 len 8]
                                continue 
                            if t >= mem[_369]:
                                revert with 0, 50
                            _752 = mem[mem[(32 * t) + _369 + 32]]
                            mem[32] = sha3(address(queue[idx].field_0), 260)
                            if uint256(queue[idx].field_512) >= stor254.length:
                                revert with 0, 50
                            mem[0] = 254
                            mem[mem[64] + 4] = address(stor253)
                            mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                            mem[mem[64] + 68] = stor252
                            require ext_code.size(stor251)
                            staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _773 = mem[_770]
                            if uint32(_650) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                revert with 0, 17
                            if block.number > !(8 * 3600 * uint32(_650)):
                                revert with 0, 17
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_770]
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_650))
                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                            if uint256(queue[idx].field_512) >= stor254.length:
                                revert with 0, 50
                            mem[0] = 254
                            _779 = mem[64]
                            mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                            mem[_779] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                            if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                s = 0
                                t = 0
                                while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    if not s:
                                        if uint32(_650) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                            revert with 0, 17
                                        if _773 and uint32(_752) > -1 / _773:
                                            revert with 0, 17
                                        if not 8 * 3600 * uint32(_650):
                                            revert with 0, 18
                                        if s >= mem[_779]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _779 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _773 * uint32(_752) / 100 / 8 * 3600 * uint32(_650)
                                        if s == -1:
                                            revert with 0, 17
                                        _626 = mem[_221 + 116]
                                        _734 = mem[_369]
                                        s = s + 1
                                        t = _773 * uint32(_752) / 100 / 8 * 3600 * uint32(_650)
                                        continue 
                                    if uint256(queue[idx].field_512) >= stor254.length:
                                        revert with 0, 50
                                    if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                        revert with 0, 50
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                    if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                        revert with 0, 17
                                    if s >= mem[_779]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * s) + _779 + 44 len 20]
                                    mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                    uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                    if s == -1:
                                        revert with 0, 17
                                    _626 = mem[_221 + 116]
                                    _734 = mem[_369]
                                    s = s + 1
                                    t = t
                                    continue 
                                mem[mem[64]] = uint32(_650)
                                mem[mem[64] + 32] = uint32(_752)
                                emit 0x1511ad56: _650 << 224, uint32(_752), msg.sender, uint256(queue[idx].field_512)
                                mem[0] = mem[_188 + 12 len 20]
                                _831 = sha3(mem[0], 261)
                                mem[0] = mem[_188 + 64]
                                mem[32] = _831
                                stor[_831][mem[0]] = 0
                            else:
                                mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                mem[_779 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                s = _779 + 32
                                t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                while _779 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                    _626 = mem[_221 + 116]
                                    _734 = mem[_369]
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                s = 0
                                t = 0
                                while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    if not s:
                                        if uint32(_650) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                            revert with 0, 17
                                        if _773 and uint32(_752) > -1 / _773:
                                            revert with 0, 17
                                        if not 8 * 3600 * uint32(_650):
                                            revert with 0, 18
                                        if s >= mem[_779]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _779 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _773 * uint32(_752) / 100 / 8 * 3600 * uint32(_650)
                                        if s == -1:
                                            revert with 0, 17
                                        _626 = mem[_221 + 116]
                                        _734 = mem[_369]
                                        s = s + 1
                                        t = _773 * uint32(_752) / 100 / 8 * 3600 * uint32(_650)
                                        continue 
                                    if uint256(queue[idx].field_512) >= stor254.length:
                                        revert with 0, 50
                                    if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                        revert with 0, 50
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                    if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                        revert with 0, 17
                                    if s >= mem[_779]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * s) + _779 + 44 len 20]
                                    mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                    uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                    if s == -1:
                                        revert with 0, 17
                                    _626 = mem[_221 + 116]
                                    _734 = mem[_369]
                                    s = s + 1
                                    t = t
                                    continue 
                                mem[mem[64]] = uint32(_650)
                                mem[mem[64] + 32] = uint32(_752)
                                emit 0x1511ad56: _650 << 224, uint32(_752), msg.sender, uint256(queue[idx].field_512)
                                mem[0] = mem[_188 + 12 len 20]
                                _906 = sha3(mem[0], 261)
                                mem[0] = mem[_188 + 64]
                                mem[32] = _906
                                stor[_906][mem[0]] = 0
                            if not arg1:
                                revert with 0, 17
                            _626 = mem[_221 + 116]
                            _734 = mem[_369]
                            idx = idx
                            continue 
                        if s == -1:
                            revert with 0, 17
                        _626 = mem[_221 + 116]
                        s = s + 1
                        t = uint32(_650)
                        continue 
                    revert with 0, 'Cant find correct random'
}

function sub_d3738014(?) payable {
    require calldata.size - 4 >= 32
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if arg1 >= stor254.length:
        revert with 0, 'Wrong game index'
    if not stor254[arg1].field_1024:
        revert with 0, 'Game disabled'
    if not sub_bc0167cd[msg.sender][arg1].field_768:
        revert with 0, 'This game not finished'
    mem[32] = sha3(msg.sender, 261)
    if stor261[msg.sender][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User allready in queue on this game'
    if arg1 >= stor254.length:
        revert with 0, 50
    mem[0] = 254
    mem[100] = address(stor253)
    mem[132] = uint256(stor254[arg1].field_256)
    mem[164] = stor252
    require ext_code.size(stor251)
    staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
            gas gas_remaining wei
           args address(stor253), uint256(stor254[arg1].field_256), stor252
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = ceil32(return_data.size) + 292
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor252):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call stor252 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            if queue.length:
                if 2 > queue.length:
                    idx = 0
                    while idx < queue.length:
                        mem[0] = 262
                        _2372 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2372] = address(queue[idx].field_0)
                        mem[_2372 + 32] = uint256(queue[idx].field_256)
                        mem[_2372 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2555 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2556 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2558 = sha3(mem[_2556 + 32 len mem[_2556]])
                        mem[64] = _2555 + (32 * stor255.length) + 148
                        mem[_2555 + 116] = stor255.length
                        t = _2555 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3349 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3349] = uint32(stor255[s].field_0)
                            mem[_3349 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3349
                            t = t + 32
                            s = s + 1
                            continue 
                        _3347 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3347] = stor256.length
                        t = _3347 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4060 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4060] = uint32(stor256[s].field_0)
                            mem[_4060 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4060
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2558 % stor257
                        mem[mem[64] + 64] = _2558
                        _4115 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4117 = sha3(mem[_4115 + 32 len mem[_4115]])
                        if not stor258:
                            revert with 0, 18
                        _4723 = mem[_2555 + 116]
                        s = 0
                        t = 0
                        while s < _4723:
                            if s >= mem[_2555 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2555 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2558 % stor257 > mem[mem[(32 * s) + _2555 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4723 = mem[_2555 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2555 + 116]:
                                revert with 0, 50
                            _4844 = mem[mem[(32 * s) + _2555 + 148]]
                            _5299 = mem[_3347]
                            t = 0
                            u = 0
                            while t < _5299:
                                if t >= mem[_3347]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3347 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4117 % stor258 > u + mem[mem[(32 * t) + _3347 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4723 = mem[_2555 + 116]
                                    _5299 = mem[_3347]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3347 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3347]:
                                    revert with 0, 50
                                _5388 = mem[mem[(32 * t) + _3347 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5491 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5507 = mem[_5491]
                                if uint32(_4844) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4844)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5491]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4844))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5532 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5532] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4844) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5507 and uint32(_5388) > -1 / _5507:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4844):
                                                revert with 0, 18
                                            if s >= mem[_5532]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5532 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5507 * uint32(_5388) / 100 / 8 * 3600 * uint32(_4844)
                                            if s == -1:
                                                revert with 0, 17
                                            _4723 = mem[_2555 + 116]
                                            _5299 = mem[_3347]
                                            s = s + 1
                                            t = _5507 * uint32(_5388) / 100 / 8 * 3600 * uint32(_4844)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5532]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5532 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4723 = mem[_2555 + 116]
                                        _5299 = mem[_3347]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4844)
                                    mem[mem[64] + 32] = uint32(_5388)
                                    emit 0x1511ad56: _4844 << 224, uint32(_5388), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2372 + 12 len 20]
                                    _5804 = sha3(mem[0], 261)
                                    mem[0] = mem[_2372 + 64]
                                    mem[32] = _5804
                                    stor[_5804][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5532 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5532 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5532 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4723 = mem[_2555 + 116]
                                        _5299 = mem[_3347]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4844) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5507 and uint32(_5388) > -1 / _5507:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4844):
                                                revert with 0, 18
                                            if s >= mem[_5532]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5532 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5507 * uint32(_5388) / 100 / 8 * 3600 * uint32(_4844)
                                            if s == -1:
                                                revert with 0, 17
                                            _4723 = mem[_2555 + 116]
                                            _5299 = mem[_3347]
                                            s = s + 1
                                            t = _5507 * uint32(_5388) / 100 / 8 * 3600 * uint32(_4844)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5532]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5532 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4723 = mem[_2555 + 116]
                                        _5299 = mem[_3347]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4844)
                                    mem[mem[64] + 32] = uint32(_5388)
                                    emit 0x1511ad56: _4844 << 224, uint32(_5388), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2372 + 12 len 20]
                                    _6204 = sha3(mem[0], 261)
                                    mem[0] = mem[_2372 + 64]
                                    mem[32] = _6204
                                    stor[_6204][mem[0]] = 0
                                if not queue.length:
                                    revert with 0, 17
                                _4723 = mem[_2555 + 116]
                                _5299 = mem[_3347]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4723 = mem[_2555 + 116]
                            s = s + 1
                            t = uint32(_4844)
                            continue 
                        revert with 0, 'Cant find correct random'
                else:
                    idx = 0
                    while idx < 2:
                        if idx >= queue.length:
                            revert with 0, 50
                        mem[0] = 262
                        _2374 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2374] = address(queue[idx].field_0)
                        mem[_2374 + 32] = uint256(queue[idx].field_256)
                        mem[_2374 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2559 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2560 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2562 = sha3(mem[_2560 + 32 len mem[_2560]])
                        mem[64] = _2559 + (32 * stor255.length) + 148
                        mem[_2559 + 116] = stor255.length
                        t = _2559 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3352 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3352] = uint32(stor255[s].field_0)
                            mem[_3352 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3352
                            t = t + 32
                            s = s + 1
                            continue 
                        _3350 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3350] = stor256.length
                        t = _3350 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4062 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4062] = uint32(stor256[s].field_0)
                            mem[_4062 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4062
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2562 % stor257
                        mem[mem[64] + 64] = _2562
                        _4118 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4120 = sha3(mem[_4118 + 32 len mem[_4118]])
                        if not stor258:
                            revert with 0, 18
                        _4724 = mem[_2559 + 116]
                        s = 0
                        t = 0
                        while s < _4724:
                            if s >= mem[_2559 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2559 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2562 % stor257 > mem[mem[(32 * s) + _2559 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4724 = mem[_2559 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2559 + 116]:
                                revert with 0, 50
                            _4846 = mem[mem[(32 * s) + _2559 + 148]]
                            _5300 = mem[_3350]
                            t = 0
                            u = 0
                            while t < _5300:
                                if t >= mem[_3350]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3350 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4120 % stor258 > u + mem[mem[(32 * t) + _3350 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4724 = mem[_2559 + 116]
                                    _5300 = mem[_3350]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3350 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3350]:
                                    revert with 0, 50
                                _5390 = mem[mem[(32 * t) + _3350 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5508 = mem[_5492]
                                if uint32(_4846) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4846)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5492]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4846))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5534 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5534] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4846) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5508 and uint32(_5390) > -1 / _5508:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4846):
                                                revert with 0, 18
                                            if s >= mem[_5534]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5534 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5508 * uint32(_5390) / 100 / 8 * 3600 * uint32(_4846)
                                            if s == -1:
                                                revert with 0, 17
                                            _4724 = mem[_2559 + 116]
                                            _5300 = mem[_3350]
                                            s = s + 1
                                            t = _5508 * uint32(_5390) / 100 / 8 * 3600 * uint32(_4846)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5534]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5534 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4724 = mem[_2559 + 116]
                                        _5300 = mem[_3350]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4846)
                                    mem[mem[64] + 32] = uint32(_5390)
                                    emit 0x1511ad56: _4846 << 224, uint32(_5390), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2374 + 12 len 20]
                                    _5808 = sha3(mem[0], 261)
                                    mem[0] = mem[_2374 + 64]
                                    mem[32] = _5808
                                    stor[_5808][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5534 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5534 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5534 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4724 = mem[_2559 + 116]
                                        _5300 = mem[_3350]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4846) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5508 and uint32(_5390) > -1 / _5508:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4846):
                                                revert with 0, 18
                                            if s >= mem[_5534]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5534 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5508 * uint32(_5390) / 100 / 8 * 3600 * uint32(_4846)
                                            if s == -1:
                                                revert with 0, 17
                                            _4724 = mem[_2559 + 116]
                                            _5300 = mem[_3350]
                                            s = s + 1
                                            t = _5508 * uint32(_5390) / 100 / 8 * 3600 * uint32(_4846)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5534]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5534 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4724 = mem[_2559 + 116]
                                        _5300 = mem[_3350]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4846)
                                    mem[mem[64] + 32] = uint32(_5390)
                                    emit 0x1511ad56: _4846 << 224, uint32(_5390), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2374 + 12 len 20]
                                    _6208 = sha3(mem[0], 261)
                                    mem[0] = mem[_2374 + 64]
                                    mem[32] = _6208
                                    stor[_6208][mem[0]] = 0
                                _4724 = mem[_2559 + 116]
                                _5300 = mem[_3350]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4724 = mem[_2559 + 116]
                            s = s + 1
                            t = uint32(_4846)
                            continue 
                        revert with 0, 'Cant find correct random'
        else:
            require ext_call.return_data[0] >= 32
            require uint32(stor253), Mask(224, 0, stor254[arg1].field_288) == bool(uint32(stor253), Mask(224, 0, stor254[arg1].field_288))
            if not uint32(stor253), Mask(224, 0, stor254[arg1].field_288):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if queue.length:
                if 2 > queue.length:
                    idx = 0
                    while idx < queue.length:
                        mem[0] = 262
                        _2376 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2376] = address(queue[idx].field_0)
                        mem[_2376 + 32] = uint256(queue[idx].field_256)
                        mem[_2376 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2563 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2564 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2566 = sha3(mem[_2564 + 32 len mem[_2564]])
                        mem[64] = _2563 + (32 * stor255.length) + 148
                        mem[_2563 + 116] = stor255.length
                        t = _2563 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3355 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3355] = uint32(stor255[s].field_0)
                            mem[_3355 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3355
                            t = t + 32
                            s = s + 1
                            continue 
                        _3353 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3353] = stor256.length
                        t = _3353 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4064 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4064] = uint32(stor256[s].field_0)
                            mem[_4064 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4064
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2566 % stor257
                        mem[mem[64] + 64] = _2566
                        _4121 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4123 = sha3(mem[_4121 + 32 len mem[_4121]])
                        if not stor258:
                            revert with 0, 18
                        _4725 = mem[_2563 + 116]
                        s = 0
                        t = 0
                        while s < _4725:
                            if s >= mem[_2563 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2563 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2566 % stor257 > mem[mem[(32 * s) + _2563 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4725 = mem[_2563 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2563 + 116]:
                                revert with 0, 50
                            _4848 = mem[mem[(32 * s) + _2563 + 148]]
                            _5301 = mem[_3353]
                            t = 0
                            u = 0
                            while t < _5301:
                                if t >= mem[_3353]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3353 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4123 % stor258 > u + mem[mem[(32 * t) + _3353 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4725 = mem[_2563 + 116]
                                    _5301 = mem[_3353]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3353 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3353]:
                                    revert with 0, 50
                                _5392 = mem[mem[(32 * t) + _3353 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5493 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5509 = mem[_5493]
                                if uint32(_4848) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4848)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5493]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4848))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5536 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5536] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4848) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5509 and uint32(_5392) > -1 / _5509:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4848):
                                                revert with 0, 18
                                            if s >= mem[_5536]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5536 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5509 * uint32(_5392) / 100 / 8 * 3600 * uint32(_4848)
                                            if s == -1:
                                                revert with 0, 17
                                            _4725 = mem[_2563 + 116]
                                            _5301 = mem[_3353]
                                            s = s + 1
                                            t = _5509 * uint32(_5392) / 100 / 8 * 3600 * uint32(_4848)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5536]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5536 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4725 = mem[_2563 + 116]
                                        _5301 = mem[_3353]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4848)
                                    mem[mem[64] + 32] = uint32(_5392)
                                    emit 0x1511ad56: _4848 << 224, uint32(_5392), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2376 + 12 len 20]
                                    _5812 = sha3(mem[0], 261)
                                    mem[0] = mem[_2376 + 64]
                                    mem[32] = _5812
                                    stor[_5812][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5536 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5536 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5536 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4725 = mem[_2563 + 116]
                                        _5301 = mem[_3353]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4848) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5509 and uint32(_5392) > -1 / _5509:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4848):
                                                revert with 0, 18
                                            if s >= mem[_5536]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5536 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5509 * uint32(_5392) / 100 / 8 * 3600 * uint32(_4848)
                                            if s == -1:
                                                revert with 0, 17
                                            _4725 = mem[_2563 + 116]
                                            _5301 = mem[_3353]
                                            s = s + 1
                                            t = _5509 * uint32(_5392) / 100 / 8 * 3600 * uint32(_4848)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5536]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5536 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4725 = mem[_2563 + 116]
                                        _5301 = mem[_3353]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4848)
                                    mem[mem[64] + 32] = uint32(_5392)
                                    emit 0x1511ad56: _4848 << 224, uint32(_5392), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2376 + 12 len 20]
                                    _6212 = sha3(mem[0], 261)
                                    mem[0] = mem[_2376 + 64]
                                    mem[32] = _6212
                                    stor[_6212][mem[0]] = 0
                                if not queue.length:
                                    revert with 0, 17
                                _4725 = mem[_2563 + 116]
                                _5301 = mem[_3353]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4725 = mem[_2563 + 116]
                            s = s + 1
                            t = uint32(_4848)
                            continue 
                        revert with 0, 'Cant find correct random'
                else:
                    idx = 0
                    while idx < 2:
                        if idx >= queue.length:
                            revert with 0, 50
                        mem[0] = 262
                        _2378 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2378] = address(queue[idx].field_0)
                        mem[_2378 + 32] = uint256(queue[idx].field_256)
                        mem[_2378 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2567 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2568 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2570 = sha3(mem[_2568 + 32 len mem[_2568]])
                        mem[64] = _2567 + (32 * stor255.length) + 148
                        mem[_2567 + 116] = stor255.length
                        t = _2567 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3358 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3358] = uint32(stor255[s].field_0)
                            mem[_3358 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3358
                            t = t + 32
                            s = s + 1
                            continue 
                        _3356 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3356] = stor256.length
                        t = _3356 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4066] = uint32(stor256[s].field_0)
                            mem[_4066 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4066
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2570 % stor257
                        mem[mem[64] + 64] = _2570
                        _4124 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4126 = sha3(mem[_4124 + 32 len mem[_4124]])
                        if not stor258:
                            revert with 0, 18
                        _4726 = mem[_2567 + 116]
                        s = 0
                        t = 0
                        while s < _4726:
                            if s >= mem[_2567 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2567 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2570 % stor257 > mem[mem[(32 * s) + _2567 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4726 = mem[_2567 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2567 + 116]:
                                revert with 0, 50
                            _4850 = mem[mem[(32 * s) + _2567 + 148]]
                            _5302 = mem[_3356]
                            t = 0
                            u = 0
                            while t < _5302:
                                if t >= mem[_3356]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3356 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4126 % stor258 > u + mem[mem[(32 * t) + _3356 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4726 = mem[_2567 + 116]
                                    _5302 = mem[_3356]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3356 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3356]:
                                    revert with 0, 50
                                _5394 = mem[mem[(32 * t) + _3356 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5494 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5510 = mem[_5494]
                                if uint32(_4850) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4850)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5494]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4850))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5538 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5538] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4850) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5510 and uint32(_5394) > -1 / _5510:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4850):
                                                revert with 0, 18
                                            if s >= mem[_5538]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5538 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5510 * uint32(_5394) / 100 / 8 * 3600 * uint32(_4850)
                                            if s == -1:
                                                revert with 0, 17
                                            _4726 = mem[_2567 + 116]
                                            _5302 = mem[_3356]
                                            s = s + 1
                                            t = _5510 * uint32(_5394) / 100 / 8 * 3600 * uint32(_4850)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5538]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5538 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4726 = mem[_2567 + 116]
                                        _5302 = mem[_3356]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4850)
                                    mem[mem[64] + 32] = uint32(_5394)
                                    emit 0x1511ad56: _4850 << 224, uint32(_5394), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2378 + 12 len 20]
                                    _5816 = sha3(mem[0], 261)
                                    mem[0] = mem[_2378 + 64]
                                    mem[32] = _5816
                                    stor[_5816][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5538 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5538 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5538 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4726 = mem[_2567 + 116]
                                        _5302 = mem[_3356]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4850) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5510 and uint32(_5394) > -1 / _5510:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4850):
                                                revert with 0, 18
                                            if s >= mem[_5538]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5538 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5510 * uint32(_5394) / 100 / 8 * 3600 * uint32(_4850)
                                            if s == -1:
                                                revert with 0, 17
                                            _4726 = mem[_2567 + 116]
                                            _5302 = mem[_3356]
                                            s = s + 1
                                            t = _5510 * uint32(_5394) / 100 / 8 * 3600 * uint32(_4850)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5538]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5538 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4726 = mem[_2567 + 116]
                                        _5302 = mem[_3356]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4850)
                                    mem[mem[64] + 32] = uint32(_5394)
                                    emit 0x1511ad56: _4850 << 224, uint32(_5394), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2378 + 12 len 20]
                                    _6216 = sha3(mem[0], 261)
                                    mem[0] = mem[_2378 + 64]
                                    mem[32] = _6216
                                    stor[_6216][mem[0]] = 0
                                _4726 = mem[_2567 + 116]
                                _5302 = mem[_3356]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4726 = mem[_2567 + 116]
                            s = s + 1
                            t = uint32(_4850)
                            continue 
                        revert with 0, 'Cant find correct random'
    else:
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if queue.length:
                if 2 > queue.length:
                    idx = 0
                    while idx < queue.length:
                        mem[0] = 262
                        _2380 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2380] = address(queue[idx].field_0)
                        mem[_2380 + 32] = uint256(queue[idx].field_256)
                        mem[_2380 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2571 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2572 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2574 = sha3(mem[_2572 + 32 len mem[_2572]])
                        mem[64] = _2571 + (32 * stor255.length) + 148
                        mem[_2571 + 116] = stor255.length
                        t = _2571 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3361] = uint32(stor255[s].field_0)
                            mem[_3361 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3361
                            t = t + 32
                            s = s + 1
                            continue 
                        _3359 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3359] = stor256.length
                        t = _3359 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4068 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4068] = uint32(stor256[s].field_0)
                            mem[_4068 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4068
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2574 % stor257
                        mem[mem[64] + 64] = _2574
                        _4127 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4129 = sha3(mem[_4127 + 32 len mem[_4127]])
                        if not stor258:
                            revert with 0, 18
                        _4727 = mem[_2571 + 116]
                        s = 0
                        t = 0
                        while s < _4727:
                            if s >= mem[_2571 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2571 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2574 % stor257 > mem[mem[(32 * s) + _2571 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4727 = mem[_2571 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2571 + 116]:
                                revert with 0, 50
                            _4852 = mem[mem[(32 * s) + _2571 + 148]]
                            _5303 = mem[_3359]
                            t = 0
                            u = 0
                            while t < _5303:
                                if t >= mem[_3359]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3359 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4129 % stor258 > u + mem[mem[(32 * t) + _3359 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4727 = mem[_2571 + 116]
                                    _5303 = mem[_3359]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3359 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3359]:
                                    revert with 0, 50
                                _5396 = mem[mem[(32 * t) + _3359 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5495 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5511 = mem[_5495]
                                if uint32(_4852) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4852)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5495]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4852))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5540 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5540] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4852) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5511 and uint32(_5396) > -1 / _5511:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4852):
                                                revert with 0, 18
                                            if s >= mem[_5540]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5540 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5511 * uint32(_5396) / 100 / 8 * 3600 * uint32(_4852)
                                            if s == -1:
                                                revert with 0, 17
                                            _4727 = mem[_2571 + 116]
                                            _5303 = mem[_3359]
                                            s = s + 1
                                            t = _5511 * uint32(_5396) / 100 / 8 * 3600 * uint32(_4852)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5540]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5540 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4727 = mem[_2571 + 116]
                                        _5303 = mem[_3359]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4852)
                                    mem[mem[64] + 32] = uint32(_5396)
                                    emit 0x1511ad56: _4852 << 224, uint32(_5396), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2380 + 12 len 20]
                                    _5820 = sha3(mem[0], 261)
                                    mem[0] = mem[_2380 + 64]
                                    mem[32] = _5820
                                    stor[_5820][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5540 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5540 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5540 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4727 = mem[_2571 + 116]
                                        _5303 = mem[_3359]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4852) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5511 and uint32(_5396) > -1 / _5511:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4852):
                                                revert with 0, 18
                                            if s >= mem[_5540]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5540 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5511 * uint32(_5396) / 100 / 8 * 3600 * uint32(_4852)
                                            if s == -1:
                                                revert with 0, 17
                                            _4727 = mem[_2571 + 116]
                                            _5303 = mem[_3359]
                                            s = s + 1
                                            t = _5511 * uint32(_5396) / 100 / 8 * 3600 * uint32(_4852)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5540]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5540 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4727 = mem[_2571 + 116]
                                        _5303 = mem[_3359]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4852)
                                    mem[mem[64] + 32] = uint32(_5396)
                                    emit 0x1511ad56: _4852 << 224, uint32(_5396), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2380 + 12 len 20]
                                    _6220 = sha3(mem[0], 261)
                                    mem[0] = mem[_2380 + 64]
                                    mem[32] = _6220
                                    stor[_6220][mem[0]] = 0
                                if not queue.length:
                                    revert with 0, 17
                                _4727 = mem[_2571 + 116]
                                _5303 = mem[_3359]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4727 = mem[_2571 + 116]
                            s = s + 1
                            t = uint32(_4852)
                            continue 
                        revert with 0, 'Cant find correct random'
                else:
                    idx = 0
                    while idx < 2:
                        if idx >= queue.length:
                            revert with 0, 50
                        mem[0] = 262
                        _2382 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2382] = address(queue[idx].field_0)
                        mem[_2382 + 32] = uint256(queue[idx].field_256)
                        mem[_2382 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2575 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2576 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2578 = sha3(mem[_2576 + 32 len mem[_2576]])
                        mem[64] = _2575 + (32 * stor255.length) + 148
                        mem[_2575 + 116] = stor255.length
                        t = _2575 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3364 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3364] = uint32(stor255[s].field_0)
                            mem[_3364 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3364
                            t = t + 32
                            s = s + 1
                            continue 
                        _3362 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3362] = stor256.length
                        t = _3362 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4070 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4070] = uint32(stor256[s].field_0)
                            mem[_4070 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4070
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2578 % stor257
                        mem[mem[64] + 64] = _2578
                        _4130 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4132 = sha3(mem[_4130 + 32 len mem[_4130]])
                        if not stor258:
                            revert with 0, 18
                        _4728 = mem[_2575 + 116]
                        s = 0
                        t = 0
                        while s < _4728:
                            if s >= mem[_2575 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2575 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2578 % stor257 > mem[mem[(32 * s) + _2575 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4728 = mem[_2575 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2575 + 116]:
                                revert with 0, 50
                            _4854 = mem[mem[(32 * s) + _2575 + 148]]
                            _5304 = mem[_3362]
                            t = 0
                            u = 0
                            while t < _5304:
                                if t >= mem[_3362]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3362 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4132 % stor258 > u + mem[mem[(32 * t) + _3362 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4728 = mem[_2575 + 116]
                                    _5304 = mem[_3362]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3362 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3362]:
                                    revert with 0, 50
                                _5398 = mem[mem[(32 * t) + _3362 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5496 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5512 = mem[_5496]
                                if uint32(_4854) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4854)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5496]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4854))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5542 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5542] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4854) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5512 and uint32(_5398) > -1 / _5512:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4854):
                                                revert with 0, 18
                                            if s >= mem[_5542]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5542 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5512 * uint32(_5398) / 100 / 8 * 3600 * uint32(_4854)
                                            if s == -1:
                                                revert with 0, 17
                                            _4728 = mem[_2575 + 116]
                                            _5304 = mem[_3362]
                                            s = s + 1
                                            t = _5512 * uint32(_5398) / 100 / 8 * 3600 * uint32(_4854)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5542]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5542 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4728 = mem[_2575 + 116]
                                        _5304 = mem[_3362]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4854)
                                    mem[mem[64] + 32] = uint32(_5398)
                                    emit 0x1511ad56: _4854 << 224, uint32(_5398), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2382 + 12 len 20]
                                    _5824 = sha3(mem[0], 261)
                                    mem[0] = mem[_2382 + 64]
                                    mem[32] = _5824
                                    stor[_5824][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5542 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5542 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5542 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4728 = mem[_2575 + 116]
                                        _5304 = mem[_3362]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4854) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5512 and uint32(_5398) > -1 / _5512:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4854):
                                                revert with 0, 18
                                            if s >= mem[_5542]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5542 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5512 * uint32(_5398) / 100 / 8 * 3600 * uint32(_4854)
                                            if s == -1:
                                                revert with 0, 17
                                            _4728 = mem[_2575 + 116]
                                            _5304 = mem[_3362]
                                            s = s + 1
                                            t = _5512 * uint32(_5398) / 100 / 8 * 3600 * uint32(_4854)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5542]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5542 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4728 = mem[_2575 + 116]
                                        _5304 = mem[_3362]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4854)
                                    mem[mem[64] + 32] = uint32(_5398)
                                    emit 0x1511ad56: _4854 << 224, uint32(_5398), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2382 + 12 len 20]
                                    _6224 = sha3(mem[0], 261)
                                    mem[0] = mem[_2382 + 64]
                                    mem[32] = _6224
                                    stor[_6224][mem[0]] = 0
                                _4728 = mem[_2575 + 116]
                                _5304 = mem[_3362]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4728 = mem[_2575 + 116]
                            s = s + 1
                            t = uint32(_4854)
                            continue 
                        revert with 0, 'Cant find correct random'
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if queue.length:
                if 2 > queue.length:
                    idx = 0
                    while idx < queue.length:
                        mem[0] = 262
                        _2384 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2384] = address(queue[idx].field_0)
                        mem[_2384 + 32] = uint256(queue[idx].field_256)
                        mem[_2384 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2579 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2580 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2582 = sha3(mem[_2580 + 32 len mem[_2580]])
                        mem[64] = _2579 + (32 * stor255.length) + 148
                        mem[_2579 + 116] = stor255.length
                        t = _2579 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3367] = uint32(stor255[s].field_0)
                            mem[_3367 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3367
                            t = t + 32
                            s = s + 1
                            continue 
                        _3365 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3365] = stor256.length
                        t = _3365 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4072] = uint32(stor256[s].field_0)
                            mem[_4072 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4072
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2582 % stor257
                        mem[mem[64] + 64] = _2582
                        _4133 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4135 = sha3(mem[_4133 + 32 len mem[_4133]])
                        if not stor258:
                            revert with 0, 18
                        _4729 = mem[_2579 + 116]
                        s = 0
                        t = 0
                        while s < _4729:
                            if s >= mem[_2579 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2579 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2582 % stor257 > mem[mem[(32 * s) + _2579 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4729 = mem[_2579 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2579 + 116]:
                                revert with 0, 50
                            _4856 = mem[mem[(32 * s) + _2579 + 148]]
                            _5305 = mem[_3365]
                            t = 0
                            u = 0
                            while t < _5305:
                                if t >= mem[_3365]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3365 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4135 % stor258 > u + mem[mem[(32 * t) + _3365 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4729 = mem[_2579 + 116]
                                    _5305 = mem[_3365]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3365 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3365]:
                                    revert with 0, 50
                                _5400 = mem[mem[(32 * t) + _3365 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5497 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5513 = mem[_5497]
                                if uint32(_4856) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4856)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5497]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4856))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5544 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5544] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4856) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5513 and uint32(_5400) > -1 / _5513:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4856):
                                                revert with 0, 18
                                            if s >= mem[_5544]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5544 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5513 * uint32(_5400) / 100 / 8 * 3600 * uint32(_4856)
                                            if s == -1:
                                                revert with 0, 17
                                            _4729 = mem[_2579 + 116]
                                            _5305 = mem[_3365]
                                            s = s + 1
                                            t = _5513 * uint32(_5400) / 100 / 8 * 3600 * uint32(_4856)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5544]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5544 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4729 = mem[_2579 + 116]
                                        _5305 = mem[_3365]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4856)
                                    mem[mem[64] + 32] = uint32(_5400)
                                    emit 0x1511ad56: _4856 << 224, uint32(_5400), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2384 + 12 len 20]
                                    _5828 = sha3(mem[0], 261)
                                    mem[0] = mem[_2384 + 64]
                                    mem[32] = _5828
                                    stor[_5828][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5544 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5544 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5544 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4729 = mem[_2579 + 116]
                                        _5305 = mem[_3365]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4856) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5513 and uint32(_5400) > -1 / _5513:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4856):
                                                revert with 0, 18
                                            if s >= mem[_5544]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5544 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5513 * uint32(_5400) / 100 / 8 * 3600 * uint32(_4856)
                                            if s == -1:
                                                revert with 0, 17
                                            _4729 = mem[_2579 + 116]
                                            _5305 = mem[_3365]
                                            s = s + 1
                                            t = _5513 * uint32(_5400) / 100 / 8 * 3600 * uint32(_4856)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5544]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5544 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4729 = mem[_2579 + 116]
                                        _5305 = mem[_3365]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4856)
                                    mem[mem[64] + 32] = uint32(_5400)
                                    emit 0x1511ad56: _4856 << 224, uint32(_5400), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2384 + 12 len 20]
                                    _6228 = sha3(mem[0], 261)
                                    mem[0] = mem[_2384 + 64]
                                    mem[32] = _6228
                                    stor[_6228][mem[0]] = 0
                                if not queue.length:
                                    revert with 0, 17
                                _4729 = mem[_2579 + 116]
                                _5305 = mem[_3365]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4729 = mem[_2579 + 116]
                            s = s + 1
                            t = uint32(_4856)
                            continue 
                        revert with 0, 'Cant find correct random'
                else:
                    idx = 0
                    while idx < 2:
                        if idx >= queue.length:
                            revert with 0, 50
                        mem[0] = 262
                        _2386 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2386] = address(queue[idx].field_0)
                        mem[_2386 + 32] = uint256(queue[idx].field_256)
                        mem[_2386 + 64] = uint256(queue[idx].field_512)
                        if block.number <= uint256(queue[idx].field_256):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if block.number < uint256(queue[idx].field_256):
                            revert with 0, 17
                        if block.number - uint256(queue[idx].field_256) > 255:
                            if idx >= queue.length:
                                revert with 0, 50
                            mem[0] = 262
                            uint256(queue[idx].field_256) = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if queue.length < 1:
                            revert with 0, 17
                        if queue.length - 1 >= queue.length:
                            revert with 0, 50
                        if idx >= queue.length:
                            revert with 0, 50
                        address(queue[idx].field_0) = address(queue[queue.length].field_0)
                        uint256(queue[idx].field_256) = uint256(queue[queue.length].field_0)
                        uint256(queue[idx].field_512) = uint256(queue[queue.length].field_0)
                        if not queue.length:
                            revert with 0, 49
                        mem[0] = 262
                        address(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        uint256(queue[queue.length].field_0) = 0
                        queue.length--
                        _2583 = mem[64]
                        mem[mem[64] + 32] = address(queue[idx].field_0)
                        mem[mem[64] + 52] = uint256(queue[idx].field_512)
                        mem[mem[64] + 84] = block.hash(uint256(queue[idx].field_256))
                        _2584 = mem[64]
                        mem[mem[64]] = 84
                        mem[64] = mem[64] + 116
                        _2586 = sha3(mem[_2584 + 32 len mem[_2584]])
                        mem[64] = _2583 + (32 * stor255.length) + 148
                        mem[_2583 + 116] = stor255.length
                        t = _2583 + 148
                        s = 0
                        while s < stor255.length:
                            mem[0] = 255
                            _3370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3370] = uint32(stor255[s].field_0)
                            mem[_3370 + 32] = uint64(stor255[s].field_32)
                            mem[t] = _3370
                            t = t + 32
                            s = s + 1
                            continue 
                        _3368 = mem[64]
                        mem[64] = mem[64] + (32 * stor256.length) + 32
                        mem[_3368] = stor256.length
                        t = _3368 + 32
                        s = 0
                        while s < stor256.length:
                            mem[0] = 256
                            _4074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4074] = uint32(stor256[s].field_0)
                            mem[_4074 + 32] = uint64(stor256[s].field_32)
                            mem[t] = _4074
                            t = t + 32
                            s = s + 1
                            continue 
                        if not stor257:
                            revert with 0, 18
                        mem[mem[64] + 32] = _2586 % stor257
                        mem[mem[64] + 64] = _2586
                        _4136 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _4138 = sha3(mem[_4136 + 32 len mem[_4136]])
                        if not stor258:
                            revert with 0, 18
                        _4730 = mem[_2583 + 116]
                        s = 0
                        t = 0
                        while s < _4730:
                            if s >= mem[_2583 + 116]:
                                revert with 0, 50
                            if 0 > !mem[mem[(32 * s) + _2583 + 148] + 56 len 8]:
                                revert with 0, 17
                            if _2586 % stor257 > mem[mem[(32 * s) + _2583 + 148] + 56 len 8]:
                                if s == -1:
                                    revert with 0, 17
                                _4730 = mem[_2583 + 116]
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[_2583 + 116]:
                                revert with 0, 50
                            _4858 = mem[mem[(32 * s) + _2583 + 148]]
                            _5306 = mem[_3368]
                            t = 0
                            u = 0
                            while t < _5306:
                                if t >= mem[_3368]:
                                    revert with 0, 50
                                if u > !mem[mem[(32 * t) + _3368 + 32] + 56 len 8]:
                                    revert with 0, 17
                                if _4138 % stor258 > u + mem[mem[(32 * t) + _3368 + 32] + 56 len 8]:
                                    if t == -1:
                                        revert with 0, 17
                                    _4730 = mem[_2583 + 116]
                                    _5306 = mem[_3368]
                                    t = t + 1
                                    u = u + mem[mem[(32 * t) + _3368 + 32] + 56 len 8]
                                    continue 
                                if t >= mem[_3368]:
                                    revert with 0, 50
                                _5402 = mem[mem[(32 * t) + _3368 + 32]]
                                mem[32] = sha3(address(queue[idx].field_0), 260)
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                mem[mem[64] + 4] = address(stor253)
                                mem[mem[64] + 36] = uint256(stor254[uint256(stor262[idx].field_512)].field_256)
                                mem[mem[64] + 68] = stor252
                                require ext_code.size(stor251)
                                staticcall stor251.consult(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args address(stor253), uint256(stor254[uint256(stor262[idx].field_512)].field_256), stor252
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5498 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5514 = mem[_5498]
                                if uint32(_4858) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                    revert with 0, 17
                                if block.number > !(8 * 3600 * uint32(_4858)):
                                    revert with 0, 17
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_0) = mem[_5498]
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_512) = block.number + (8 * 3600 * uint32(_4858))
                                uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)].field_256) = block.number
                                if uint256(queue[idx].field_512) >= stor254.length:
                                    revert with 0, 50
                                mem[0] = 254
                                _5546 = mem[64]
                                mem[64] = mem[64] + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) + 32
                                mem[_5546] = uint256(stor254[uint256(stor262[idx].field_512)].field_512)
                                if not uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4858) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5514 and uint32(_5402) > -1 / _5514:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4858):
                                                revert with 0, 18
                                            if s >= mem[_5546]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5546 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5514 * uint32(_5402) / 100 / 8 * 3600 * uint32(_4858)
                                            if s == -1:
                                                revert with 0, 17
                                            _4730 = mem[_2583 + 116]
                                            _5306 = mem[_3368]
                                            s = s + 1
                                            t = _5514 * uint32(_5402) / 100 / 8 * 3600 * uint32(_4858)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5546]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5546 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4730 = mem[_2583 + 116]
                                        _5306 = mem[_3368]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4858)
                                    mem[mem[64] + 32] = uint32(_5402)
                                    emit 0x1511ad56: _4858 << 224, uint32(_5402), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2386 + 12 len 20]
                                    _5832 = sha3(mem[0], 261)
                                    mem[0] = mem[_2386 + 64]
                                    mem[32] = _5832
                                    stor[_5832][mem[0]] = 0
                                else:
                                    mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 2
                                    mem[_5546 + 32] = address(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 2)].field_0)
                                    s = _5546 + 32
                                    t = sha3((6 * uint256(queue[idx].field_512)) + sha3(254) + 2)
                                    while _5546 + (32 * uint256(stor254[uint256(stor262[idx].field_512)].field_512)) > s:
                                        _4730 = mem[_2583 + 116]
                                        _5306 = mem[_3368]
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    while s < uint256(stor254[uint256(stor262[idx].field_512)].field_512):
                                        if not s:
                                            if uint32(_4858) > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
                                                revert with 0, 17
                                            if _5514 and uint32(_5402) > -1 / _5514:
                                                revert with 0, 17
                                            if not 8 * 3600 * uint32(_4858):
                                                revert with 0, 18
                                            if s >= mem[_5546]:
                                                revert with 0, 50
                                            mem[0] = mem[(32 * s) + _5546 + 44 len 20]
                                            mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                            uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = _5514 * uint32(_5402) / 100 / 8 * 3600 * uint32(_4858)
                                            if s == -1:
                                                revert with 0, 17
                                            _4730 = mem[_2583 + 116]
                                            _5306 = mem[_3368]
                                            s = s + 1
                                            t = _5514 * uint32(_5402) / 100 / 8 * 3600 * uint32(_4858)
                                            continue 
                                        if uint256(queue[idx].field_512) >= stor254.length:
                                            revert with 0, 50
                                        if s >= uint256(stor254[uint256(stor262[idx].field_512)].field_768):
                                            revert with 0, 50
                                        mem[0] = (6 * uint256(queue[idx].field_512)) + sha3(254) + 3
                                        if t and uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) > -1 / t:
                                            revert with 0, 17
                                        if s >= mem[_5546]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * s) + _5546 + 44 len 20]
                                        mem[32] = sha3(uint256(queue[idx].field_512), sha3(address(queue[idx].field_0), 260)) + 4
                                        uint256(sub_bc0167cd[address(stor262[idx].field_0)][uint256(stor262[idx].field_512)][4][mem[0]].field_0) = t * uint256(stor[sha3((6 * uint256(stor262[idx].field_512)) + ('name', 'stor254', 254) + 3) + s].field_0) / 10000
                                        if s == -1:
                                            revert with 0, 17
                                        _4730 = mem[_2583 + 116]
                                        _5306 = mem[_3368]
                                        s = s + 1
                                        t = t
                                        continue 
                                    mem[mem[64]] = uint32(_4858)
                                    mem[mem[64] + 32] = uint32(_5402)
                                    emit 0x1511ad56: _4858 << 224, uint32(_5402), msg.sender, uint256(queue[idx].field_512)
                                    mem[0] = mem[_2386 + 12 len 20]
                                    _6232 = sha3(mem[0], 261)
                                    mem[0] = mem[_2386 + 64]
                                    mem[32] = _6232
                                    stor[_6232][mem[0]] = 0
                                _4730 = mem[_2583 + 116]
                                _5306 = mem[_3368]
                                idx = idx
                                continue 
                            if s == -1:
                                revert with 0, 17
                            _4730 = mem[_2583 + 116]
                            s = s + 1
                            t = uint32(_4858)
                            continue 
                        revert with 0, 'Cant find correct random'
    stor261[msg.sender][arg1] = 1
    queue.length++
    storC9EF[stor262.length] = msg.sender
    storC9EF[stor262.length] = block.number
    storC9EF[stor262.length] = arg1
    stor151 = 1
}



}
