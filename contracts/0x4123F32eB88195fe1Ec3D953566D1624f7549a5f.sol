contract main {




// =====================  Runtime code  =====================


#
#  - sub_022fdf6e(?)
#  - withdrawAll(address arg1, address arg2)
#  - sub_2aca1156(?)
#  - sub_5e0d5ea5(?)
#  - withdraw(address arg1, address arg2, uint256 arg3)
#  - sub_e404287e(?)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint256 sub_c5ed46cb;
mapping of address stor2;
uint256 stor3;
uint256 stor4;
mapping of struct stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint128 stor10;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_c5ed46cb(?) payable {
    if roleAdmin[address(msg.sender)].field_0:
        return sub_c5ed46cb
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function destroySmartContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        selfdestruct(arg1)
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function sub_6cb0ed2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor5[address(arg1)].field_0:
        return 0
    if uint8(stor5[address(arg1)].field_0) >> 248 != 1:
        if uint8(stor5[address(arg1)].field_0) >> 248 != 2:
            revert with 0, 'ANM'
    return stor5[address(arg1)].field_0
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

function getTotalProfit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[address(arg1)].field_0:
        return 0
    if uint8(stor5[address(arg1)].field_0) >> 248 != 1:
        if uint8(stor5[address(arg1)].field_0) >> 248 != 2:
            revert with 0, 'ANM'
    return ('signextend', 10, ('mask_shl', 256, -160, -160, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5))))))
}

function sub_7a961886(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor5[address(arg1)].field_0:
        return 0
    if uint8(stor5[address(arg1)].field_0) >> 248 == 1:
        return 0
    if uint8(stor5[address(arg1)].field_0) >> 248 != 2:
        revert with 0, 'ANM'
    return ('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5))))))
}

function sub_67c393d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5[address(arg1)].field_0:
        if uint8(stor5[address(arg1)].field_0) >> 248 == 1:
            return ('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5))))))
        if uint8(stor5[address(arg1)].field_0) >> 248 != 2:
            revert with 0, 'ANM'
        else:
            return 0
    else:
        return 0
}

function initialise() payable {
    if roleAdmin[address(msg.sender)].field_0:
        stor3 = 400
        stor4 = 50
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_d62af40c(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        sub_c5ed46cb = arg1
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function getAccountData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[address(arg1)].field_0:
        return 0
    if uint8(stor5[address(arg1)].field_0) >> 248 == 1:
        return ('signextend', 10, ('mask_shl', 256, -160, -160, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))))), 
               ('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))))),
               0,
               stor5[address(arg1)].field_0
    if uint8(stor5[address(arg1)].field_0) >> 248 != 2:
        revert with 0, 'ANM'
    return ('signextend', 10, ('mask_shl', 256, -160, -160, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))))), 
           0,
           ('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))))),
           stor5[address(arg1)].field_0
}

function sub_29de5c39(?) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[address(msg.sender)].field_0:
        stor3 = arg1
        stor4 = arg2
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_6b2e6525(?) payable {
    require calldata.size - 4 >= 160
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
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not arg4:
        stor5[address(arg1)].field_0 = Mask(80, 0, arg5)
        stor5[address(arg1)].field_80 = Mask(80, 0, arg3)
        stor5[address(arg1)].field_160 = Mask(88, 0, arg2)
        stor5[address(arg1)].field_248 = 1
    else:
        if arg3:
            revert with 0, 'NZ'
        stor5[address(arg1)].field_0 = Mask(80, 0, arg5)
        stor5[address(arg1)].field_80 = Mask(80, 0, arg4)
        stor5[address(arg1)].field_160 = Mask(88, 0, arg2)
        stor5[address(arg1)].field_248 = 2
}

function sub_7f49708e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            stor5[mem[(32 * idx) + 140 len 20]].field_0 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                0x416363657373436f6e74726f6c3a, mem[ceil32(32 * ('cd', 4).length) + 161 len 42], 8297, mem[ceil32(32 * ('cd', 4).length) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_e3423b36(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ('cd', 4).length:
            mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 5
            if not stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 0
            else:
                if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 != 1:
                    if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 != 2:
                        revert with 0, 'ANM'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = ('signextend', 10, ('mask_shl', 256, -160, -160, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'stor5', 5))))))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_0934f138(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128] % 1171601783132672
            mem[32] = 2
            stor2[mem[(32 * idx) + 128] % 1171601783132672] = address(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] / 1171601783132672)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                0x416363657373436f6e74726f6c3a, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162 len 42], 8297, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 290 len 66], 0, 0 >> 928,
                0
}

function sub_de07a051(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, '1'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if cd[((32 * idx) + cd[36] + 36)] >= 1208925819614629174706176:
                revert with 0, '>B'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            if stor5[mem[(32 * idx) + 140 len 20]].field_0:
                if not uint8(stor5[address(mem[(32 * idx) + 128])].field_0) >> 248:
                    revert with 0, 'TANM'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                stor5[address(mem[(32 * idx) + 128])].field_0 = cd[((32 * idx) + cd[36] + 36)] or Mask(176, 80, stor5[address(mem[(32 * idx) + 128])].field_0)
            else:
                if cd[((32 * idx) + cd[36] + 36)]:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 5
                    stor5[address(mem[(32 * idx) + 128])].field_0 = Mask(80, 0, cd[((32 * idx) + cd[36] + 36)])
                    stor5[address(mem[(32 * idx) + 128])].field_80 = 0
                    stor5[address(mem[(32 * idx) + 128])].field_248 = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                0x416363657373436f6e74726f6c3a, mem[ceil32(32 * ('cd', 4).length) + 161 len 42], 8297, mem[ceil32(32 * ('cd', 4).length) + 289 len 66], 0, 0 >> 928,
                0
}

function withdraw(address arg1, address arg2) payable {
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
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        mem[ceil32(return_data.size) + 128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(return_data.size) + 224 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    0x416363657373436f6e74726f6c3a, mem[ceil32(return_data.size) + 160 len 42], 8297, mem[ceil32(return_data.size) + 288 len 66], 0, 0 >> 928,
                    0
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call arg2.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_539c868e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = sha3(0)
                if not roleAdmin[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = sha3(0)
                    roleAdmin[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 1
                    emit RoleGranted(0, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
            mem[192] = 66
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
            mem[352] = 0x416363657373436f6e74726f6c3a206163636f756e7420000000000000000000
            idx = 0
            while idx < 42:
                mem[idx + 375] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[417] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
            idx = 0
            while idx < 66:
                mem[idx + 434] = mem[idx + 224]
                idx = idx + 32
                continue 
            mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[504] = 32
            mem[536] = 148
            idx = 0
            while idx < 148:
                mem[idx + 568] = mem[idx + 352]
                idx = idx + 32
                continue 
            revert with 0, 32, 148, mem[568 len 148], 0
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_9e5eb61d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if stor7[mem[(32 * idx) + 140 len 20]] < stor6[mem[(32 * idx) + 140 len 20]] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor6[mem[(32 * idx) + 140 len 20]] >= 0:
                revert with 0, 17
            if stor6[mem[(32 * idx) + 140 len 20]] < 0 and stor7[mem[(32 * idx) + 140 len 20]] > stor6[mem[(32 * idx) + 140 len 20]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if stor9[mem[(32 * idx) + 140 len 20]] < stor8[mem[(32 * idx) + 140 len 20]] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor8[mem[(32 * idx) + 140 len 20]] >= 0:
                revert with 0, 17
            if stor8[mem[(32 * idx) + 140 len 20]] < 0 and stor9[mem[(32 * idx) + 140 len 20]] > stor8[mem[(32 * idx) + 140 len 20]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if uint8(stor5[mem[(32 * idx) + 140 len 20]].field_0) >> 248 != 0:
                revert with 0, 'AM'
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if not uint256(stor10[mem[(32 * idx) + 140 len 20]]):
                stor5[mem[(32 * idx) + 140 len 20]].field_0 = stor5[mem[(32 * idx) + 140 len 20]].field_0
                stor5[mem[(32 * idx) + 140 len 20]].field_80 = Mask(80, 0, stor9[mem[(32 * idx) + 140 len 20]] - stor8[mem[(32 * idx) + 140 len 20]])
                stor5[mem[(32 * idx) + 140 len 20]].field_160 = Mask(88, 0, stor7[mem[(32 * idx) + 140 len 20]] - stor6[mem[(32 * idx) + 140 len 20]])
                stor5[mem[(32 * idx) + 140 len 20]].field_248 = 1
            else:
                if stor9[mem[(32 * idx) + 140 len 20]] - stor8[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'NZ'
                stor5[mem[(32 * idx) + 140 len 20]].field_0 = Mask(80, 0, stor10[mem[(32 * idx) + 140 len 20]])
                stor5[mem[(32 * idx) + 140 len 20]].field_0 = stor5[mem[(32 * idx) + 140 len 20]].field_0
                stor5[mem[(32 * idx) + 140 len 20]].field_80 = 0
                stor5[mem[(32 * idx) + 140 len 20]].field_160 = Mask(88, 0, stor7[mem[(32 * idx) + 140 len 20]] - stor6[mem[(32 * idx) + 140 len 20]])
                stor5[mem[(32 * idx) + 140 len 20]].field_248 = 2
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor7[mem[(32 * idx) + 140 len 20]] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor6[mem[(32 * idx) + 140 len 20]] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor9[mem[(32 * idx) + 140 len 20]] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor8[mem[(32 * idx) + 140 len 20]] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            uint256(stor10[mem[(32 * idx) + 140 len 20]]) = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                0x416363657373436f6e74726f6c3a, mem[ceil32(32 * ('cd', 4).length) + 161 len 42], 8297, mem[ceil32(32 * ('cd', 4).length) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_afc05a31(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ('cd', 4).length:
            mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 5
            if not stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 5
                if not stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 == 1:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 0
                    else:
                        if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 != 2:
                            revert with 0, 'ANM'
                        if 0 > !('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'stor5', 5)))))):
                            revert with 0, 17
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = ('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'stor5', 5))))))
            else:
                if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 != 1:
                    if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 != 2:
                        revert with 0, 'ANM'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0 == test266151307():
                    mem[(32 * idx) + 128] = stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                else:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    if not stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                        if stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0 > -1:
                            revert with 0, 17
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                    else:
                        if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 == 1:
                            if stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0 > -1:
                                revert with 0, 17
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                        else:
                            if uint8(stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0) >> 248 != 2:
                                revert with 0, 'ANM'
                            if stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0 > !('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'stor5', 5)))))):
                                revert with 0, 17
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = stor5[address(cd[((32 * idx) + cd[4] + 36)])].field_0 + ('signextend', 9, ('mask_shl', 256, -80, -80, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'stor5', 5))))))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_ff3e3c44(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, '2'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if not stor5[mem[(32 * idx) + 140 len 20]].field_0:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if cd[((32 * idx) + cd[36] + 36)] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if cd[((32 * idx) + cd[36] + 36)] < 0:
                    revert with 0, '4'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((32 * idx) + cd[36] + 36)] >= 1208925819614629174706176:
                    revert with 0, '>B'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if stor5[mem[(32 * idx) + 140 len 20]].field_0:
                    if not uint8(stor5[address(mem[(32 * idx) + 128])].field_0) >> 248:
                        revert with 0, 'TANM'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 5
                    stor5[address(mem[(32 * idx) + 128])].field_0 = cd[((32 * idx) + cd[36] + 36)] or Mask(176, 80, stor5[address(mem[(32 * idx) + 128])].field_0)
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 5
                        stor5[address(mem[(32 * idx) + 128])].field_0 = Mask(80, 0, cd[((32 * idx) + cd[36] + 36)])
                        stor5[address(mem[(32 * idx) + 128])].field_80 = 0
                        stor5[address(mem[(32 * idx) + 128])].field_248 = 1
            else:
                if uint8(stor5[mem[(32 * idx) + 140 len 20]].field_0) >> 248 != 1:
                    if uint8(stor5[mem[(32 * idx) + 140 len 20]].field_0) >> 248 != 2:
                        revert with 0, 'ANM'
                if stor5[mem[(32 * idx) + 140 len 20]].field_0 == test266151307():
                    revert with 0, '3'
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if cd[((32 * idx) + cd[36] + 36)] > -stor5[mem[(32 * idx) + 140 len 20]].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor5[mem[(32 * idx) + 140 len 20]].field_0 >= 0:
                    revert with 0, 17
                if stor5[mem[(32 * idx) + 140 len 20]].field_0 < 0 and cd[((32 * idx) + cd[36] + 36)] < -stor5[mem[(32 * idx) + 140 len 20]].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor5[mem[(32 * idx) + 140 len 20]].field_0 + cd[((32 * idx) + cd[36] + 36)] < 0:
                    revert with 0, '4'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if stor5[mem[(32 * idx) + 140 len 20]].field_0 + cd[((32 * idx) + cd[36] + 36)] >= 1208925819614629174706176:
                    revert with 0, '>B'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if stor5[mem[(32 * idx) + 140 len 20]].field_0:
                    if not uint8(stor5[address(mem[(32 * idx) + 128])].field_0) >> 248:
                        revert with 0, 'TANM'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 5
                    stor5[address(mem[(32 * idx) + 128])].field_0 = stor5[mem[(32 * idx) + 140 len 20]].field_0 + cd[((32 * idx) + cd[36] + 36)] or Mask(176, 80, stor5[address(mem[(32 * idx) + 128])].field_0)
                else:
                    if stor5[mem[(32 * idx) + 140 len 20]].field_0 + cd[((32 * idx) + cd[36] + 36)]:
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 5
                        stor5[address(mem[(32 * idx) + 128])].field_0 = Mask(80, 0, stor5[mem[(32 * idx) + 140 len 20]].field_0 + cd[((32 * idx) + cd[36] + 36)])
                        stor5[address(mem[(32 * idx) + 128])].field_80 = 0
                        stor5[address(mem[(32 * idx) + 128])].field_248 = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                0x416363657373436f6e74726f6c3a, mem[ceil32(32 * ('cd', 4).length) + 161 len 42], 8297, mem[ceil32(32 * ('cd', 4).length) + 289 len 66], 0, 0 >> 928,
                0
}



}
