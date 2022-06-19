contract main {




// =====================  Runtime code  =====================


#
#  - sub_0751464c(?)
#  - claim(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor202;
array of struct stor203;
mapping of struct stor204;
mapping of uint8 stor206;
uint256 sub_af5537fa;
address stor208;
mapping of uint256 score;
uint256 sub_91db621e;
mapping of struct stor211;
mapping of uint8 stor212;
address stor214;
array of uint256 stor101888487749731315312329856486174967636090064813667511973981809839303425205262;
array of struct stor102340800598314581700703180646365154776141900691267670427260941026834335867918;
array of uint256 stor115005560358646040575156257131690394697593305264072107119076614277699834422286;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_44a8eb0f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor212[arg2][address(arg1)])
}

function score(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return score[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_91db621e(?) {
    return sub_91db621e
}

function sub_af5537fa(?) {
    return sub_af5537fa
}

function sub_c0e1d475(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor206[arg2][address(arg1)])
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isClaimed(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor204[arg1][4][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function sub_6deea8ac(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1 % 281474976710656
    require arg2 == arg2 % 281474976710656
    if sub_91db621e == -1:
        revert with 0, 17
    sub_91db621e++
    require msg.sender == stor214
    stor211[stor210].field_96 = arg2 % 281474976710656
    stor211[stor210].field_256 = arg3
    stor211[stor210].field_512 = arg4
    stor211[stor210].field_0 = arg1 % 281474976710656
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_e6a2d0a3(?) {
    require calldata.size - 4 >= 32
    mem[64] = 352
    mem[288] = 0
    idx = 0
    while idx <= 5:
        if idx >= stor202.length:
            revert with 0, 50
        mem[0] = 202
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = stor202[idx].field_0
        mem[_13 + 32] = stor202[idx].field_256
        mem[_13 + 64] = stor202[idx].field_512
        if stor202[idx].field_560 > 5:
            revert with 0, 33
        mem[_13 + 96] = stor202[idx].field_560
        if stor211[arg1].field_96 >= stor202[idx].field_0:
            if stor211[arg1].field_96 <= stor202[idx].field_256:
                return 0, stor211[arg1].field_0, stor211[arg1].field_0, stor211[arg1].field_256, stor202[idx].field_512, arg1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0, stor211[arg1].field_0, stor211[arg1].field_0, stor211[arg1].field_256, mem[288] << 208, arg1
}

function getRoomInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[64] = 352
    mem[288] = 0
    idx = 0
    while idx <= 5:
        if idx >= stor202.length:
            revert with 0, 50
        mem[0] = 202
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = stor202[idx].field_0
        mem[_13 + 32] = stor202[idx].field_256
        mem[_13 + 64] = stor202[idx].field_512
        if stor202[idx].field_560 > 5:
            revert with 0, 33
        mem[_13 + 96] = stor202[idx].field_560
        if stor204[arg1].field_144 >= stor202[idx].field_0:
            if stor204[arg1].field_144 <= stor202[idx].field_256:
                return stor204[arg1].field_0, 
                       stor204[arg1].field_0,
                       stor204[arg1].field_0,
                       stor204[arg1].field_256,
                       stor202[idx].field_512,
                       arg1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return stor204[arg1].field_0, stor204[arg1].field_0, stor204[arg1].field_0, stor204[arg1].field_256, mem[288] << 208, arg1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function parseInt(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        if uint8(mem[idx + 128]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + 128]) >> 248 > 57:
            if idx >= arg1.length:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s and 10 > -1 / s:
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        if uint8(mem[idx + 128]) >> 248 < 48:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + 128]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + 128]) >> 248) - 48
        continue 
    return s
}

function slice(bytes arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg3:
        return ''
    mem[ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + 97 len ceil32(arg3)] = mem[(arg3 % 32) + (32 * not arg3 % 32) + arg2 + 96 len ceil32(arg3)]
    mem[ceil32(ceil32(arg1.length)) + 97] = arg3
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128)
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128)] = 32
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + 32] = arg3
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + 64 len ceil32(arg3)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg3)]
    if ceil32(arg3) > arg3:
        mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + arg3 + 64] = 0
    return Array(len=arg3, data=mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + 64 len ceil32(arg3)]), 
}

function sub_bf2e52fd(?) {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if stor211[arg1].field_48 > test266151307():
        revert with 0, 17
    require ext_code.size(stor208)
    staticcall stor208.0x70a08231 with:
            gas gas_remaining wei
           args address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor211[arg1].field_256
    require ext_code.size(stor208)
    staticcall stor208.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg4), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor211[arg1].field_256
    require not stor212[arg1][address(arg4)]
    require block.timestamp <= stor211[arg1].field_0
    stor211[arg1][3][stor211[arg1].field_48 + 1 << 208].field_0 = address(arg4)
    stor211[arg1][4][stor211[arg1].field_48 + 1 << 208][0].field_0 = arg2
    stor211[arg1][4][stor211[arg1].field_48 + 1 << 208][1].field_0 = arg3
    stor212[arg1][address(arg4)] = 1
    stor204[arg1].field_96 = stor211[arg1].field_48 + 1 % 281474976710656
    require ext_code.size(stor208)
    call stor208.0x23b872dd with:
         gas gas_remaining wei
        args address(arg4), 0x99ce4264e571cabde2cfaac5f2d7c5ee1ab7836c, stor204[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_df55bd92(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 12:
        revert with 0, 17
    mem[ceil32(ceil32(arg1.length)) + 99] = mem[arg1.length + 86]
    idx = 0
    s = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s and 10 > -1 / s:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248 < 48:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248) - 48
        continue 
    return s
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function init() {
    stor202.length++
    stor202[stor202.length].field_0 = 0
    stor202[stor202.length].field_256 = 4993
    stor202[stor202.length].field_512 = 1
    stor202[stor202.length].field_520 = 0
    stor202[stor202.length].field_512 = 1
    stor202[stor202.length].field_520 = 0
    stor202[stor202.length].field_768 = 0
    stor202.length++
    storFE42[stor202.length] = 4994
    storE142[stor202.length] = 8139
    storE242[stor202.length].field_0 = 2
    storE242[stor202.length].field_0 = 2
    storE242[stor202.length].field_48 = 1
    stor202.length++
    storFE42[stor202.length] = 8140
    storE142[stor202.length] = 9611
    storE242[stor202.length].field_0 = 3
    storE242[stor202.length].field_0 = 3
    storE242[stor202.length].field_48 = 2
    stor202.length++
    storFE42[stor202.length] = 9612
    storE142[stor202.length] = 9953
    storE242[stor202.length].field_0 = 4
    storE242[stor202.length].field_0 = 4
    storE242[stor202.length].field_48 = 3
    stor202.length++
    storFE42[stor202.length] = 9954
    storE142[stor202.length] = 9984
    storE242[stor202.length].field_0 = 5
    storE242[stor202.length].field_0 = 5
    storE242[stor202.length].field_48 = 4
    stor202.length++
    storFE42[stor202.length] = 9985
    storE142[stor202.length] = 9999
    storE242[stor202.length].field_0 = 6
    storE242[stor202.length].field_0 = 6
    storE242[stor202.length].field_48 = 5
    stor203.length++
    stor203[stor203.length].field_0 = 0
    stor203[stor203.length].field_256 = 49
    if stor203[stor203.length].field_512:
        if stor203[stor203.length].field_512 == uint255(stor203[stor203.length].field_512) * 0.5 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 9
        stor203[stor203.length].field_520 = 0x43484152414354455200000000000000000000000000000000000000000000
        idx = 0
        while (uint255(stor203[stor203.length].field_512) * 0.5) + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor203[stor203.length].field_512 == stor203[stor203.length].field_513 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 9
        stor203[stor203.length].field_520 = 0x43484152414354455200000000000000000000000000000000000000000000
        idx = 0
        while stor203[stor203.length].field_513 + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor203[stor203.length].field_768 = 0
    stor203[stor203.length].field_1024 = 0
    stor203.length++
    stor203[stor203.length].field_0 = 50
    stor203[stor203.length].field_256 = 99
    if stor203[stor203.length].field_512:
        if stor203[stor203.length].field_512 == uint255(stor203[stor203.length].field_512) * 0.5 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 6
        stor203[stor203.length].field_520 = 0x574541504f4e00000000000000000000000000000000000000000000000000
        idx = 0
        while (uint255(stor203[stor203.length].field_512) * 0.5) + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor203[stor203.length].field_512 == stor203[stor203.length].field_513 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 6
        stor203[stor203.length].field_520 = 0x574541504f4e00000000000000000000000000000000000000000000000000
        idx = 0
        while stor203[stor203.length].field_513 + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor203[stor203.length].field_768 = 1
}

function initialize() {
    if uint8(stor0.field_8):
        sub_af5537fa = 0
        stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            sub_af5537fa = 0
            stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                sub_af5537fa = 0
                stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    sub_af5537fa = 0
                    stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        sub_af5537fa = 0
                        stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                    else:
                        uint16(stor0.field_0) = 257
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            sub_af5537fa = 0
                            stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                        else:
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                sub_af5537fa = 0
                                stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    sub_af5537fa = 0
                                    stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        sub_af5537fa = 0
                                        stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                                    else:
                                        uint16(stor0.field_0) = 257
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        sub_af5537fa = 0
                                        stor208 = 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce
                                        uint8(stor0.field_8) = 0
}

function sub_4e9d19d3(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if var57001 < 1:
        revert with 0, 17
    if var61002 >= var61001:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 64
        _141 = mem[var61004]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162] = mem[var61004]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 194 len 32 * _141] = mem[var61004 + 32 len 32 * _141]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = (32 * _141) + 96
        _177 = mem[var61003]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * _141) + 194] = mem[var61003]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * _141) + 226
        t = var61003 + 32
        while idx < _177:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 64, 
               (32 * _141) + 96,
               mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162 len (32 * _141) + (32 * _177) + 64]
    if var54001 < ('cd', 4).length:
        if var65003 >= ('cd', 4).length:
            revert with 0, 50
        if var54001 >= ('cd', 4).length:
            revert with 0, 50
        if var54001 == -1:
            revert with 0, 17
        var54001 = var54001 + 1
        continue 
    if var65003 != var65003:
        if var65003 >= ('cd', 4).length:
            revert with 0, 50
        _250 = mem[(32 * var65003) + 128]
        if var65003 >= ('cd', 36).length:
            revert with 0, 50
        _253 = mem[(32 * var65003) + ceil32(32 * ('cd', 4).length) + 129]
        if var65003 >= ('cd', 4).length:
            revert with 0, 50
        if var65003 >= ('cd', 4).length:
            revert with 0, 50
        if var65003 >= ('cd', 36).length:
            revert with 0, 50
        if var65003 >= ('cd', 36).length:
            revert with 0, 50
        mem[(32 * var65003) + ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * var65003) + ceil32(32 * ('cd', 4).length) + 141 len 20]
        if var65003 >= ('cd', 4).length:
            revert with 0, 50
        mem[(32 * var65003) + 128] = _250
        if var65003 >= ('cd', 36).length:
            revert with 0, 50
        mem[(32 * var65003) + ceil32(32 * ('cd', 4).length) + 129] = address(_253)
    if var65005 == -1:
        revert with 0, 17
    if ('cd', 4).length < 1:
        revert with 0, 17
    if var65005 + 1 < ('cd', 4).length - 1:
        var54001 = var65005 + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = (32 * ('cd', 4).length) + 96
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 226
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 226 len 32 * ('cd', 36).length]), 
           (32 * ('cd', 4).length) + 96
}

function sub_61331002(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 12:
        revert with 0, 'Gen length is not correctly'
    if arg1.length < 2:
        revert with 0, 17
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + 322)
    if arg1.length < 4:
        revert with 0, 17
    mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 2] = mem[arg1.length + 94 len ceil32(ceil32(arg1.length)) + -arg1.length + 3], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len arg1.length + -ceil32(ceil32(arg1.length)) - 165]
    mem[64] = floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)
    if arg1.length < 8:
        revert with 0, 17
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 4] = mem[arg1.length + 92 len ceil32(ceil32(arg1.length)) + -arg1.length + 5], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len arg1.length + -floor32(ceil32(ceil32(arg1.length)) + 322) + 92]
    mem[64] = floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)
    if arg1.length < 12:
        revert with 0, 17
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 2] = mem[arg1.length + 86 len ceil32(ceil32(arg1.length)) + -arg1.length + 11], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len arg1.length + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 86]
    mem[64] = floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)
    if arg1.length < 14:
        revert with 0, 17
    return 32, 160, 
           224,
           288,
           352,
           416,
           2,
           Mask(-(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 322) + 321) + -(8 * floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291) + 256, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 322) + 321) + -(8 * floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291) + -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 496,
           0,
           2,
           mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len 2],
           0,
           4,
           mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len 4],
           0,
           2,
           Mask(16, -8 * arg1.length + -floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 84, mem[arg1.length + 84 len ceil32(ceil32(arg1.length)) + -arg1.length + 13], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) - 32], 2) >> -8 * arg1.length + -floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 84,
           0,
           2,
           mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32 len 2],
           0
}

function sub_3fe03bea(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 12:
        revert with 0, 'Gen length is not correctly'
    if arg1.length < 2:
        revert with 0, 17
    mem[ceil32(ceil32(arg1.length)) + 259] = mem[arg1.length + 96 len ceil32(ceil32(arg1.length)) + -arg1.length + 1], Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + 322)
    if arg1.length < 4:
        revert with 0, 17
    mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 2] = mem[arg1.length + 94 len ceil32(ceil32(arg1.length)) + -arg1.length + 3], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len arg1.length + -ceil32(ceil32(arg1.length)) - 165]
    mem[floor32(ceil32(ceil32(arg1.length)) + 322)] = 2
    mem[64] = floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)
    if arg1.length < 8:
        revert with 0, 17
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 4] = mem[arg1.length + 92 len ceil32(ceil32(arg1.length)) + -arg1.length + 5], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len arg1.length + -floor32(ceil32(ceil32(arg1.length)) + 322) + 92]
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)] = 4
    mem[64] = floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)
    if arg1.length < 12:
        revert with 0, 17
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 2] = mem[arg1.length + 86 len ceil32(ceil32(arg1.length)) + -arg1.length + 11], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len arg1.length + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 86]
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)] = 2
    mem[64] = floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)
    if arg1.length < 14:
        revert with 0, 17
    mem[floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 2] = mem[arg1.length + 84 len ceil32(ceil32(arg1.length)) + -arg1.length + 13], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) - 32], 2, mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32 len arg1.length + -floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 84]
    mem[floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)] = 2
    idx = 0
    s = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s and 10 > -1 / s:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248 < 48:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65)] = s
    idx = 0
    t = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if t and 10 > -1 / t:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * t > !((uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = (10 * t) + (uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65) + 32] = t
    idx = 0
    u = 0
    while idx < 4:
        if idx >= 4:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248 > 57:
            if idx >= 4:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if u and 10 > -1 / u:
            revert with 0, 17
        if idx >= 4:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * u > !((uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = (10 * u) + (uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65) + 64] = u
    idx = 0
    v = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            v = v
            continue 
        if uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            v = v
            continue 
        if v and 10 > -1 / v:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * v > !((uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        v = (10 * v) + (uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65) + 96] = v
    idx = 0
    w = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            w = w
            continue 
        if uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            w = w
            continue 
        if w and 10 > -1 / w:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * w > !((uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        w = (10 * w) + (uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248) - 48
        continue 
    return s, t, u, v, w
}

function sub_f9d615e9(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1 % 281474976710656
    mem[32] = sha3(arg1 << 208, sha3(arg2, 204) + 3)
    mem[0] = 1
    mem[96] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
    mem[100] = stor204[arg2][3][arg1 << 208][0].field_0
    require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
    staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
            gas gas_remaining wei
           args stor204[arg2][3][arg1 << 208][0].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32
    require mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 + 127
    _9 = mem[mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 + 96]
    if mem[mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], stor204[arg2][3][arg1 << 208][0].field_32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_9)] = mem[_8 + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        if _9 < 8:
            revert with 0, 17
        _121 = mem[64]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + _9 + 92]
        var40003 = mem[64] + 36
        mem[mem[64]] = 4
        mem[64] = floor32(mem[64] + 67)
        idx = 0
        s = 0
        while idx < 4:
            if idx >= 4:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            if uint8(mem[idx + _121 + 32]) >> 248 < 48:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if uint8(mem[idx + _121 + 32]) >> 248 > 57:
                if idx >= 4:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s and 10 > -1 / s:
                revert with 0, 17
            if idx >= 4:
                revert with 0, 50
            if uint8(mem[idx + _121 + 32]) >> 248 < 48:
                revert with 0, 17
            if 10 * s > !((uint8(mem[idx + _121 + 32]) >> 248) - 48):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (10 * s) + (uint8(mem[idx + _121 + 32]) >> 248) - 48
            continue 
        mem[ceil32(var40003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[ceil32(var40003) + 4] = stor204[arg2][3][arg1 << 208][1].field_0
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args stor204[arg2][3][arg1 << 208][1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(var40003) len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(var40003) + ceil32(return_data.size)
        require return_data.size >= 32
        _351 = mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32
        require mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32 <= test266151307()
        require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32 + 31
        _355 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32]
        if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], stor204[arg2][3][arg1 << 208][1].field_32])) + 1
        mem[ceil32(var40003) + ceil32(return_data.size)] = _355
        require _351 + _355 + 32 <= return_data.size
        mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_355)] = mem[ceil32(var40003) + _351 + 32 len ceil32(_355)]
        if ceil32(_355) <= _355:
            if _355 < 8:
                revert with 0, 17
            _433 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _355 - 4]
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            t = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _433 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if uint8(mem[idx + _433 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t and 10 > -1 / t:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _433 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * t > !((uint8(mem[idx + _433 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = (10 * t) + (uint8(mem[idx + _433 + 32]) >> 248) - 48
                continue 
        else:
            mem[ceil32(var40003) + ceil32(return_data.size) + _355 + 32] = 0
            if _355 < 8:
                revert with 0, 17
            _435 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _355 - 4]
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            t = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _435 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if uint8(mem[idx + _435 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t and 10 > -1 / t:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _435 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * t > !((uint8(mem[idx + _435 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = (10 * t) + (uint8(mem[idx + _435 + 32]) >> 248) - 48
                continue 
    else:
        mem[ceil32(return_data.size) + _9 + 128] = 0
        if _9 < 8:
            revert with 0, 17
        _122 = mem[64]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + _9 + 92]
        var41003 = mem[64] + 36
        mem[mem[64]] = 4
        mem[64] = floor32(mem[64] + 67)
        idx = 0
        s = 0
        while idx < 4:
            if idx >= 4:
                revert with 0, 50
            if idx >= 4:
                revert with 0, 50
            if uint8(mem[idx + _122 + 32]) >> 248 < 48:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if uint8(mem[idx + _122 + 32]) >> 248 > 57:
                if idx >= 4:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s and 10 > -1 / s:
                revert with 0, 17
            if idx >= 4:
                revert with 0, 50
            if uint8(mem[idx + _122 + 32]) >> 248 < 48:
                revert with 0, 17
            if 10 * s > !((uint8(mem[idx + _122 + 32]) >> 248) - 48):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (10 * s) + (uint8(mem[idx + _122 + 32]) >> 248) - 48
            continue 
        mem[ceil32(var41003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[ceil32(var41003) + 4] = stor204[arg2][3][arg1 << 208][1].field_0
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args stor204[arg2][3][arg1 << 208][1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(var41003) len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(var41003) + ceil32(return_data.size)
        require return_data.size >= 32
        _352 = mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32
        require mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32 <= test266151307()
        require ceil32(var41003) + return_data.size > ceil32(var41003) + mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32 + 31
        _357 = mem[ceil32(var41003) + mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32]
        if mem[ceil32(var41003) + mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(var41003) + mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32])) + 1 < 0 or ceil32(var41003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var41003) + mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(var41003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var41003) + mem[ceil32(var41003) len 4], stor204[arg2][3][arg1 << 208][1].field_32])) + 1
        mem[ceil32(var41003) + ceil32(return_data.size)] = _357
        require _352 + _357 + 32 <= return_data.size
        mem[ceil32(var41003) + ceil32(return_data.size) + 32 len ceil32(_357)] = mem[ceil32(var41003) + _352 + 32 len ceil32(_357)]
        if ceil32(_357) <= _357:
            if _357 < 8:
                revert with 0, 17
            _434 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(var41003) + ceil32(return_data.size) + _357 - 4]
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            t = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _434 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if uint8(mem[idx + _434 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t and 10 > -1 / t:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _434 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * t > !((uint8(mem[idx + _434 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = (10 * t) + (uint8(mem[idx + _434 + 32]) >> 248) - 48
                continue 
        else:
            mem[ceil32(var41003) + ceil32(return_data.size) + _357 + 32] = 0
            if _357 < 8:
                revert with 0, 17
            _436 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(var41003) + ceil32(return_data.size) + _357 - 4]
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            t = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _436 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if uint8(mem[idx + _436 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t and 10 > -1 / t:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _436 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * t > !((uint8(mem[idx + _436 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = (10 * t) + (uint8(mem[idx + _436 + 32]) >> 248) - 48
                continue 
    if s % 281474976710656 > -(t % 281474976710656) + test266151307():
        revert with 0, 17
    return ((t % 281474976710656) + (s % 281474976710656) % 281474976710656)
}

function sub_89379379(?) payable {
    require calldata.size - 4 >= 96
    require msg.value >= 5 * 10^14
    call 0xb8ce421729232ecd5dfc7bd0adfe1f4dad9d9cce with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Failed to send BNB'
        mem[96] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _13 = mem[96 len 4], Mask(224, 32, arg2) >> 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _15 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _15
        require _13 + _15 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_15)] = mem[_13 + 128 len ceil32(_15)]
        if ceil32(_15) <= _15:
            if _15 < 8:
                revert with 0, 17
            _447 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + _15 + 92]
            var39003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _447 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _447 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _447 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _447 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _447 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var39003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var39003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var39003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var39003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1323 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1331 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1331
            require _1323 + _1331 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1331)] = mem[ceil32(var39003) + _1323 + 32 len ceil32(_1331)]
            if ceil32(_1331) <= _1331:
                if _1331 < 8:
                    revert with 0, 17
                _1695 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1331 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1695 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1695 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1695 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1695 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1695 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1331 + 32] = 0
                if _1331 < 8:
                    revert with 0, 17
                _1699 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1331 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1699 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1699 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1699 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1699 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1699 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + _15 + 128] = 0
            if _15 < 8:
                revert with 0, 17
            _449 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + _15 + 92]
            var40003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _449 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _449 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _449 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _449 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _449 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var40003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var40003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var40003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var40003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1324 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1333 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1333
            require _1324 + _1333 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1333)] = mem[ceil32(var40003) + _1324 + 32 len ceil32(_1333)]
            if ceil32(_1333) <= _1333:
                if _1333 < 8:
                    revert with 0, 17
                _1696 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1333 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1696 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1696 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1696 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1696 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1696 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1333 + 32] = 0
                if _1333 < 8:
                    revert with 0, 17
                _1700 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1333 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1700 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1700 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1700 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1700 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1700 + 32]) >> 248) - 48
                    continue 
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Failed to send BNB'
        mem[ceil32(return_data.size) + 97] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 101] = arg2
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _14 = mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 97 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
        _16 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97])) + 1 < 0 or ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97])) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97])) + 98
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        require _14 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len ceil32(_16)] = mem[ceil32(return_data.size) + _14 + 129 len ceil32(_16)]
        if ceil32(_16) <= _16:
            if _16 < 8:
                revert with 0, 17
            _448 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] + 93]
            var39003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _448 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _448 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _448 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _448 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _448 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var39003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var39003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var39003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var39003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1325 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1335 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1335
            require _1325 + _1335 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1335)] = mem[ceil32(var39003) + _1325 + 32 len ceil32(_1335)]
            if ceil32(_1335) <= _1335:
                if _1335 < 8:
                    revert with 0, 17
                _1697 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1335 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1697 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1697 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1697 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1697 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1697 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1335 + 32] = 0
                if _1335 < 8:
                    revert with 0, 17
                _1701 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1335 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1701 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1701 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1701 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1701 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1701 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 129] = 0
            if _16 < 8:
                revert with 0, 17
            _450 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] + 93]
            var40003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _450 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _450 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _450 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _450 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _450 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var40003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var40003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var40003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var40003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1326 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1337 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1337
            require _1326 + _1337 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1337)] = mem[ceil32(var40003) + _1326 + 32 len ceil32(_1337)]
            if ceil32(_1337) <= _1337:
                if _1337 < 8:
                    revert with 0, 17
                _1698 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1337 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1698 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1698 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1698 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1698 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1698 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1337 + 32] = 0
                if _1337 < 8:
                    revert with 0, 17
                _1702 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1337 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1702 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1702 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1702 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1702 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1702 + 32]) >> 248) - 48
                    continue 
    require s <= stor204[arg1].field_144
    require t <= stor204[arg1].field_144
    if stor211[arg1].field_48 > test266151307():
        revert with 0, 17
    require ext_code.size(stor208)
    staticcall stor208.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor211[arg1].field_256
    require ext_code.size(stor208)
    staticcall stor208.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor211[arg1].field_256
    require not stor212[arg1][address(msg.sender)]
    require block.timestamp <= stor211[arg1].field_0
    stor211[arg1][3][stor211[arg1].field_48 + 1 << 208].field_0 = msg.sender
    stor211[arg1][4][stor211[arg1].field_48 + 1 << 208][0].field_0 = arg2
    stor211[arg1][4][stor211[arg1].field_48 + 1 << 208][1].field_0 = arg3
    stor212[arg1][address(msg.sender)] = 1
    stor204[arg1].field_96 = stor211[arg1].field_48 + 1 % 281474976710656
    require ext_code.size(stor208)
    call stor208.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x99ce4264e571cabde2cfaac5f2d7c5ee1ab7836c, stor204[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_59e43949(?) payable {
    require calldata.size - 4 >= 96
    require msg.value >= 5 * 10^14
    call 0xb8ce421729232ecd5dfc7bd0adfe1f4dad9d9cce with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Failed to send BNB'
        mem[96] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _13 = mem[96 len 4], Mask(224, 32, arg2) >> 32
        require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _15 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _15
        require _13 + _15 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_15)] = mem[_13 + 128 len ceil32(_15)]
        if ceil32(_15) <= _15:
            if _15 < 8:
                revert with 0, 17
            _495 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + _15 + 92]
            var39003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _495 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _495 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _495 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _495 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _495 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var39003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var39003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var39003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var39003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1467 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1475 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1475
            require _1467 + _1475 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1475)] = mem[ceil32(var39003) + _1467 + 32 len ceil32(_1475)]
            if ceil32(_1475) <= _1475:
                if _1475 < 8:
                    revert with 0, 17
                _1887 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1475 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1887 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1887 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1887 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1887 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1887 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1475 + 32] = 0
                if _1475 < 8:
                    revert with 0, 17
                _1891 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1475 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1891 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1891 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1891 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1891 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1891 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + _15 + 128] = 0
            if _15 < 8:
                revert with 0, 17
            _497 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + _15 + 92]
            var40003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _497 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _497 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _497 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _497 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _497 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var40003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var40003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var40003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var40003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1468 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1477 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1477
            require _1468 + _1477 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1477)] = mem[ceil32(var40003) + _1468 + 32 len ceil32(_1477)]
            if ceil32(_1477) <= _1477:
                if _1477 < 8:
                    revert with 0, 17
                _1888 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1477 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1888 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1888 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1888 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1888 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1888 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1477 + 32] = 0
                if _1477 < 8:
                    revert with 0, 17
                _1892 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1477 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1892 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1892 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1892 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1892 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1892 + 32]) >> 248) - 48
                    continue 
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Failed to send BNB'
        mem[ceil32(return_data.size) + 97] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 101] = arg2
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _14 = mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 97 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
        _16 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97])) + 1 < 0 or ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97])) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97])) + 98
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        require _14 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len ceil32(_16)] = mem[ceil32(return_data.size) + _14 + 129 len ceil32(_16)]
        if ceil32(_16) <= _16:
            if _16 < 8:
                revert with 0, 17
            _496 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] + 93]
            var39003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _496 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _496 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _496 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _496 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _496 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var39003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var39003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var39003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var39003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1469 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1479 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1479
            require _1469 + _1479 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1479)] = mem[ceil32(var39003) + _1469 + 32 len ceil32(_1479)]
            if ceil32(_1479) <= _1479:
                if _1479 < 8:
                    revert with 0, 17
                _1889 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1479 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1889 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1889 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1889 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1889 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1889 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1479 + 32] = 0
                if _1479 < 8:
                    revert with 0, 17
                _1893 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1479 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1893 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1893 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1893 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1893 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1893 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 129] = 0
            if _16 < 8:
                revert with 0, 17
            _498 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] + 93]
            var40003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _498 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _498 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _498 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _498 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _498 + 32]) >> 248) - 48
                continue 
            mem[ceil32(var40003)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(var40003) + 4] = arg3
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(var40003) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(var40003) + ceil32(return_data.size)
            require return_data.size >= 32
            _1470 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1481 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1481
            require _1470 + _1481 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1481)] = mem[ceil32(var40003) + _1470 + 32 len ceil32(_1481)]
            if ceil32(_1481) <= _1481:
                if _1481 < 8:
                    revert with 0, 17
                _1890 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1481 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1890 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1890 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1890 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1890 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1890 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1481 + 32] = 0
                if _1481 < 8:
                    revert with 0, 17
                _1894 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1481 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1894 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1894 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t and 10 > -1 / t:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1894 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1894 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1894 + 32]) >> 248) - 48
                    continue 
    require s <= stor204[arg1].field_144
    require t <= stor204[arg1].field_144
    if stor204[arg1].field_96 > test266151307():
        revert with 0, 17
    require stor204[arg1].field_96 + 1 % 281474976710656 <= stor204[arg1].field_0
    require ext_code.size(stor208)
    staticcall stor208.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor204[arg1].field_256
    require ext_code.size(stor208)
    staticcall stor208.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor204[arg1].field_256
    require not stor206[arg1][address(msg.sender)]
    stor204[arg1][2][stor204[arg1].field_96 + 1 << 208].field_0 = msg.sender
    stor204[arg1][3][stor204[arg1].field_96 + 1 << 208][0].field_0 = arg2
    stor204[arg1][3][stor204[arg1].field_96 + 1 << 208][1].field_0 = arg3
    stor206[arg1][address(msg.sender)] = 1
    if stor204[arg1].field_0 == stor204[arg1].field_96 + 1 % 281474976710656:
        stor204[arg1].field_48 = block.timestamp % 281474976710656
    stor204[arg1].field_96 = stor204[arg1].field_96 + 1 % 281474976710656
    require ext_code.size(stor208)
    call stor208.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, stor204[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPlaces(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor204[arg1].field_48:
        revert with 0, 'X'
    mem[0] = arg1
    mem[32] = 204
    if 60 > -stor204[arg1].field_48 + test266151307():
        revert with 0, 17
    if block.timestamp < stor204[arg1].field_48 + 60 % 281474976710656:
        revert with 0, 'Y'
    if stor204[arg1].field_96 > test266151307():
        revert with 0, 65
    mem[96] = stor204[arg1].field_96
    if not stor204[arg1].field_96:
        if stor204[arg1].field_96 > test266151307():
            revert with 0, 65
        mem[(32 * stor204[arg1].field_96) + 128] = stor204[arg1].field_96
        mem[64] = (64 * stor204[arg1].field_96) + 160
        if not stor204[arg1].field_96:
            idx = 0
            s = 1
            while idx % 281474976710656 < stor204[arg1].field_96:
                mem[32] = sha3(s << 208, sha3(arg1, 204) + 3)
                mem[0] = 1
                mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor204[arg1][3][s << 208][0].field_0
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args stor204[arg1][3][s << 208][0].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2366 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2370 = mem[_2366]
                require mem[_2366] <= test266151307()
                require _2366 + return_data.size > _2366 + mem[_2366] + 31
                _2376 = mem[_2366 + mem[_2366]]
                if mem[_2366 + mem[_2366]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2366 + mem[_2366]])) + 1 < 0 or _2366 + ceil32(return_data.size) + ceil32(ceil32(mem[_2366 + mem[_2366]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2366 + ceil32(return_data.size) + ceil32(ceil32(mem[_2366 + mem[_2366]])) + 1
                mem[_2366 + ceil32(return_data.size)] = _2376
                require _2370 + _2376 + 32 <= return_data.size
                t = 0
                while t < _2376:
                    mem[t + _2366 + ceil32(return_data.size) + 32] = mem[t + _2366 + _2370 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2376) <= _2376:
                    if _2376 < 8:
                        revert with 0, 17
                    _3000 = mem[64]
                    u = _2366 + ceil32(return_data.size) + mem[_2366 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3000 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3000] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3000 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3000 + 32]) >> 248 > 57:
                            if u >= 4:
                                revert with 0, 50
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if v and 10 > -1 / v:
                            revert with 0, 17
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3000 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3000 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3000 + 32]) >> 248) - 48
                        continue 
                    mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
                    require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                    staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                            gas gas_remaining wei
                           args stor204[arg1][3][s << 208][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(t) + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4216 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4252 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4252
                    require _4216 + _4252 + 32 <= return_data.size
                    u = 0
                    while u < _4252:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4216 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4252) <= _4252:
                        if _4252 < 8:
                            revert with 0, 17
                        _4753 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < mem[64] + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[mem[64]] = 4
                        mem[64] = floor32(mem[64] + 67)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4753 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4753 + 32]) >> 248 > 57:
                                if t >= 4:
                                    revert with 0, 50
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if w and 10 > -1 / w:
                                revert with 0, 17
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4753 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4753 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4753 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4252 + 32] = 0
                        if _4252 < 8:
                            revert with 0, 17
                        _4771 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4771 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4771] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4771 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4771 + 32]) >> 248 > 57:
                                if t >= 4:
                                    revert with 0, 50
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if w and 10 > -1 / w:
                                revert with 0, 17
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4771 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4771 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4771 + 32]) >> 248) - 48
                            continue 
                else:
                    mem[_2366 + ceil32(return_data.size) + _2376 + 32] = 0
                    if _2376 < 8:
                        revert with 0, 17
                    _3013 = mem[64]
                    u = _2366 + ceil32(return_data.size) + mem[_2366 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < mem[64] + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3013 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3013 + 32]) >> 248 > 57:
                            if u >= 4:
                                revert with 0, 50
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if v and 10 > -1 / v:
                            revert with 0, 17
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3013 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3013 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3013 + 32]) >> 248) - 48
                        continue 
                    mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
                    require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                    staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                            gas gas_remaining wei
                           args stor204[arg1][3][s << 208][1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(t) + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4217 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4254 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4254
                    require _4217 + _4254 + 32 <= return_data.size
                    u = 0
                    while u < _4254:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4217 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4254) <= _4254:
                        if _4254 < 8:
                            revert with 0, 17
                        _4754 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4754 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4754] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4754 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4754 + 32]) >> 248 > 57:
                                if t >= 4:
                                    revert with 0, 50
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if w and 10 > -1 / w:
                                revert with 0, 17
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4754 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4754 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4754 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4254 + 32] = 0
                        if _4254 < 8:
                            revert with 0, 17
                        _4772 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < mem[64] + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[mem[64]] = 4
                        mem[64] = floor32(mem[64] + 67)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4772 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4772 + 32]) >> 248 > 57:
                                if t >= 4:
                                    revert with 0, 50
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if w and 10 > -1 / w:
                                revert with 0, 17
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4772 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4772 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4772 + 32]) >> 248) - 48
                            continue 
                if v % 281474976710656 > -(w % 281474976710656) + test266151307():
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 204
                if (w % 281474976710656) + (v % 281474976710656) % 281474976710656 < 0:
                    revert with 0, 17
                mem[ceil32(u) + 32] = stor204[arg1].field_48
                mem[ceil32(u)] = 32
                mem[64] = ceil32(u) + 64
                if not (w % 281474976710656) + (v % 281474976710656) % 281474976710656:
                    revert with 0, 18
                if sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656 > -1:
                    revert with 0, 17
                if idx % 281474976710656 >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx % 281474976710656) + 128] = sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656
                if idx % 281474976710656 >= mem[(32 * stor204[arg1].field_96) + 128]:
                    revert with 0, 50
                mem[(32 * idx % 281474976710656) + (32 * stor204[arg1].field_96) + 160] = stor204[arg1][2][s << 208].field_0
                if s % 281474976710656 == test266151307():
                    revert with 0, 17
                if idx % 281474976710656 == test266151307():
                    revert with 0, 17
                idx = (idx % 281474976710656) + 1
                s = (s % 281474976710656) + 1
                continue 
            if var46001 < 1:
                revert with 0, 17
            if var50002 >= var50001:
                _4658 = mem[64]
                mem[mem[64]] = 64
                _4666 = mem[var50004]
                mem[mem[64] + 64] = mem[var50004]
                mem[mem[64] + 96 len 32 * _4666] = mem[var50004 + 32 len 32 * _4666]
                mem[mem[64] + 32] = (32 * _4666) + 96
                _5142 = mem[var50003]
                mem[_4658 + (32 * _4666) + 96] = mem[var50003]
                idx = 0
                s = _4658 + (32 * _4666) + 128
                t = var50003 + 32
                while idx < _5142:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _4658 + (32 * _4666) + (32 * _5142) + -mem[64] + 128
            if var43001 < mem[96]:
                if var54003 >= mem[96]:
                    revert with 0, 50
                if var43001 >= mem[96]:
                    revert with 0, 50
                if var43001 == -1:
                    revert with 0, 17
                var43001 = var43001 + 1
                continue 
            if var54003 == var54003:
                if var54005 == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if var54005 + 1 < mem[96] - 1:
                    var43001 = var54005 + 1
                    continue 
                _6078 = mem[64]
                mem[mem[64]] = 64
                _6082 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _6130 = mem[(32 * stor204[arg1].field_96) + 128]
                mem[_6078 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
                idx = 0
                s = _6078 + (32 * _6082) + 128
                t = (32 * stor204[arg1].field_96) + 160
                while idx < _6130:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6078 + (32 * _6082) + (32 * _6130) + -mem[64] + 128
            if var54003 >= mem[96]:
                revert with 0, 50
            if var54003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                revert with 0, 50
            if var54003 >= mem[96]:
                revert with 0, 50
            if var54003 >= mem[96]:
                revert with 0, 50
            if var54003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                revert with 0, 50
            if var54003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                revert with 0, 50
            if var54003 >= mem[96]:
                revert with 0, 50
            if var54003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                revert with 0, 50
            mem[(32 * var54003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var54003) + (32 * stor204[arg1].field_96) + 172 len 20]
            if var54005 == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if var54005 + 1 < mem[96] - 1:
                var43001 = var54005 + 1
                continue 
            _6106 = mem[64]
            mem[mem[64]] = 64
            _6110 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _6132 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_6106 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _6106 + (32 * _6110) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _6132:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _6106 + (32 * _6110) + (32 * _6132) + -mem[64] + 128
        mem[(32 * stor204[arg1].field_96) + 160 len 32 * stor204[arg1].field_96] = call.data[calldata.size len 32 * stor204[arg1].field_96]
        idx = 0
        s = 1
        while idx % 281474976710656 < stor204[arg1].field_96:
            mem[32] = sha3(s << 208, sha3(arg1, 204) + 3)
            mem[0] = 1
            mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor204[arg1][3][s << 208][0].field_0
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args stor204[arg1][3][s << 208][0].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2367 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2371 = mem[_2367]
            require mem[_2367] <= test266151307()
            require _2367 + return_data.size > _2367 + mem[_2367] + 31
            _2379 = mem[_2367 + mem[_2367]]
            if mem[_2367 + mem[_2367]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2367 + mem[_2367]])) + 1 < 0 or _2367 + ceil32(return_data.size) + ceil32(ceil32(mem[_2367 + mem[_2367]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2367 + ceil32(return_data.size) + ceil32(ceil32(mem[_2367 + mem[_2367]])) + 1
            mem[_2367 + ceil32(return_data.size)] = _2379
            require _2371 + _2379 + 32 <= return_data.size
            t = 0
            while t < _2379:
                mem[t + _2367 + ceil32(return_data.size) + 32] = mem[t + _2367 + _2371 + 32]
                t = t + 32
                continue 
            if ceil32(_2379) <= _2379:
                if _2379 < 8:
                    revert with 0, 17
                _3003 = mem[64]
                u = _2367 + ceil32(return_data.size) + mem[_2367 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < mem[64] + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3003 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3003 + 32]) >> 248 > 57:
                        if u >= 4:
                            revert with 0, 50
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if v and 10 > -1 / v:
                        revert with 0, 17
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3003 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3003 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3003 + 32]) >> 248) - 48
                    continue 
                mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args stor204[arg1][3][s << 208][1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(t) + ceil32(return_data.size)
                require return_data.size >= 32
                _4220 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _4258 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4258
                require _4220 + _4258 + 32 <= return_data.size
                u = 0
                while u < _4258:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4220 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4258) <= _4258:
                    if _4258 < 8:
                        revert with 0, 17
                    _4758 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < mem[64] + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4758 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4758 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4758 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4758 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4758 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _4258 + 32] = 0
                    if _4258 < 8:
                        revert with 0, 17
                    _4774 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < mem[64] + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4774 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4774 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4774 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4774 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4774 + 32]) >> 248) - 48
                        continue 
            else:
                mem[_2367 + ceil32(return_data.size) + _2379 + 32] = 0
                if _2379 < 8:
                    revert with 0, 17
                _3017 = mem[64]
                u = _2367 + ceil32(return_data.size) + mem[_2367 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < _3017 + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_3017] = 4
                mem[64] = ceil32(t)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3017 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3017 + 32]) >> 248 > 57:
                        if u >= 4:
                            revert with 0, 50
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if v and 10 > -1 / v:
                        revert with 0, 17
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3017 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3017 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3017 + 32]) >> 248) - 48
                    continue 
                mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args stor204[arg1][3][s << 208][1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(t) + ceil32(return_data.size)
                require return_data.size >= 32
                _4221 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _4260 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4260
                require _4221 + _4260 + 32 <= return_data.size
                u = 0
                while u < _4260:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4221 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4260) <= _4260:
                    if _4260 < 8:
                        revert with 0, 17
                    _4759 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < mem[64] + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4759 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4759 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4759 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4759 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4759 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _4260 + 32] = 0
                    if _4260 < 8:
                        revert with 0, 17
                    _4775 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < mem[64] + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4775 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4775 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4775 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4775 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4775 + 32]) >> 248) - 48
                        continue 
            if v % 281474976710656 > -(w % 281474976710656) + test266151307():
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 204
            if (w % 281474976710656) + (v % 281474976710656) % 281474976710656 < 0:
                revert with 0, 17
            mem[ceil32(u) + 32] = stor204[arg1].field_48
            mem[ceil32(u)] = 32
            mem[64] = ceil32(u) + 64
            if not (w % 281474976710656) + (v % 281474976710656) % 281474976710656:
                revert with 0, 18
            if sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656 > -1:
                revert with 0, 17
            if idx % 281474976710656 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx % 281474976710656) + 128] = sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656
            if idx % 281474976710656 >= mem[(32 * stor204[arg1].field_96) + 128]:
                revert with 0, 50
            mem[(32 * idx % 281474976710656) + (32 * stor204[arg1].field_96) + 160] = stor204[arg1][2][s << 208].field_0
            if s % 281474976710656 == test266151307():
                revert with 0, 17
            if idx % 281474976710656 == test266151307():
                revert with 0, 17
            idx = (idx % 281474976710656) + 1
            s = (s % 281474976710656) + 1
            continue 
        if var47001 < 1:
            revert with 0, 17
        if var51002 >= var51001:
            _4660 = mem[64]
            mem[mem[64]] = 64
            _4668 = mem[var51004]
            mem[mem[64] + 64] = mem[var51004]
            mem[mem[64] + 96 len 32 * _4668] = mem[var51004 + 32 len 32 * _4668]
            mem[mem[64] + 32] = (32 * _4668) + 96
            _5148 = mem[var51003]
            mem[_4660 + (32 * _4668) + 96] = mem[var51003]
            idx = 0
            s = _4660 + (32 * _4668) + 128
            t = var51003 + 32
            while idx < _5148:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _4660 + (32 * _4668) + (32 * _5148) + -mem[64] + 128
        if var44001 < mem[96]:
            if var55003 >= mem[96]:
                revert with 0, 50
            if var44001 >= mem[96]:
                revert with 0, 50
            if var44001 == -1:
                revert with 0, 17
            var44001 = var44001 + 1
            continue 
        if var55003 == var55003:
            if var55005 == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if var55005 + 1 < mem[96] - 1:
                var44001 = var55005 + 1
                continue 
            _6079 = mem[64]
            mem[mem[64]] = 64
            _6083 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _6134 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_6079 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _6079 + (32 * _6083) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _6134:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _6079 + (32 * _6083) + (32 * _6134) + -mem[64] + 128
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        mem[(32 * var55003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var55003) + (32 * stor204[arg1].field_96) + 172 len 20]
        if var55005 == -1:
            revert with 0, 17
        if mem[96] < 1:
            revert with 0, 17
        if var55005 + 1 < mem[96] - 1:
            var44001 = var55005 + 1
            continue 
        _6107 = mem[64]
        mem[mem[64]] = 64
        _6111 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _6136 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_6107 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _6107 + (32 * _6111) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _6136:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _6107 + (32 * _6111) + (32 * _6136) + -mem[64] + 128
    mem[128 len 32 * stor204[arg1].field_96] = call.data[calldata.size len 32 * stor204[arg1].field_96]
    if stor204[arg1].field_96 > test266151307():
        revert with 0, 65
    mem[(32 * stor204[arg1].field_96) + 128] = stor204[arg1].field_96
    mem[64] = (64 * stor204[arg1].field_96) + 160
    if not stor204[arg1].field_96:
        idx = 0
        s = 1
        while idx % 281474976710656 < stor204[arg1].field_96:
            mem[32] = sha3(s << 208, sha3(arg1, 204) + 3)
            mem[0] = 1
            mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor204[arg1][3][s << 208][0].field_0
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args stor204[arg1][3][s << 208][0].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2368 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2372 = mem[_2368]
            require mem[_2368] <= test266151307()
            require _2368 + return_data.size > _2368 + mem[_2368] + 31
            _2382 = mem[_2368 + mem[_2368]]
            if mem[_2368 + mem[_2368]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2368 + mem[_2368]])) + 1 < 0 or _2368 + ceil32(return_data.size) + ceil32(ceil32(mem[_2368 + mem[_2368]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2368 + ceil32(return_data.size) + ceil32(ceil32(mem[_2368 + mem[_2368]])) + 1
            mem[_2368 + ceil32(return_data.size)] = _2382
            require _2372 + _2382 + 32 <= return_data.size
            t = 0
            while t < _2382:
                mem[t + _2368 + ceil32(return_data.size) + 32] = mem[t + _2368 + _2372 + 32]
                t = t + 32
                continue 
            if ceil32(_2382) <= _2382:
                if _2382 < 8:
                    revert with 0, 17
                _3006 = mem[64]
                u = _2368 + ceil32(return_data.size) + mem[_2368 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < mem[64] + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3006 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3006 + 32]) >> 248 > 57:
                        if u >= 4:
                            revert with 0, 50
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if v and 10 > -1 / v:
                        revert with 0, 17
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3006 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3006 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3006 + 32]) >> 248) - 48
                    continue 
                mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args stor204[arg1][3][s << 208][1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(t) + ceil32(return_data.size)
                require return_data.size >= 32
                _4224 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _4264 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4264
                require _4224 + _4264 + 32 <= return_data.size
                u = 0
                while u < _4264:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4224 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4264) <= _4264:
                    if _4264 < 8:
                        revert with 0, 17
                    _4763 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4763 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4763] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4763 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4763 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4763 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4763 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4763 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _4264 + 32] = 0
                    if _4264 < 8:
                        revert with 0, 17
                    _4777 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < mem[64] + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4777 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4777 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4777 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4777 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4777 + 32]) >> 248) - 48
                        continue 
            else:
                mem[_2368 + ceil32(return_data.size) + _2382 + 32] = 0
                if _2382 < 8:
                    revert with 0, 17
                _3021 = mem[64]
                u = _2368 + ceil32(return_data.size) + mem[_2368 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < mem[64] + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3021 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3021 + 32]) >> 248 > 57:
                        if u >= 4:
                            revert with 0, 50
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if v and 10 > -1 / v:
                        revert with 0, 17
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3021 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3021 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3021 + 32]) >> 248) - 48
                    continue 
                mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args stor204[arg1][3][s << 208][1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(t) + ceil32(return_data.size)
                require return_data.size >= 32
                _4225 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _4266 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4266
                require _4225 + _4266 + 32 <= return_data.size
                u = 0
                while u < _4266:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4225 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4266) <= _4266:
                    if _4266 < 8:
                        revert with 0, 17
                    _4764 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4764 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4764] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4764 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4764 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4764 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4764 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4764 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _4266 + 32] = 0
                    if _4266 < 8:
                        revert with 0, 17
                    _4778 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4778 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4778] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4778 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4778 + 32]) >> 248 > 57:
                            if t >= 4:
                                revert with 0, 50
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if w and 10 > -1 / w:
                            revert with 0, 17
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4778 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4778 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4778 + 32]) >> 248) - 48
                        continue 
            if v % 281474976710656 > -(w % 281474976710656) + test266151307():
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 204
            if (w % 281474976710656) + (v % 281474976710656) % 281474976710656 < 0:
                revert with 0, 17
            mem[ceil32(u) + 32] = stor204[arg1].field_48
            mem[ceil32(u)] = 32
            mem[64] = ceil32(u) + 64
            if not (w % 281474976710656) + (v % 281474976710656) % 281474976710656:
                revert with 0, 18
            if sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656 > -1:
                revert with 0, 17
            if idx % 281474976710656 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx % 281474976710656) + 128] = sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656
            if idx % 281474976710656 >= mem[(32 * stor204[arg1].field_96) + 128]:
                revert with 0, 50
            mem[(32 * idx % 281474976710656) + (32 * stor204[arg1].field_96) + 160] = stor204[arg1][2][s << 208].field_0
            if s % 281474976710656 == test266151307():
                revert with 0, 17
            if idx % 281474976710656 == test266151307():
                revert with 0, 17
            idx = (idx % 281474976710656) + 1
            s = (s % 281474976710656) + 1
            continue 
        if var47001 < 1:
            revert with 0, 17
        if var51002 >= var51001:
            _4662 = mem[64]
            mem[mem[64]] = 64
            _4670 = mem[var51004]
            mem[mem[64] + 64] = mem[var51004]
            mem[mem[64] + 96 len 32 * _4670] = mem[var51004 + 32 len 32 * _4670]
            mem[mem[64] + 32] = (32 * _4670) + 96
            _5154 = mem[var51003]
            mem[_4662 + (32 * _4670) + 96] = mem[var51003]
            idx = 0
            s = _4662 + (32 * _4670) + 128
            t = var51003 + 32
            while idx < _5154:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _4662 + (32 * _4670) + (32 * _5154) + -mem[64] + 128
        if var44001 < mem[96]:
            if var55003 >= mem[96]:
                revert with 0, 50
            if var44001 >= mem[96]:
                revert with 0, 50
            if var44001 == -1:
                revert with 0, 17
            var44001 = var44001 + 1
            continue 
        if var55003 == var55003:
            if var55005 == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if var55005 + 1 < mem[96] - 1:
                var44001 = var55005 + 1
                continue 
            _6080 = mem[64]
            mem[mem[64]] = 64
            _6084 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _6138 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_6080 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _6080 + (32 * _6084) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _6138:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _6080 + (32 * _6084) + (32 * _6138) + -mem[64] + 128
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var55003 >= mem[96]:
            revert with 0, 50
        if var55003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        mem[(32 * var55003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var55003) + (32 * stor204[arg1].field_96) + 172 len 20]
        if var55005 == -1:
            revert with 0, 17
        if mem[96] < 1:
            revert with 0, 17
        if var55005 + 1 < mem[96] - 1:
            var44001 = var55005 + 1
            continue 
        _6108 = mem[64]
        mem[mem[64]] = 64
        _6112 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _6140 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_6108 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _6108 + (32 * _6112) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _6140:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _6108 + (32 * _6112) + (32 * _6140) + -mem[64] + 128
    mem[(32 * stor204[arg1].field_96) + 160 len 32 * stor204[arg1].field_96] = call.data[calldata.size len 32 * stor204[arg1].field_96]
    idx = 0
    s = 1
    while idx % 281474976710656 < stor204[arg1].field_96:
        mem[32] = sha3(s << 208, sha3(arg1, 204) + 3)
        mem[0] = 1
        mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor204[arg1][3][s << 208][0].field_0
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args stor204[arg1][3][s << 208][0].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2369 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2373 = mem[_2369]
        require mem[_2369] <= test266151307()
        require _2369 + return_data.size > _2369 + mem[_2369] + 31
        _2385 = mem[_2369 + mem[_2369]]
        if mem[_2369 + mem[_2369]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_2369 + mem[_2369]])) + 1 < 0 or _2369 + ceil32(return_data.size) + ceil32(ceil32(mem[_2369 + mem[_2369]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2369 + ceil32(return_data.size) + ceil32(ceil32(mem[_2369 + mem[_2369]])) + 1
        mem[_2369 + ceil32(return_data.size)] = _2385
        require _2373 + _2385 + 32 <= return_data.size
        t = 0
        while t < _2385:
            mem[t + _2369 + ceil32(return_data.size) + 32] = mem[t + _2369 + _2373 + 32]
            t = t + 32
            continue 
        if ceil32(_2385) <= _2385:
            if _2385 < 8:
                revert with 0, 17
            _3009 = mem[64]
            u = _2369 + ceil32(return_data.size) + mem[_2369 + ceil32(return_data.size)] - 4
            t = mem[64] + 4
            while t < _3009 + 8:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_3009] = 4
            mem[64] = ceil32(t)
            u = 0
            v = 0
            while u < 4:
                if u >= 4:
                    revert with 0, 50
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _3009 + 32]) >> 248 < 48:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if uint8(mem[u + _3009 + 32]) >> 248 > 57:
                    if u >= 4:
                        revert with 0, 50
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if v and 10 > -1 / v:
                    revert with 0, 17
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _3009 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * v > !((uint8(mem[u + _3009 + 32]) >> 248) - 48):
                    revert with 0, 17
                if u == -1:
                    revert with 0, 17
                u = u + 1
                v = (10 * v) + (uint8(mem[u + _3009 + 32]) >> 248) - 48
                continue 
            mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args stor204[arg1][3][s << 208][1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(t) + ceil32(return_data.size)
            require return_data.size >= 32
            _4228 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
            require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
            require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
            _4270 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
            if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
            mem[ceil32(t) + ceil32(return_data.size)] = _4270
            require _4228 + _4270 + 32 <= return_data.size
            u = 0
            while u < _4270:
                mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4228 + 32]
                u = u + 32
                continue 
            if ceil32(_4270) <= _4270:
                if _4270 < 8:
                    revert with 0, 17
                _4768 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < mem[64] + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4768 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4768 + 32]) >> 248 > 57:
                        if t >= 4:
                            revert with 0, 50
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if w and 10 > -1 / w:
                        revert with 0, 17
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4768 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4768 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4768 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(t) + ceil32(return_data.size) + _4270 + 32] = 0
                if _4270 < 8:
                    revert with 0, 17
                _4780 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < mem[64] + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4780 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4780 + 32]) >> 248 > 57:
                        if t >= 4:
                            revert with 0, 50
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if w and 10 > -1 / w:
                        revert with 0, 17
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4780 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4780 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4780 + 32]) >> 248) - 48
                    continue 
        else:
            mem[_2369 + ceil32(return_data.size) + _2385 + 32] = 0
            if _2385 < 8:
                revert with 0, 17
            _3025 = mem[64]
            u = _2369 + ceil32(return_data.size) + mem[_2369 + ceil32(return_data.size)] - 4
            t = mem[64] + 4
            while t < mem[64] + 8:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            u = 0
            v = 0
            while u < 4:
                if u >= 4:
                    revert with 0, 50
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _3025 + 32]) >> 248 < 48:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if uint8(mem[u + _3025 + 32]) >> 248 > 57:
                    if u >= 4:
                        revert with 0, 50
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if v and 10 > -1 / v:
                    revert with 0, 17
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _3025 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * v > !((uint8(mem[u + _3025 + 32]) >> 248) - 48):
                    revert with 0, 17
                if u == -1:
                    revert with 0, 17
                u = u + 1
                v = (10 * v) + (uint8(mem[u + _3025 + 32]) >> 248) - 48
                continue 
            mem[ceil32(t)] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(t) + 4] = stor204[arg1][3][s << 208][1].field_0
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args stor204[arg1][3][s << 208][1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(t) len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(t) + ceil32(return_data.size)
            require return_data.size >= 32
            _4229 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
            require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
            require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
            _4272 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
            if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
            mem[ceil32(t) + ceil32(return_data.size)] = _4272
            require _4229 + _4272 + 32 <= return_data.size
            u = 0
            while u < _4272:
                mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4229 + 32]
                u = u + 32
                continue 
            if ceil32(_4272) <= _4272:
                if _4272 < 8:
                    revert with 0, 17
                _4769 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4769 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4769] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4769 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4769 + 32]) >> 248 > 57:
                        if t >= 4:
                            revert with 0, 50
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if w and 10 > -1 / w:
                        revert with 0, 17
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4769 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4769 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4769 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(t) + ceil32(return_data.size) + _4272 + 32] = 0
                if _4272 < 8:
                    revert with 0, 17
                _4781 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4781 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4781] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4781 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4781 + 32]) >> 248 > 57:
                        if t >= 4:
                            revert with 0, 50
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if w and 10 > -1 / w:
                        revert with 0, 17
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4781 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4781 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4781 + 32]) >> 248) - 48
                    continue 
        if v % 281474976710656 > -(w % 281474976710656) + test266151307():
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 204
        if (w % 281474976710656) + (v % 281474976710656) % 281474976710656 < 0:
            revert with 0, 17
        mem[ceil32(u) + 32] = stor204[arg1].field_48
        mem[ceil32(u)] = 32
        mem[64] = ceil32(u) + 64
        if not (w % 281474976710656) + (v % 281474976710656) % 281474976710656:
            revert with 0, 18
        if sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656 > -1:
            revert with 0, 17
        if idx % 281474976710656 >= mem[96]:
            revert with 0, 50
        mem[(32 * idx % 281474976710656) + 128] = sha3(stor204[arg1].field_48) % (w % 281474976710656) + (v % 281474976710656) % 281474976710656
        if idx % 281474976710656 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        mem[(32 * idx % 281474976710656) + (32 * stor204[arg1].field_96) + 160] = stor204[arg1][2][s << 208].field_0
        if s % 281474976710656 == test266151307():
            revert with 0, 17
        if idx % 281474976710656 == test266151307():
            revert with 0, 17
        idx = (idx % 281474976710656) + 1
        s = (s % 281474976710656) + 1
        continue 
    if var48001 < 1:
        revert with 0, 17
    if var52002 >= var52001:
        _4664 = mem[64]
        mem[mem[64]] = 64
        _4672 = mem[var52004]
        mem[mem[64] + 64] = mem[var52004]
        mem[mem[64] + 96 len 32 * _4672] = mem[var52004 + 32 len 32 * _4672]
        mem[mem[64] + 32] = (32 * _4672) + 96
        _5160 = mem[var52003]
        mem[_4664 + (32 * _4672) + 96] = mem[var52003]
        idx = 0
        s = _4664 + (32 * _4672) + 128
        t = var52003 + 32
        while idx < _5160:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _4664 + (32 * _4672) + (32 * _5160) + -mem[64] + 128
    if var45001 < mem[96]:
        if var56003 >= mem[96]:
            revert with 0, 50
        if var45001 >= mem[96]:
            revert with 0, 50
        if var45001 == -1:
            revert with 0, 17
        var45001 = var45001 + 1
        continue 
    if var56003 == var56003:
        if var56005 == -1:
            revert with 0, 17
        if mem[96] < 1:
            revert with 0, 17
        if var56005 + 1 < mem[96] - 1:
            var45001 = var56005 + 1
            continue 
        _6081 = mem[64]
        mem[mem[64]] = 64
        _6085 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _6142 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_6081 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _6081 + (32 * _6085) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _6142:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _6081 + (32 * _6085) + (32 * _6142) + -mem[64] + 128
    if var56003 >= mem[96]:
        revert with 0, 50
    if var56003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    if var56003 >= mem[96]:
        revert with 0, 50
    if var56003 >= mem[96]:
        revert with 0, 50
    if var56003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    if var56003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    if var56003 >= mem[96]:
        revert with 0, 50
    if var56003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    mem[(32 * var56003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var56003) + (32 * stor204[arg1].field_96) + 172 len 20]
    if var56005 == -1:
        revert with 0, 17
    if mem[96] < 1:
        revert with 0, 17
    if var56005 + 1 < mem[96] - 1:
        var45001 = var56005 + 1
        continue 
    _6109 = mem[64]
    mem[mem[64]] = 64
    _6113 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _6144 = mem[(32 * stor204[arg1].field_96) + 128]
    mem[_6109 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
    idx = 0
    s = _6109 + (32 * _6113) + 128
    t = (32 * stor204[arg1].field_96) + 160
    while idx < _6144:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _6109 + (32 * _6113) + (32 * _6144) + -mem[64] + 128
}

function sub_0632c859(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1 % 281474976710656
    require msg.value >= 5 * 10^14
    call 0xb8ce421729232ecd5dfc7bd0adfe1f4dad9d9cce with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Failed to send BNB'
        require arg1 % 281474976710656 > 3
        require arg1 % 281474976710656 <= 10
        if sub_af5537fa == -1:
            revert with 0, 17
        sub_af5537fa++
        mem[32] = 204
        stor204[stor207].field_0 = arg1 % 281474976710656
        mem[0] = sub_af5537fa
        stor204[stor207].field_256 = arg2
        mem[96] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _17 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg3) >> 32 + 127
        _19 = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _19
        require _17 + _19 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_19)] = mem[_17 + 128 len ceil32(_19)]
        if ceil32(_19) <= _19:
            if _19 < 8:
                revert with 0, 17
            _859 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + _19 + 92]
            var48003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _859 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _859 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _859 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _859 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _859 + 32]) >> 248) - 48
                continue 
            mem[64] = ceil32(var48003) + 128
            mem[ceil32(var48003)] = 0
            mem[ceil32(var48003) + 32] = 0
            mem[ceil32(var48003) + 64] = 0
            mem[ceil32(var48003) + 96] = 0
            mem[64] = ceil32(var48003) + 256
            mem[ceil32(var48003) + 128] = 0
            mem[ceil32(var48003) + 160] = 0
            mem[ceil32(var48003) + 192] = 0
            mem[ceil32(var48003) + 224] = 0
            idx = 0
            while idx <= 5:
                if idx >= stor202.length:
                    revert with 0, 50
                mem[0] = 202
                _3321 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3321] = stor202[idx].field_0
                mem[_3321 + 32] = stor202[idx].field_256
                mem[_3321 + 64] = stor202[idx].field_512
                if stor202[idx].field_560 > 5:
                    revert with 0, 33
                mem[_3321 + 96] = stor202[idx].field_560
                if s < stor202[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if s > stor202[idx].field_256:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3363 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3371 = mem[_3363]
                require mem[_3363] <= test266151307()
                require _3363 + return_data.size > _3363 + mem[_3363] + 31
                _3375 = mem[_3363 + mem[_3363]]
                if mem[_3363 + mem[_3363]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_3363 + mem[_3363]])) + 1 < 0 or _3363 + ceil32(return_data.size) + ceil32(ceil32(mem[_3363 + mem[_3363]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3363 + ceil32(return_data.size) + ceil32(ceil32(mem[_3363 + mem[_3363]])) + 1
                mem[_3363 + ceil32(return_data.size)] = _3375
                require _3371 + _3375 + 32 <= return_data.size
                idx = 0
                while idx < _3375:
                    mem[idx + _3363 + ceil32(return_data.size) + 32] = mem[idx + _3363 + _3371 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3375) <= _3375:
                    if _3375 < 8:
                        revert with 0, 17
                    _4856 = mem[64]
                    s = _3363 + ceil32(return_data.size) + mem[_3363 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < mem[64] + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4856 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4856 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4856 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4856 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4856 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9090 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9090] = stor202[s].field_0
                        mem[_9090 + 32] = stor202[s].field_256
                        mem[_9090 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9090 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3321 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9851] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10445] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11259 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11259] == bool(mem[_11259])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11291 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11291] == bool(mem[_11291])
                        else:
                            stor204[stor207].field_144 = mem[_3321 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9852] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10446] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11260 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11260] == bool(mem[_11260])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11292 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11292] == bool(mem[_11292])
                    if mem[_3321 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9499] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9819 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9819] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10591] == bool(mem[_10591])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10651] == bool(mem[_10651])
                    else:
                        stor204[stor207].field_144 = mem[_3321 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9500] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9820 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9820] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10592] == bool(mem[_10592])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10652] == bool(mem[_10652])
                else:
                    mem[_3363 + ceil32(return_data.size) + _3375 + 32] = 0
                    if _3375 < 8:
                        revert with 0, 17
                    _4864 = mem[64]
                    s = _3363 + ceil32(return_data.size) + mem[_3363 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < mem[64] + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4864 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4864 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4864 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4864 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4864 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9094 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9094] = stor202[s].field_0
                        mem[_9094 + 32] = stor202[s].field_256
                        mem[_9094 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9094 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3321 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9853] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10453] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11261 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11261] == bool(mem[_11261])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11293 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11293] == bool(mem[_11293])
                        else:
                            stor204[stor207].field_144 = mem[_3321 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9854 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9854] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10454 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10454] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11262 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11262] == bool(mem[_11262])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11294] == bool(mem[_11294])
                    if mem[_3321 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9501] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9821 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9821] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10595] == bool(mem[_10595])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10653] == bool(mem[_10653])
                    else:
                        stor204[stor207].field_144 = mem[_3321 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9502] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9822] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10596] == bool(mem[_10596])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10654 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10654] == bool(mem[_10654])
            mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3339 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3347 = mem[_3339]
            require mem[_3339] <= test266151307()
            require _3339 + return_data.size > _3339 + mem[_3339] + 31
            _3351 = mem[_3339 + mem[_3339]]
            if mem[_3339 + mem[_3339]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_3339 + mem[_3339]])) + 1 < 0 or _3339 + ceil32(return_data.size) + ceil32(ceil32(mem[_3339 + mem[_3339]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _3339 + ceil32(return_data.size) + ceil32(ceil32(mem[_3339 + mem[_3339]])) + 1
            mem[_3339 + ceil32(return_data.size)] = _3351
            require _3347 + _3351 + 32 <= return_data.size
            mem[_3339 + ceil32(return_data.size) + 32 len ceil32(_3351)] = mem[_3339 + _3347 + 32 len ceil32(_3351)]
            if ceil32(_3351) <= _3351:
                if _3351 < 8:
                    revert with 0, 17
                _4855 = mem[64]
                mem[mem[64] + 4] = mem[_3339 + ceil32(return_data.size) + _3351 - 4]
                var93003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4855 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4855 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4855 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4855 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4855 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var93003) + 128
                mem[ceil32(var93003)] = 0
                mem[ceil32(var93003) + 32] = 0
                mem[ceil32(var93003) + 64] = 0
                mem[ceil32(var93003) + 96] = 0
                mem[64] = ceil32(var93003) + 256
                mem[ceil32(var93003) + 128] = 0
                mem[ceil32(var93003) + 160] = 0
                mem[ceil32(var93003) + 192] = 0
                mem[ceil32(var93003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9082 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9082] = stor202[idx].field_0
                    mem[_9082 + 32] = stor202[idx].field_256
                    mem[_9082 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9082 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var48003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9847] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10429] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11255] == bool(mem[_11255])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11287 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11287] == bool(mem[_11287])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9848] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10430] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11256 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11256] == bool(mem[_11256])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11288] == bool(mem[_11288])
                if mem[ceil32(var48003) + 160] <= mem[ceil32(var93003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var93003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9495 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9495] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9815] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10583] == bool(mem[_10583])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10647] == bool(mem[_10647])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9496] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9816] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10584] == bool(mem[_10584])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10648] == bool(mem[_10648])
            else:
                mem[_3339 + ceil32(return_data.size) + _3351 + 32] = 0
                if _3351 < 8:
                    revert with 0, 17
                _4863 = mem[64]
                mem[mem[64] + 4] = mem[_3339 + ceil32(return_data.size) + _3351 - 4]
                var94003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4863 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4863 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4863 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4863 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4863 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var94003) + 128
                mem[ceil32(var94003)] = 0
                mem[ceil32(var94003) + 32] = 0
                mem[ceil32(var94003) + 64] = 0
                mem[ceil32(var94003) + 96] = 0
                mem[64] = ceil32(var94003) + 256
                mem[ceil32(var94003) + 128] = 0
                mem[ceil32(var94003) + 160] = 0
                mem[ceil32(var94003) + 192] = 0
                mem[ceil32(var94003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9086 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9086] = stor202[idx].field_0
                    mem[_9086 + 32] = stor202[idx].field_256
                    mem[_9086 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9086 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var48003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9849] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10437 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10437] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11257] == bool(mem[_11257])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11289] == bool(mem[_11289])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9850 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9850] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10438] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11258] == bool(mem[_11258])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11290] == bool(mem[_11290])
                if mem[ceil32(var48003) + 160] <= mem[ceil32(var94003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var94003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9497] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9817] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10587 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10587] == bool(mem[_10587])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10649 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10649] == bool(mem[_10649])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9498] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9818] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10588] == bool(mem[_10588])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10650 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10650] == bool(mem[_10650])
        else:
            mem[ceil32(return_data.size) + _19 + 128] = 0
            if _19 < 8:
                revert with 0, 17
            _861 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + _19 + 92]
            var49003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _861 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _861 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _861 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _861 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _861 + 32]) >> 248) - 48
                continue 
            mem[64] = ceil32(var49003) + 128
            mem[ceil32(var49003)] = 0
            mem[ceil32(var49003) + 32] = 0
            mem[ceil32(var49003) + 64] = 0
            mem[ceil32(var49003) + 96] = 0
            mem[64] = ceil32(var49003) + 256
            mem[ceil32(var49003) + 128] = 0
            mem[ceil32(var49003) + 160] = 0
            mem[ceil32(var49003) + 192] = 0
            mem[ceil32(var49003) + 224] = 0
            idx = 0
            while idx <= 5:
                if idx >= stor202.length:
                    revert with 0, 50
                mem[0] = 202
                _3324 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3324] = stor202[idx].field_0
                mem[_3324 + 32] = stor202[idx].field_256
                mem[_3324 + 64] = stor202[idx].field_512
                if stor202[idx].field_560 > 5:
                    revert with 0, 33
                mem[_3324 + 96] = stor202[idx].field_560
                if s < stor202[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if s > stor202[idx].field_256:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3364 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3372 = mem[_3364]
                require mem[_3364] <= test266151307()
                require _3364 + return_data.size > _3364 + mem[_3364] + 31
                _3376 = mem[_3364 + mem[_3364]]
                if mem[_3364 + mem[_3364]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_3364 + mem[_3364]])) + 1 < 0 or _3364 + ceil32(return_data.size) + ceil32(ceil32(mem[_3364 + mem[_3364]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3364 + ceil32(return_data.size) + ceil32(ceil32(mem[_3364 + mem[_3364]])) + 1
                mem[_3364 + ceil32(return_data.size)] = _3376
                require _3372 + _3376 + 32 <= return_data.size
                idx = 0
                while idx < _3376:
                    mem[idx + _3364 + ceil32(return_data.size) + 32] = mem[idx + _3364 + _3372 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3376) <= _3376:
                    if _3376 < 8:
                        revert with 0, 17
                    _4858 = mem[64]
                    s = _3364 + ceil32(return_data.size) + mem[_3364 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < _4858 + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[_4858] = 4
                    mem[64] = ceil32(idx)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4858 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4858 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4858 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4858 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4858 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9106 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9106] = stor202[s].field_0
                        mem[_9106 + 32] = stor202[s].field_256
                        mem[_9106 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9106 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3324 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9859] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10477 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10477] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11267 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11267] == bool(mem[_11267])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11299 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11299] == bool(mem[_11299])
                        else:
                            stor204[stor207].field_144 = mem[_3324 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9860 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9860] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10478 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10478] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11268] == bool(mem[_11268])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11300 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11300] == bool(mem[_11300])
                    if mem[_3324 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9507] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9827 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9827] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10607 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10607] == bool(mem[_10607])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10659] == bool(mem[_10659])
                    else:
                        stor204[stor207].field_144 = mem[_3324 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9508] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9828 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9828] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10608 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10608] == bool(mem[_10608])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10660] == bool(mem[_10660])
                else:
                    mem[_3364 + ceil32(return_data.size) + _3376 + 32] = 0
                    if _3376 < 8:
                        revert with 0, 17
                    _4866 = mem[64]
                    s = _3364 + ceil32(return_data.size) + mem[_3364 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < _4866 + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[_4866] = 4
                    mem[64] = ceil32(idx)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4866 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4866 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4866 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4866 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4866 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9110 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9110] = stor202[s].field_0
                        mem[_9110 + 32] = stor202[s].field_256
                        mem[_9110 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9110 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3324 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9861] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10485 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10485] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11269] == bool(mem[_11269])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11301 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11301] == bool(mem[_11301])
                        else:
                            stor204[stor207].field_144 = mem[_3324 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9862] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10486 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10486] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11270 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11270] == bool(mem[_11270])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11302 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11302] == bool(mem[_11302])
                    if mem[_3324 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9509 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9509] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9829] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10611] == bool(mem[_10611])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10661] == bool(mem[_10661])
                    else:
                        stor204[stor207].field_144 = mem[_3324 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9510] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9830 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9830] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10612] == bool(mem[_10612])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10662] == bool(mem[_10662])
            mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3341 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3348 = mem[_3341]
            require mem[_3341] <= test266151307()
            require _3341 + return_data.size > _3341 + mem[_3341] + 31
            _3353 = mem[_3341 + mem[_3341]]
            if mem[_3341 + mem[_3341]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_3341 + mem[_3341]])) + 1 < 0 or _3341 + ceil32(return_data.size) + ceil32(ceil32(mem[_3341 + mem[_3341]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _3341 + ceil32(return_data.size) + ceil32(ceil32(mem[_3341 + mem[_3341]])) + 1
            mem[_3341 + ceil32(return_data.size)] = _3353
            require _3348 + _3353 + 32 <= return_data.size
            mem[_3341 + ceil32(return_data.size) + 32 len ceil32(_3353)] = mem[_3341 + _3348 + 32 len ceil32(_3353)]
            if ceil32(_3353) <= _3353:
                if _3353 < 8:
                    revert with 0, 17
                _4857 = mem[64]
                mem[mem[64] + 4] = mem[_3341 + ceil32(return_data.size) + _3353 - 4]
                var94003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4857 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4857 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4857 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4857 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4857 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var94003) + 128
                mem[ceil32(var94003)] = 0
                mem[ceil32(var94003) + 32] = 0
                mem[ceil32(var94003) + 64] = 0
                mem[ceil32(var94003) + 96] = 0
                mem[64] = ceil32(var94003) + 256
                mem[ceil32(var94003) + 128] = 0
                mem[ceil32(var94003) + 160] = 0
                mem[ceil32(var94003) + 192] = 0
                mem[ceil32(var94003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9098 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9098] = stor202[idx].field_0
                    mem[_9098 + 32] = stor202[idx].field_256
                    mem[_9098 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9098 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var49003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9855] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10461] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11263 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11263] == bool(mem[_11263])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11295] == bool(mem[_11295])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9856] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10462] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11264] == bool(mem[_11264])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11296] == bool(mem[_11296])
                if mem[ceil32(var49003) + 160] <= mem[ceil32(var94003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var94003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9503] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9823] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10599 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10599] == bool(mem[_10599])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10655] == bool(mem[_10655])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9504] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9824] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10600 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10600] == bool(mem[_10600])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10656] == bool(mem[_10656])
            else:
                mem[_3341 + ceil32(return_data.size) + _3353 + 32] = 0
                if _3353 < 8:
                    revert with 0, 17
                _4865 = mem[64]
                mem[mem[64] + 4] = mem[_3341 + ceil32(return_data.size) + _3353 - 4]
                var95003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4865 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4865 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4865 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4865 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4865 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var95003) + 128
                mem[ceil32(var95003)] = 0
                mem[ceil32(var95003) + 32] = 0
                mem[ceil32(var95003) + 64] = 0
                mem[ceil32(var95003) + 96] = 0
                mem[64] = ceil32(var95003) + 256
                mem[ceil32(var95003) + 128] = 0
                mem[ceil32(var95003) + 160] = 0
                mem[ceil32(var95003) + 192] = 0
                mem[ceil32(var95003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9102 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9102] = stor202[idx].field_0
                    mem[_9102 + 32] = stor202[idx].field_256
                    mem[_9102 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9102 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var49003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9857] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10469] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11265] == bool(mem[_11265])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11297 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11297] == bool(mem[_11297])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9858 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9858] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10470] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11266] == bool(mem[_11266])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11298] == bool(mem[_11298])
                if mem[ceil32(var49003) + 160] <= mem[ceil32(var95003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var95003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9505] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9825] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10603] == bool(mem[_10603])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10657] == bool(mem[_10657])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9506] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9826] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10604 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10604] == bool(mem[_10604])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10658 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10658] == bool(mem[_10658])
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Failed to send BNB'
        require arg1 % 281474976710656 > 3
        require arg1 % 281474976710656 <= 10
        if sub_af5537fa == -1:
            revert with 0, 17
        sub_af5537fa++
        mem[32] = 204
        stor204[stor207].field_0 = arg1 % 281474976710656
        mem[0] = sub_af5537fa
        stor204[stor207].field_256 = arg2
        mem[ceil32(return_data.size) + 97] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 101] = arg3
        require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
        staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _18 = mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 97 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
        _20 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97])) + 1 < 0 or ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97])) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97])) + 98
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
        require _18 + _20 + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len ceil32(_20)] = mem[ceil32(return_data.size) + _18 + 129 len ceil32(_20)]
        if ceil32(_20) <= _20:
            if _20 < 8:
                revert with 0, 17
            _860 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] + 93]
            var48003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _860 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _860 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _860 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _860 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _860 + 32]) >> 248) - 48
                continue 
            mem[64] = ceil32(var48003) + 128
            mem[ceil32(var48003)] = 0
            mem[ceil32(var48003) + 32] = 0
            mem[ceil32(var48003) + 64] = 0
            mem[ceil32(var48003) + 96] = 0
            mem[64] = ceil32(var48003) + 256
            mem[ceil32(var48003) + 128] = 0
            mem[ceil32(var48003) + 160] = 0
            mem[ceil32(var48003) + 192] = 0
            mem[ceil32(var48003) + 224] = 0
            idx = 0
            while idx <= 5:
                if idx >= stor202.length:
                    revert with 0, 50
                mem[0] = 202
                _3327 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3327] = stor202[idx].field_0
                mem[_3327 + 32] = stor202[idx].field_256
                mem[_3327 + 64] = stor202[idx].field_512
                if stor202[idx].field_560 > 5:
                    revert with 0, 33
                mem[_3327 + 96] = stor202[idx].field_560
                if s < stor202[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if s > stor202[idx].field_256:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3365 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3373 = mem[_3365]
                require mem[_3365] <= test266151307()
                require _3365 + return_data.size > _3365 + mem[_3365] + 31
                _3377 = mem[_3365 + mem[_3365]]
                if mem[_3365 + mem[_3365]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_3365 + mem[_3365]])) + 1 < 0 or _3365 + ceil32(return_data.size) + ceil32(ceil32(mem[_3365 + mem[_3365]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3365 + ceil32(return_data.size) + ceil32(ceil32(mem[_3365 + mem[_3365]])) + 1
                mem[_3365 + ceil32(return_data.size)] = _3377
                require _3373 + _3377 + 32 <= return_data.size
                idx = 0
                while idx < _3377:
                    mem[idx + _3365 + ceil32(return_data.size) + 32] = mem[idx + _3365 + _3373 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3377) <= _3377:
                    if _3377 < 8:
                        revert with 0, 17
                    _4860 = mem[64]
                    s = _3365 + ceil32(return_data.size) + mem[_3365 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < mem[64] + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4860 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4860 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4860 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4860 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4860 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9122 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9122] = stor202[s].field_0
                        mem[_9122 + 32] = stor202[s].field_256
                        mem[_9122 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9122 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3327 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9867] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10509 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10509] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11275 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11275] == bool(mem[_11275])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11307 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11307] == bool(mem[_11307])
                        else:
                            stor204[stor207].field_144 = mem[_3327 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9868] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10510 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10510] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11276] == bool(mem[_11276])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11308] == bool(mem[_11308])
                    if mem[_3327 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9515] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9835] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10623 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10623] == bool(mem[_10623])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10667] == bool(mem[_10667])
                    else:
                        stor204[stor207].field_144 = mem[_3327 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9516] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9836] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10624 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10624] == bool(mem[_10624])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10668] == bool(mem[_10668])
                else:
                    mem[_3365 + ceil32(return_data.size) + _3377 + 32] = 0
                    if _3377 < 8:
                        revert with 0, 17
                    _4868 = mem[64]
                    s = _3365 + ceil32(return_data.size) + mem[_3365 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < mem[64] + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4868 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4868 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4868 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4868 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4868 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9126 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9126] = stor202[s].field_0
                        mem[_9126 + 32] = stor202[s].field_256
                        mem[_9126 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9126 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3327 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9869] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10517 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10517] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11277 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11277] == bool(mem[_11277])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11309 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11309] == bool(mem[_11309])
                        else:
                            stor204[stor207].field_144 = mem[_3327 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9870] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10518] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11278 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11278] == bool(mem[_11278])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11310] == bool(mem[_11310])
                    if mem[_3327 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9517] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9837] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10627] == bool(mem[_10627])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10669] == bool(mem[_10669])
                    else:
                        stor204[stor207].field_144 = mem[_3327 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9518] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9838] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10628] == bool(mem[_10628])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10670 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10670] == bool(mem[_10670])
            mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3343 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3349 = mem[_3343]
            require mem[_3343] <= test266151307()
            require _3343 + return_data.size > _3343 + mem[_3343] + 31
            _3355 = mem[_3343 + mem[_3343]]
            if mem[_3343 + mem[_3343]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_3343 + mem[_3343]])) + 1 < 0 or _3343 + ceil32(return_data.size) + ceil32(ceil32(mem[_3343 + mem[_3343]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _3343 + ceil32(return_data.size) + ceil32(ceil32(mem[_3343 + mem[_3343]])) + 1
            mem[_3343 + ceil32(return_data.size)] = _3355
            require _3349 + _3355 + 32 <= return_data.size
            mem[_3343 + ceil32(return_data.size) + 32 len ceil32(_3355)] = mem[_3343 + _3349 + 32 len ceil32(_3355)]
            if ceil32(_3355) <= _3355:
                if _3355 < 8:
                    revert with 0, 17
                _4859 = mem[64]
                mem[mem[64] + 4] = mem[_3343 + ceil32(return_data.size) + _3355 - 4]
                var93003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4859 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4859 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4859 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4859 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4859 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var93003) + 128
                mem[ceil32(var93003)] = 0
                mem[ceil32(var93003) + 32] = 0
                mem[ceil32(var93003) + 64] = 0
                mem[ceil32(var93003) + 96] = 0
                mem[64] = ceil32(var93003) + 256
                mem[ceil32(var93003) + 128] = 0
                mem[ceil32(var93003) + 160] = 0
                mem[ceil32(var93003) + 192] = 0
                mem[ceil32(var93003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9114 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9114] = stor202[idx].field_0
                    mem[_9114 + 32] = stor202[idx].field_256
                    mem[_9114 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9114 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var48003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9863] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10493] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11271 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11271] == bool(mem[_11271])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11303] == bool(mem[_11303])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9864 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9864] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10494] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11272] == bool(mem[_11272])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11304] == bool(mem[_11304])
                if mem[ceil32(var48003) + 160] <= mem[ceil32(var93003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var93003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9511] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9831] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10615] == bool(mem[_10615])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10663] == bool(mem[_10663])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9512] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9832] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10616] == bool(mem[_10616])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10664] == bool(mem[_10664])
            else:
                mem[_3343 + ceil32(return_data.size) + _3355 + 32] = 0
                if _3355 < 8:
                    revert with 0, 17
                _4867 = mem[64]
                mem[mem[64] + 4] = mem[_3343 + ceil32(return_data.size) + _3355 - 4]
                var94003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4867 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4867 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4867 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4867 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4867 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var94003) + 128
                mem[ceil32(var94003)] = 0
                mem[ceil32(var94003) + 32] = 0
                mem[ceil32(var94003) + 64] = 0
                mem[ceil32(var94003) + 96] = 0
                mem[64] = ceil32(var94003) + 256
                mem[ceil32(var94003) + 128] = 0
                mem[ceil32(var94003) + 160] = 0
                mem[ceil32(var94003) + 192] = 0
                mem[ceil32(var94003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9118 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9118] = stor202[idx].field_0
                    mem[_9118 + 32] = stor202[idx].field_256
                    mem[_9118 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9118 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var48003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9865 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9865] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10501] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11273] == bool(mem[_11273])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11305 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11305] == bool(mem[_11305])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9866 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9866] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10502] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11274] == bool(mem[_11274])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11306] == bool(mem[_11306])
                if mem[ceil32(var48003) + 160] <= mem[ceil32(var94003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var94003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9513] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9833] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10619] == bool(mem[_10619])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10665] == bool(mem[_10665])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var48003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9514] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9834] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10620] == bool(mem[_10620])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10666] == bool(mem[_10666])
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + _20 + 129] = 0
            if _20 < 8:
                revert with 0, 17
            _862 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] + 93]
            var49003 = mem[64] + 36
            mem[mem[64]] = 4
            mem[64] = floor32(mem[64] + 67)
            idx = 0
            s = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _862 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _862 + 32]) >> 248 > 57:
                    if idx >= 4:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s and 10 > -1 / s:
                    revert with 0, 17
                if idx >= 4:
                    revert with 0, 50
                if uint8(mem[idx + _862 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _862 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _862 + 32]) >> 248) - 48
                continue 
            mem[64] = ceil32(var49003) + 128
            mem[ceil32(var49003)] = 0
            mem[ceil32(var49003) + 32] = 0
            mem[ceil32(var49003) + 64] = 0
            mem[ceil32(var49003) + 96] = 0
            mem[64] = ceil32(var49003) + 256
            mem[ceil32(var49003) + 128] = 0
            mem[ceil32(var49003) + 160] = 0
            mem[ceil32(var49003) + 192] = 0
            mem[ceil32(var49003) + 224] = 0
            idx = 0
            while idx <= 5:
                if idx >= stor202.length:
                    revert with 0, 50
                mem[0] = 202
                _3330 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3330] = stor202[idx].field_0
                mem[_3330 + 32] = stor202[idx].field_256
                mem[_3330 + 64] = stor202[idx].field_512
                if stor202[idx].field_560 > 5:
                    revert with 0, 33
                mem[_3330 + 96] = stor202[idx].field_560
                if s < stor202[idx].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if s > stor202[idx].field_256:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
                staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                        gas gas_remaining wei
                       args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3366 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3374 = mem[_3366]
                require mem[_3366] <= test266151307()
                require _3366 + return_data.size > _3366 + mem[_3366] + 31
                _3378 = mem[_3366 + mem[_3366]]
                if mem[_3366 + mem[_3366]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_3366 + mem[_3366]])) + 1 < 0 or _3366 + ceil32(return_data.size) + ceil32(ceil32(mem[_3366 + mem[_3366]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3366 + ceil32(return_data.size) + ceil32(ceil32(mem[_3366 + mem[_3366]])) + 1
                mem[_3366 + ceil32(return_data.size)] = _3378
                require _3374 + _3378 + 32 <= return_data.size
                idx = 0
                while idx < _3378:
                    mem[idx + _3366 + ceil32(return_data.size) + 32] = mem[idx + _3366 + _3374 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3378) <= _3378:
                    if _3378 < 8:
                        revert with 0, 17
                    _4862 = mem[64]
                    s = _3366 + ceil32(return_data.size) + mem[_3366 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < mem[64] + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[mem[64]] = 4
                    mem[64] = floor32(mem[64] + 67)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4862 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4862 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4862 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4862 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4862 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9138 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9138] = stor202[s].field_0
                        mem[_9138 + 32] = stor202[s].field_256
                        mem[_9138 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9138 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3330 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9875 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9875] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10541 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10541] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11283 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11283] == bool(mem[_11283])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11315 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11315] == bool(mem[_11315])
                        else:
                            stor204[stor207].field_144 = mem[_3330 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9876 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9876] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10542] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11284 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11284] == bool(mem[_11284])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11316 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11316] == bool(mem[_11316])
                    if mem[_3330 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9523] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9843] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10639] == bool(mem[_10639])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10675 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10675] == bool(mem[_10675])
                    else:
                        stor204[stor207].field_144 = mem[_3330 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9524] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9844] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10640 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10640] == bool(mem[_10640])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10676 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10676] == bool(mem[_10676])
                else:
                    mem[_3366 + ceil32(return_data.size) + _3378 + 32] = 0
                    if _3378 < 8:
                        revert with 0, 17
                    _4870 = mem[64]
                    s = _3366 + ceil32(return_data.size) + mem[_3366 + ceil32(return_data.size)] - 4
                    idx = mem[64] + 4
                    while idx < _4870 + 8:
                        mem[idx] = mem[s]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    mem[_4870] = 4
                    mem[64] = ceil32(idx)
                    s = 0
                    t = 0
                    while s < 4:
                        if s >= 4:
                            revert with 0, 50
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4870 + 32]) >> 248 < 48:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if uint8(mem[s + _4870 + 32]) >> 248 > 57:
                            if s >= 4:
                                revert with 0, 50
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if t and 10 > -1 / t:
                            revert with 0, 17
                        if s >= 4:
                            revert with 0, 50
                        if uint8(mem[s + _4870 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * t > !((uint8(mem[s + _4870 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = (10 * t) + (uint8(mem[s + _4870 + 32]) >> 248) - 48
                        continue 
                    mem[64] = ceil32(idx) + 128
                    mem[ceil32(idx)] = 0
                    mem[ceil32(idx) + 32] = 0
                    mem[ceil32(idx) + 64] = 0
                    mem[ceil32(idx) + 96] = 0
                    mem[64] = ceil32(idx) + 256
                    mem[ceil32(idx) + 128] = 0
                    mem[ceil32(idx) + 160] = 0
                    mem[ceil32(idx) + 192] = 0
                    mem[ceil32(idx) + 224] = 0
                    s = 0
                    while s <= 5:
                        if s >= stor202.length:
                            revert with 0, 50
                        mem[0] = 202
                        _9142 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_9142] = stor202[s].field_0
                        mem[_9142 + 32] = stor202[s].field_256
                        mem[_9142 + 64] = stor202[s].field_512
                        if stor202[s].field_560 > 5:
                            revert with 0, 33
                        mem[_9142 + 96] = stor202[s].field_560
                        if t < stor202[s].field_0:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if t > stor202[s].field_256:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if mem[_3330 + 32] <= stor202[s].field_256:
                            stor204[stor207].field_144 = stor202[s].field_256
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9877] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10549] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11285 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11285] == bool(mem[_11285])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11317 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11317] == bool(mem[_11317])
                        else:
                            stor204[stor207].field_144 = mem[_3330 + 58 len 6]
                            if stor204[stor207].field_96 > test266151307():
                                revert with 0, 17
                            require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(stor208)
                            staticcall stor208.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9878 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9878] >= stor204[stor207].field_256
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            require ext_code.size(stor208)
                            staticcall stor208.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10550 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10550] >= stor204[stor207].field_256
                            require not stor206[stor207][address(msg.sender)]
                            stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                            stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                            stor206[stor207][address(msg.sender)] = 1
                            if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11286 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11286] == bool(mem[_11286])
                            else:
                                stor204[stor207].field_48 = block.timestamp % 281474976710656
                                mem[0] = sub_af5537fa
                                mem[32] = 204
                                stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = stor204[stor207].field_256
                                require ext_code.size(stor208)
                                call stor208.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, stor204[stor207].field_256
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11318 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11318] == bool(mem[_11318])
                    if mem[_3330 + 32] <= mem[ceil32(idx) + 160]:
                        stor204[stor207].field_144 = mem[ceil32(idx) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9525] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9845] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10643] == bool(mem[_10643])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10677 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10677] == bool(mem[_10677])
                    else:
                        stor204[stor207].field_144 = mem[_3330 + 58 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9526] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9846] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10644] == bool(mem[_10644])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10678 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10678] == bool(mem[_10678])
            mem[mem[64]] = 0xc3ec6eb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4
            require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
            staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0xc3ec6eb with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3345 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3350 = mem[_3345]
            require mem[_3345] <= test266151307()
            require _3345 + return_data.size > _3345 + mem[_3345] + 31
            _3357 = mem[_3345 + mem[_3345]]
            if mem[_3345 + mem[_3345]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_3345 + mem[_3345]])) + 1 < 0 or _3345 + ceil32(return_data.size) + ceil32(ceil32(mem[_3345 + mem[_3345]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _3345 + ceil32(return_data.size) + ceil32(ceil32(mem[_3345 + mem[_3345]])) + 1
            mem[_3345 + ceil32(return_data.size)] = _3357
            require _3350 + _3357 + 32 <= return_data.size
            mem[_3345 + ceil32(return_data.size) + 32 len ceil32(_3357)] = mem[_3345 + _3350 + 32 len ceil32(_3357)]
            if ceil32(_3357) <= _3357:
                if _3357 < 8:
                    revert with 0, 17
                _4861 = mem[64]
                mem[mem[64] + 4] = mem[_3345 + ceil32(return_data.size) + _3357 - 4]
                var94003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4861 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4861 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4861 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4861 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4861 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var94003) + 128
                mem[ceil32(var94003)] = 0
                mem[ceil32(var94003) + 32] = 0
                mem[ceil32(var94003) + 64] = 0
                mem[ceil32(var94003) + 96] = 0
                mem[64] = ceil32(var94003) + 256
                mem[ceil32(var94003) + 128] = 0
                mem[ceil32(var94003) + 160] = 0
                mem[ceil32(var94003) + 192] = 0
                mem[ceil32(var94003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9130 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9130] = stor202[idx].field_0
                    mem[_9130 + 32] = stor202[idx].field_256
                    mem[_9130 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9130 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var49003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9871 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9871] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10525] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11279] == bool(mem[_11279])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11311] == bool(mem[_11311])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9872 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9872] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10526] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11280] == bool(mem[_11280])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11312] == bool(mem[_11312])
                if mem[ceil32(var49003) + 160] <= mem[ceil32(var94003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var94003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9519] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9839] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10631] == bool(mem[_10631])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10671] == bool(mem[_10671])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9520] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9840] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10632] == bool(mem[_10632])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10672] == bool(mem[_10672])
            else:
                mem[_3345 + ceil32(return_data.size) + _3357 + 32] = 0
                if _3357 < 8:
                    revert with 0, 17
                _4869 = mem[64]
                mem[mem[64] + 4] = mem[_3345 + ceil32(return_data.size) + _3357 - 4]
                var95003 = mem[64] + 36
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                s = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4869 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if uint8(mem[idx + _4869 + 32]) >> 248 > 57:
                        if idx >= 4:
                            revert with 0, 50
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s and 10 > -1 / s:
                        revert with 0, 17
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _4869 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * s > !((uint8(mem[idx + _4869 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (10 * s) + (uint8(mem[idx + _4869 + 32]) >> 248) - 48
                    continue 
                mem[64] = ceil32(var95003) + 128
                mem[ceil32(var95003)] = 0
                mem[ceil32(var95003) + 32] = 0
                mem[ceil32(var95003) + 64] = 0
                mem[ceil32(var95003) + 96] = 0
                mem[64] = ceil32(var95003) + 256
                mem[ceil32(var95003) + 128] = 0
                mem[ceil32(var95003) + 160] = 0
                mem[ceil32(var95003) + 192] = 0
                mem[ceil32(var95003) + 224] = 0
                idx = 0
                while idx <= 5:
                    if idx >= stor202.length:
                        revert with 0, 50
                    mem[0] = 202
                    _9134 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9134] = stor202[idx].field_0
                    mem[_9134 + 32] = stor202[idx].field_256
                    mem[_9134 + 64] = stor202[idx].field_512
                    if stor202[idx].field_560 > 5:
                        revert with 0, 33
                    mem[_9134 + 96] = stor202[idx].field_560
                    if s < stor202[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if s > stor202[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[ceil32(var49003) + 160] <= stor202[idx].field_256:
                        stor204[stor207].field_144 = stor202[idx].field_256
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9873] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10533] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11281] == bool(mem[_11281])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11313] == bool(mem[_11313])
                    else:
                        stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                        if stor204[stor207].field_96 > test266151307():
                            revert with 0, 17
                        require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(stor208)
                        staticcall stor208.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9874] >= stor204[stor207].field_256
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor208)
                        staticcall stor208.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10534] >= stor204[stor207].field_256
                        require not stor206[stor207][address(msg.sender)]
                        stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                        stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                        stor206[stor207][address(msg.sender)] = 1
                        if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11282] == bool(mem[_11282])
                        else:
                            stor204[stor207].field_48 = block.timestamp % 281474976710656
                            mem[0] = sub_af5537fa
                            mem[32] = 204
                            stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = stor204[stor207].field_256
                            require ext_code.size(stor208)
                            call stor208.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, stor204[stor207].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11314] == bool(mem[_11314])
                if mem[ceil32(var49003) + 160] <= mem[ceil32(var95003) + 160]:
                    stor204[stor207].field_144 = mem[ceil32(var95003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9521] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9841] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10635] == bool(mem[_10635])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10673] == bool(mem[_10673])
                else:
                    stor204[stor207].field_144 = mem[ceil32(var49003) + 186 len 6]
                    if stor204[stor207].field_96 > test266151307():
                        revert with 0, 17
                    require stor204[stor207].field_96 + 1 % 281474976710656 <= stor204[stor207].field_0
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(stor208)
                    staticcall stor208.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9522] >= stor204[stor207].field_256
                    mem[0] = sub_af5537fa
                    mem[32] = 204
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor208)
                    staticcall stor208.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9842] >= stor204[stor207].field_256
                    require not stor206[stor207][address(msg.sender)]
                    stor204[stor207][2][stor204[stor207].field_96 + 1 << 208].field_0 = msg.sender
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][0].field_0 = arg3
                    stor204[stor207][3][stor204[stor207].field_96 + 1 << 208][1].field_0 = arg4
                    stor206[stor207][address(msg.sender)] = 1
                    if stor204[stor207].field_0 != stor204[stor207].field_96 + 1 % 281474976710656:
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10636] == bool(mem[_10636])
                    else:
                        stor204[stor207].field_48 = block.timestamp % 281474976710656
                        mem[0] = sub_af5537fa
                        mem[32] = 204
                        stor204[stor207].field_96 = stor204[stor207].field_96 + 1 % 281474976710656
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = stor204[stor207].field_256
                        require ext_code.size(stor208)
                        call stor208.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, stor204[stor207].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10674] == bool(mem[_10674])
}



}
