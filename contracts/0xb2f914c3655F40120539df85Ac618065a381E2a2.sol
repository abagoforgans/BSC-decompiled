contract main {




// =====================  Runtime code  =====================


#
#  - sub_0632c859(?)
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
uint8 storB0A3; offset 48
uint64 storB0A3; offset 56
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

function sub_95dcd8ce(?) {
    require msg.sender == stor214
    uint8(storB0A3.field_48) = 1
    storB0A3.field_56 % 1099511627776 = 0
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
                return stor211[arg1].field_512, 
                       stor211[arg1].field_0,
                       stor211[arg1].field_0,
                       stor211[arg1].field_256,
                       stor202[idx].field_512,
                       arg1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return stor211[arg1].field_512, stor211[arg1].field_0, stor211[arg1].field_0, stor211[arg1].field_256, mem[288] << 208, arg1
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
    stor211[arg1].field_48 = stor211[arg1].field_48 + 1 % 281474976710656
    require ext_code.size(stor208)
    call stor208.0x23b872dd with:
         gas gas_remaining wei
        args address(arg4), 0x99ce4264e571cabde2cfaac5f2d7c5ee1ab7836c, stor211[arg1].field_256
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

function sub_61331002(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg1.length < 12:
        revert with 0, 'Gen length is not correctly'
    if arg1.length < 2:
        revert with 0, 17
    if arg1.length < 4:
        revert with 0, 17
    if arg1.length < 8:
        revert with 0, 17
    if arg1.length < 12:
        revert with 0, 17
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
           Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 29) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 29) + 256,
           0,
           4,
           Mask(32, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 27) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 27) + 256,
           0,
           2,
           Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 19) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 19) + 256,
           0,
           2,
           Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 21) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 21) + 256,
           0
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
    mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 2] = mem[arg1.length + 94 len ceil32(ceil32(arg1.length)) + -arg1.length + 3], Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 29, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 29) + 256, 0) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 29) + 256
    mem[floor32(ceil32(ceil32(arg1.length)) + 322)] = 2
    mem[64] = floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)
    if arg1.length < 8:
        revert with 0, 17
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 4] = mem[arg1.length + 92 len ceil32(ceil32(arg1.length)) + -arg1.length + 5], Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 27, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 27) + 256, 0) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 27) + 256
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)] = 4
    mem[64] = floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)
    if arg1.length < 12:
        revert with 0, 17
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 2] = mem[arg1.length + 86 len ceil32(ceil32(arg1.length)) + -arg1.length + 11], Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 21, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 21) + 256, 0) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 21) + 256
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)] = 2
    mem[64] = floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)
    if arg1.length < 14:
        revert with 0, 17
    mem[floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 2] = mem[arg1.length + 84 len ceil32(ceil32(arg1.length)) + -arg1.length + 13], Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 19, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 19) + 256, 0) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 19) + 256
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
            _439 = mem[64]
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
                if uint8(mem[idx + _439 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _439 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _439 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _439 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _439 + 32]) >> 248) - 48
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
            _1299 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1307 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1307
            require _1299 + _1307 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1307)] = mem[ceil32(var39003) + _1299 + 32 len ceil32(_1307)]
            if ceil32(_1307) <= _1307:
                if _1307 < 8:
                    revert with 0, 17
                _1663 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1307 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1663 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1663 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1663 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1663 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1663 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1307 + 32] = 0
                if _1307 < 8:
                    revert with 0, 17
                _1667 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1307 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1667 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1667 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1667 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1667 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1667 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + _15 + 128] = 0
            if _15 < 8:
                revert with 0, 17
            _441 = mem[64]
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
                if uint8(mem[idx + _441 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _441 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _441 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _441 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _441 + 32]) >> 248) - 48
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
            _1300 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1309 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1309
            require _1300 + _1309 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1309)] = mem[ceil32(var40003) + _1300 + 32 len ceil32(_1309)]
            if ceil32(_1309) <= _1309:
                if _1309 < 8:
                    revert with 0, 17
                _1664 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1309 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1664 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1664 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1664 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1664 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1664 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1309 + 32] = 0
                if _1309 < 8:
                    revert with 0, 17
                _1668 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1309 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1668 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1668 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1668 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1668 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1668 + 32]) >> 248) - 48
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
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = _16
        require _14 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len ceil32(_16)] = mem[ceil32(return_data.size) + _14 + 129 len ceil32(_16)]
        if ceil32(_16) <= _16:
            if _16 < 8:
                revert with 0, 17
            _440 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 93]
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
                if uint8(mem[idx + _440 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _440 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _440 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _440 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _440 + 32]) >> 248) - 48
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
            _1301 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1311 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1311
            require _1301 + _1311 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1311)] = mem[ceil32(var39003) + _1301 + 32 len ceil32(_1311)]
            if ceil32(_1311) <= _1311:
                if _1311 < 8:
                    revert with 0, 17
                _1665 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1311 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1665 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1665 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1665 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1665 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1665 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1311 + 32] = 0
                if _1311 < 8:
                    revert with 0, 17
                _1669 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1311 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1669 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1669 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1669 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1669 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1669 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 129] = 0
            if _16 < 8:
                revert with 0, 17
            _442 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 93]
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
                if uint8(mem[idx + _442 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _442 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _442 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _442 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _442 + 32]) >> 248) - 48
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
            _1302 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1313 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1313
            require _1302 + _1313 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1313)] = mem[ceil32(var40003) + _1302 + 32 len ceil32(_1313)]
            if ceil32(_1313) <= _1313:
                if _1313 < 8:
                    revert with 0, 17
                _1666 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1313 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1666 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1666 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1666 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1666 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1666 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1313 + 32] = 0
                if _1313 < 8:
                    revert with 0, 17
                _1670 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1313 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _1670 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _1670 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _1670 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _1670 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _1670 + 32]) >> 248) - 48
                    continue 
    require s <= stor211[arg1].field_96
    require t <= stor211[arg1].field_96
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
    stor211[arg1].field_48 = stor211[arg1].field_48 + 1 % 281474976710656
    require ext_code.size(stor208)
    call stor208.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x99ce4264e571cabde2cfaac5f2d7c5ee1ab7836c, stor211[arg1].field_256
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
            _559 = mem[64]
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
                if uint8(mem[idx + _559 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _559 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _559 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _559 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _559 + 32]) >> 248) - 48
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
            _1659 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1667 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1667
            require _1659 + _1667 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1667)] = mem[ceil32(var39003) + _1659 + 32 len ceil32(_1667)]
            if ceil32(_1667) <= _1667:
                if _1667 < 8:
                    revert with 0, 17
                _2143 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1667 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2143 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2143 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2143 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2143 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2143 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1667 + 32] = 0
                if _1667 < 8:
                    revert with 0, 17
                _2147 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1667 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2147 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2147 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2147 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2147 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2147 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + _15 + 128] = 0
            if _15 < 8:
                revert with 0, 17
            _561 = mem[64]
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
                if uint8(mem[idx + _561 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _561 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _561 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _561 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _561 + 32]) >> 248) - 48
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
            _1660 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1669 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1669
            require _1660 + _1669 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1669)] = mem[ceil32(var40003) + _1660 + 32 len ceil32(_1669)]
            if ceil32(_1669) <= _1669:
                if _1669 < 8:
                    revert with 0, 17
                _2144 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1669 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2144 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2144 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2144 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2144 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2144 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1669 + 32] = 0
                if _1669 < 8:
                    revert with 0, 17
                _2148 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1669 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2148 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2148 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2148 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2148 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2148 + 32]) >> 248) - 48
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
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = _16
        require _14 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len ceil32(_16)] = mem[ceil32(return_data.size) + _14 + 129 len ceil32(_16)]
        if ceil32(_16) <= _16:
            if _16 < 8:
                revert with 0, 17
            _560 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 93]
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
                if uint8(mem[idx + _560 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _560 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _560 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _560 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _560 + 32]) >> 248) - 48
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
            _1661 = mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var39003) + return_data.size > ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1671 = mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var39003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var39003) + mem[ceil32(var39003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var39003) + ceil32(return_data.size)] = _1671
            require _1661 + _1671 + 32 <= return_data.size
            mem[ceil32(var39003) + ceil32(return_data.size) + 32 len ceil32(_1671)] = mem[ceil32(var39003) + _1661 + 32 len ceil32(_1671)]
            if ceil32(_1671) <= _1671:
                if _1671 < 8:
                    revert with 0, 17
                _2145 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1671 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2145 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2145 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2145 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2145 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2145 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var39003) + ceil32(return_data.size) + _1671 + 32] = 0
                if _1671 < 8:
                    revert with 0, 17
                _2149 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var39003) + ceil32(return_data.size) + _1671 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2149 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2149 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2149 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2149 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2149 + 32]) >> 248) - 48
                    continue 
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 129] = 0
            if _16 < 8:
                revert with 0, 17
            _562 = mem[64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _16 + 93]
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
                if uint8(mem[idx + _562 + 32]) >> 248 < 48:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if uint8(mem[idx + _562 + 32]) >> 248 > 57:
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
                if uint8(mem[idx + _562 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * s > !((uint8(mem[idx + _562 + 32]) >> 248) - 48):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (10 * s) + (uint8(mem[idx + _562 + 32]) >> 248) - 48
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
            _1662 = mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(var40003) + return_data.size > ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32 + 31
            _1673 = mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32]
            if mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 < 0 or ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(var40003) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(var40003) + mem[ceil32(var40003) len 4], Mask(224, 32, arg3) >> 32])) + 1
            mem[ceil32(var40003) + ceil32(return_data.size)] = _1673
            require _1662 + _1673 + 32 <= return_data.size
            mem[ceil32(var40003) + ceil32(return_data.size) + 32 len ceil32(_1673)] = mem[ceil32(var40003) + _1662 + 32 len ceil32(_1673)]
            if ceil32(_1673) <= _1673:
                if _1673 < 8:
                    revert with 0, 17
                _2146 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1673 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2146 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2146 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2146 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2146 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2146 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(var40003) + ceil32(return_data.size) + _1673 + 32] = 0
                if _1673 < 8:
                    revert with 0, 17
                _2150 = mem[64]
                mem[mem[64] + 4] = mem[ceil32(var40003) + ceil32(return_data.size) + _1673 - 4]
                mem[mem[64]] = 4
                mem[64] = floor32(mem[64] + 67)
                idx = 0
                t = 0
                while idx < 4:
                    if idx >= 4:
                        revert with 0, 50
                    if idx >= 4:
                        revert with 0, 50
                    if uint8(mem[idx + _2150 + 32]) >> 248 < 48:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if uint8(mem[idx + _2150 + 32]) >> 248 > 57:
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
                    if uint8(mem[idx + _2150 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * t > !((uint8(mem[idx + _2150 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = (10 * t) + (uint8(mem[idx + _2150 + 32]) >> 248) - 48
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
    require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
    staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
    staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0x6352211e with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == msg.sender
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

function sub_0751464c(?) {
    require calldata.size - 4 >= 32
    if not stor204[arg1].field_48:
        revert with 0, 'X'
    if 60 > -stor204[arg1].field_48 + test266151307():
        revert with 0, 17
    if block.timestamp < stor204[arg1].field_48 + 60 % 281474976710656:
        revert with 0, 'Y'
    mem[0] = arg1
    mem[32] = 204
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
                _2037 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2048 = mem[_2037]
                require mem[_2037] <= test266151307()
                require _2037 + return_data.size > _2037 + mem[_2037] + 31
                _2059 = mem[_2037 + mem[_2037]]
                if mem[_2037 + mem[_2037]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2037 + mem[_2037]])) + 1 < 0 or _2037 + ceil32(return_data.size) + ceil32(ceil32(mem[_2037 + mem[_2037]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2037 + ceil32(return_data.size) + ceil32(ceil32(mem[_2037 + mem[_2037]])) + 1
                mem[_2037 + ceil32(return_data.size)] = _2059
                require _2048 + _2059 + 32 <= return_data.size
                t = 0
                while t < _2059:
                    mem[t + _2037 + ceil32(return_data.size) + 32] = mem[t + _2037 + _2048 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2059) <= _2059:
                    if _2059 < 8:
                        revert with 0, 17
                    _2571 = mem[64]
                    u = _2037 + ceil32(return_data.size) + mem[_2037 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _2571 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_2571] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _2571 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _2571 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _2571 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _2571 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _2571 + 32]) >> 248) - 48
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
                    _3595 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _3611 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _3611
                    require _3595 + _3611 + 32 <= return_data.size
                    u = 0
                    while u < _3611:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3595 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_3611) <= _3611:
                        if _3611 < 8:
                            revert with 0, 17
                        _4003 = mem[64]
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
                            if uint8(mem[t + _4003 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4003 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4003 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4003 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4003 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _3611 + 32] = 0
                        if _3611 < 8:
                            revert with 0, 17
                        _4011 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4011 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4011] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4011 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4011 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4011 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4011 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4011 + 32]) >> 248) - 48
                            continue 
                else:
                    mem[_2037 + ceil32(return_data.size) + _2059 + 32] = 0
                    if _2059 < 8:
                        revert with 0, 17
                    _2575 = mem[64]
                    u = _2037 + ceil32(return_data.size) + mem[_2037 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _2575 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_2575] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _2575 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _2575 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _2575 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _2575 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _2575 + 32]) >> 248) - 48
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
                    _3596 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _3613 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _3613
                    require _3596 + _3613 + 32 <= return_data.size
                    u = 0
                    while u < _3613:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3596 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_3613) <= _3613:
                        if _3613 < 8:
                            revert with 0, 17
                        _4004 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4004 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4004] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4004 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4004 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4004 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4004 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4004 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _3613 + 32] = 0
                        if _3613 < 8:
                            revert with 0, 17
                        _4012 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4012 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4012] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4012 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4012 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4012 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4012 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4012 + 32]) >> 248) - 48
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
            _2019 = mem[64]
            mem[mem[64]] = 64
            _2027 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _2543 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_2019 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _2019 + (32 * _2027) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _2543:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _2019 + (32 * _2027) + (32 * _2543) + -mem[64] + 128
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
            _2040 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2050 = mem[_2040]
            require mem[_2040] <= test266151307()
            require _2040 + return_data.size > _2040 + mem[_2040] + 31
            _2060 = mem[_2040 + mem[_2040]]
            if mem[_2040 + mem[_2040]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2040 + mem[_2040]])) + 1 < 0 or _2040 + ceil32(return_data.size) + ceil32(ceil32(mem[_2040 + mem[_2040]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2040 + ceil32(return_data.size) + ceil32(ceil32(mem[_2040 + mem[_2040]])) + 1
            mem[_2040 + ceil32(return_data.size)] = _2060
            require _2050 + _2060 + 32 <= return_data.size
            t = 0
            while t < _2060:
                mem[t + _2040 + ceil32(return_data.size) + 32] = mem[t + _2040 + _2050 + 32]
                t = t + 32
                continue 
            if ceil32(_2060) <= _2060:
                if _2060 < 8:
                    revert with 0, 17
                _2572 = mem[64]
                u = _2040 + ceil32(return_data.size) + mem[_2040 + ceil32(return_data.size)] - 4
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
                    if uint8(mem[u + _2572 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _2572 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _2572 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _2572 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _2572 + 32]) >> 248) - 48
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
                _3597 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _3615 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _3615
                require _3597 + _3615 + 32 <= return_data.size
                u = 0
                while u < _3615:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3597 + 32]
                    u = u + 32
                    continue 
                if ceil32(_3615) <= _3615:
                    if _3615 < 8:
                        revert with 0, 17
                    _4005 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4005 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4005] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4005 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4005 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4005 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4005 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4005 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _3615 + 32] = 0
                    if _3615 < 8:
                        revert with 0, 17
                    _4013 = mem[64]
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
                        if uint8(mem[t + _4013 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4013 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4013 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4013 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4013 + 32]) >> 248) - 48
                        continue 
            else:
                mem[_2040 + ceil32(return_data.size) + _2060 + 32] = 0
                if _2060 < 8:
                    revert with 0, 17
                _2576 = mem[64]
                u = _2040 + ceil32(return_data.size) + mem[_2040 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < _2576 + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_2576] = 4
                mem[64] = ceil32(t)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _2576 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _2576 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _2576 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _2576 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _2576 + 32]) >> 248) - 48
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
                _3598 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _3617 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _3617
                require _3598 + _3617 + 32 <= return_data.size
                u = 0
                while u < _3617:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3598 + 32]
                    u = u + 32
                    continue 
                if ceil32(_3617) <= _3617:
                    if _3617 < 8:
                        revert with 0, 17
                    _4006 = mem[64]
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
                        if uint8(mem[t + _4006 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4006 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4006 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4006 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4006 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _3617 + 32] = 0
                    if _3617 < 8:
                        revert with 0, 17
                    _4014 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4014 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4014] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4014 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4014 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4014 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4014 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4014 + 32]) >> 248) - 48
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
        _2021 = mem[64]
        mem[mem[64]] = 64
        _2029 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _2546 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_2021 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _2021 + (32 * _2029) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _2546:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _2021 + (32 * _2029) + (32 * _2546) + -mem[64] + 128
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
            _2043 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2052 = mem[_2043]
            require mem[_2043] <= test266151307()
            require _2043 + return_data.size > _2043 + mem[_2043] + 31
            _2061 = mem[_2043 + mem[_2043]]
            if mem[_2043 + mem[_2043]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2043 + mem[_2043]])) + 1 < 0 or _2043 + ceil32(return_data.size) + ceil32(ceil32(mem[_2043 + mem[_2043]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2043 + ceil32(return_data.size) + ceil32(ceil32(mem[_2043 + mem[_2043]])) + 1
            mem[_2043 + ceil32(return_data.size)] = _2061
            require _2052 + _2061 + 32 <= return_data.size
            t = 0
            while t < _2061:
                mem[t + _2043 + ceil32(return_data.size) + 32] = mem[t + _2043 + _2052 + 32]
                t = t + 32
                continue 
            if ceil32(_2061) <= _2061:
                if _2061 < 8:
                    revert with 0, 17
                _2573 = mem[64]
                u = _2043 + ceil32(return_data.size) + mem[_2043 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < _2573 + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_2573] = 4
                mem[64] = ceil32(t)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _2573 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _2573 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _2573 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _2573 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _2573 + 32]) >> 248) - 48
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
                _3599 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _3619 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _3619
                require _3599 + _3619 + 32 <= return_data.size
                u = 0
                while u < _3619:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3599 + 32]
                    u = u + 32
                    continue 
                if ceil32(_3619) <= _3619:
                    if _3619 < 8:
                        revert with 0, 17
                    _4007 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4007 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4007] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4007 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4007 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4007 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4007 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4007 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _3619 + 32] = 0
                    if _3619 < 8:
                        revert with 0, 17
                    _4015 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4015 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4015] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4015 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4015 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4015 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4015 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4015 + 32]) >> 248) - 48
                        continue 
            else:
                mem[_2043 + ceil32(return_data.size) + _2061 + 32] = 0
                if _2061 < 8:
                    revert with 0, 17
                _2577 = mem[64]
                u = _2043 + ceil32(return_data.size) + mem[_2043 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < _2577 + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_2577] = 4
                mem[64] = ceil32(t)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _2577 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _2577 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _2577 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _2577 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _2577 + 32]) >> 248) - 48
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
                _3600 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _3621 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _3621
                require _3600 + _3621 + 32 <= return_data.size
                u = 0
                while u < _3621:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3600 + 32]
                    u = u + 32
                    continue 
                if ceil32(_3621) <= _3621:
                    if _3621 < 8:
                        revert with 0, 17
                    _4008 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4008 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4008] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4008 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4008 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4008 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4008 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4008 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _3621 + 32] = 0
                    if _3621 < 8:
                        revert with 0, 17
                    _4016 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4016 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4016] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4016 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4016 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4016 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4016 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4016 + 32]) >> 248) - 48
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
        _2023 = mem[64]
        mem[mem[64]] = 64
        _2031 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _2549 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_2023 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _2023 + (32 * _2031) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _2549:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _2023 + (32 * _2031) + (32 * _2549) + -mem[64] + 128
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
        _2046 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2054 = mem[_2046]
        require mem[_2046] <= test266151307()
        require _2046 + return_data.size > _2046 + mem[_2046] + 31
        _2062 = mem[_2046 + mem[_2046]]
        if mem[_2046 + mem[_2046]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_2046 + mem[_2046]])) + 1 < 0 or _2046 + ceil32(return_data.size) + ceil32(ceil32(mem[_2046 + mem[_2046]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2046 + ceil32(return_data.size) + ceil32(ceil32(mem[_2046 + mem[_2046]])) + 1
        mem[_2046 + ceil32(return_data.size)] = _2062
        require _2054 + _2062 + 32 <= return_data.size
        t = 0
        while t < _2062:
            mem[t + _2046 + ceil32(return_data.size) + 32] = mem[t + _2046 + _2054 + 32]
            t = t + 32
            continue 
        if ceil32(_2062) <= _2062:
            if _2062 < 8:
                revert with 0, 17
            _2574 = mem[64]
            u = _2046 + ceil32(return_data.size) + mem[_2046 + ceil32(return_data.size)] - 4
            t = mem[64] + 4
            while t < _2574 + 8:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_2574] = 4
            mem[64] = ceil32(t)
            u = 0
            v = 0
            while u < 4:
                if u >= 4:
                    revert with 0, 50
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _2574 + 32]) >> 248 < 48:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if uint8(mem[u + _2574 + 32]) >> 248 > 57:
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
                if uint8(mem[u + _2574 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * v > !((uint8(mem[u + _2574 + 32]) >> 248) - 48):
                    revert with 0, 17
                if u == -1:
                    revert with 0, 17
                u = u + 1
                v = (10 * v) + (uint8(mem[u + _2574 + 32]) >> 248) - 48
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
            _3601 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
            require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
            require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
            _3623 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
            if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
            mem[ceil32(t) + ceil32(return_data.size)] = _3623
            require _3601 + _3623 + 32 <= return_data.size
            u = 0
            while u < _3623:
                mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3601 + 32]
                u = u + 32
                continue 
            if ceil32(_3623) <= _3623:
                if _3623 < 8:
                    revert with 0, 17
                _4009 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4009 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4009] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4009 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4009 + 32]) >> 248 > 57:
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
                    if uint8(mem[t + _4009 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4009 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4009 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(t) + ceil32(return_data.size) + _3623 + 32] = 0
                if _3623 < 8:
                    revert with 0, 17
                _4017 = mem[64]
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
                    if uint8(mem[t + _4017 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4017 + 32]) >> 248 > 57:
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
                    if uint8(mem[t + _4017 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4017 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4017 + 32]) >> 248) - 48
                    continue 
        else:
            mem[_2046 + ceil32(return_data.size) + _2062 + 32] = 0
            if _2062 < 8:
                revert with 0, 17
            _2578 = mem[64]
            u = _2046 + ceil32(return_data.size) + mem[_2046 + ceil32(return_data.size)] - 4
            t = mem[64] + 4
            while t < _2578 + 8:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_2578] = 4
            mem[64] = ceil32(t)
            u = 0
            v = 0
            while u < 4:
                if u >= 4:
                    revert with 0, 50
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _2578 + 32]) >> 248 < 48:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if uint8(mem[u + _2578 + 32]) >> 248 > 57:
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
                if uint8(mem[u + _2578 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * v > !((uint8(mem[u + _2578 + 32]) >> 248) - 48):
                    revert with 0, 17
                if u == -1:
                    revert with 0, 17
                u = u + 1
                v = (10 * v) + (uint8(mem[u + _2578 + 32]) >> 248) - 48
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
            _3602 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
            require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
            require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
            _3625 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
            if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
            mem[ceil32(t) + ceil32(return_data.size)] = _3625
            require _3602 + _3625 + 32 <= return_data.size
            u = 0
            while u < _3625:
                mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _3602 + 32]
                u = u + 32
                continue 
            if ceil32(_3625) <= _3625:
                if _3625 < 8:
                    revert with 0, 17
                _4010 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4010 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4010] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4010 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4010 + 32]) >> 248 > 57:
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
                    if uint8(mem[t + _4010 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4010 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4010 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(t) + ceil32(return_data.size) + _3625 + 32] = 0
                if _3625 < 8:
                    revert with 0, 17
                _4018 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4018 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4018] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4018 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4018 + 32]) >> 248 > 57:
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
                    if uint8(mem[t + _4018 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4018 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4018 + 32]) >> 248) - 48
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
    _2025 = mem[64]
    mem[mem[64]] = 64
    _2033 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _2552 = mem[(32 * stor204[arg1].field_96) + 128]
    mem[_2025 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
    idx = 0
    s = _2025 + (32 * _2033) + 128
    t = (32 * stor204[arg1].field_96) + 160
    while idx < _2552:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _2025 + (32 * _2033) + (32 * _2552) + -mem[64] + 128
}

function getPlaces(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor204[arg1].field_48:
        revert with 0, 'X'
    if 60 > -stor204[arg1].field_48 + test266151307():
        revert with 0, 17
    if block.timestamp < stor204[arg1].field_48 + 60 % 281474976710656:
        revert with 0, 'Y'
    mem[0] = arg1
    mem[32] = 204
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
                _2367 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2371 = mem[_2367]
                require mem[_2367] <= test266151307()
                require _2367 + return_data.size > _2367 + mem[_2367] + 31
                _2375 = mem[_2367 + mem[_2367]]
                if mem[_2367 + mem[_2367]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2367 + mem[_2367]])) + 1 < 0 or _2367 + ceil32(return_data.size) + ceil32(ceil32(mem[_2367 + mem[_2367]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2367 + ceil32(return_data.size) + ceil32(ceil32(mem[_2367 + mem[_2367]])) + 1
                mem[_2367 + ceil32(return_data.size)] = _2375
                require _2371 + _2375 + 32 <= return_data.size
                t = 0
                while t < _2375:
                    mem[t + _2367 + ceil32(return_data.size) + 32] = mem[t + _2367 + _2371 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2375) <= _2375:
                    if _2375 < 8:
                        revert with 0, 17
                    _3001 = mem[64]
                    u = _2367 + ceil32(return_data.size) + mem[_2367 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3001 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3001] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3001 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3001 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3001 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3001 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3001 + 32]) >> 248) - 48
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
                    _4253 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4253
                    require _4217 + _4253 + 32 <= return_data.size
                    u = 0
                    while u < _4253:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4217 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4253) <= _4253:
                        if _4253 < 8:
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
                        mem[ceil32(t) + ceil32(return_data.size) + _4253 + 32] = 0
                        if _4253 < 8:
                            revert with 0, 17
                        _4772 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4772 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4772] = 4
                        mem[64] = ceil32(u)
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
                else:
                    mem[_2367 + ceil32(return_data.size) + _2375 + 32] = 0
                    if _2375 < 8:
                        revert with 0, 17
                    _3014 = mem[64]
                    u = _2367 + ceil32(return_data.size) + mem[_2367 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3014 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3014] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3014 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3014 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3014 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3014 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3014 + 32]) >> 248) - 48
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
                    _4218 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4255 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4255
                    require _4218 + _4255 + 32 <= return_data.size
                    u = 0
                    while u < _4255:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4218 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4255) <= _4255:
                        if _4255 < 8:
                            revert with 0, 17
                        _4755 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4755 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4755] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4755 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4755 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4755 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4755 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4755 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4255 + 32] = 0
                        if _4255 < 8:
                            revert with 0, 17
                        _4773 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4773 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4773] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4773 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4773 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4773 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4773 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4773 + 32]) >> 248) - 48
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
                _4659 = mem[64]
                mem[mem[64]] = 64
                _4667 = mem[var52004]
                mem[mem[64] + 64] = mem[var52004]
                mem[mem[64] + 96 len 32 * _4667] = mem[var52004 + 32 len 32 * _4667]
                mem[mem[64] + 32] = (32 * _4667) + 96
                _5143 = mem[var52003]
                mem[_4659 + (32 * _4667) + 96] = mem[var52003]
                idx = 0
                s = _4659 + (32 * _4667) + 128
                t = var52003 + 32
                while idx < _5143:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _4659 + (32 * _4667) + (32 * _5143) + -mem[64] + 128
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
                _6079 = mem[64]
                mem[mem[64]] = 64
                _6083 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _6131 = mem[(32 * stor204[arg1].field_96) + 128]
                mem[_6079 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
                idx = 0
                s = _6079 + (32 * _6083) + 128
                t = (32 * stor204[arg1].field_96) + 160
                while idx < _6131:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6079 + (32 * _6083) + (32 * _6131) + -mem[64] + 128
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
            _6107 = mem[64]
            mem[mem[64]] = 64
            _6111 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _6133 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_6107 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _6107 + (32 * _6111) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _6133:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _6107 + (32 * _6111) + (32 * _6133) + -mem[64] + 128
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
            _2368 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2372 = mem[_2368]
            require mem[_2368] <= test266151307()
            require _2368 + return_data.size > _2368 + mem[_2368] + 31
            _2376 = mem[_2368 + mem[_2368]]
            if mem[_2368 + mem[_2368]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2368 + mem[_2368]])) + 1 < 0 or _2368 + ceil32(return_data.size) + ceil32(ceil32(mem[_2368 + mem[_2368]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2368 + ceil32(return_data.size) + ceil32(ceil32(mem[_2368 + mem[_2368]])) + 1
            mem[_2368 + ceil32(return_data.size)] = _2376
            require _2372 + _2376 + 32 <= return_data.size
            t = 0
            while t < _2376:
                mem[t + _2368 + ceil32(return_data.size) + 32] = mem[t + _2368 + _2372 + 32]
                t = t + 32
                continue 
            if ceil32(_2376) <= _2376:
                if _2376 < 8:
                    revert with 0, 17
                _3004 = mem[64]
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
                    if uint8(mem[u + _3004 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3004 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _3004 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3004 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3004 + 32]) >> 248) - 48
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
                _4259 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4259
                require _4221 + _4259 + 32 <= return_data.size
                u = 0
                while u < _4259:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4221 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4259) <= _4259:
                    if _4259 < 8:
                        revert with 0, 17
                    _4759 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4759 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4759] = 4
                    mem[64] = ceil32(u)
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
                    mem[ceil32(t) + ceil32(return_data.size) + _4259 + 32] = 0
                    if _4259 < 8:
                        revert with 0, 17
                    _4775 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4775 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4775] = 4
                    mem[64] = ceil32(u)
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
            else:
                mem[_2368 + ceil32(return_data.size) + _2376 + 32] = 0
                if _2376 < 8:
                    revert with 0, 17
                _3018 = mem[64]
                u = _2368 + ceil32(return_data.size) + mem[_2368 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < _3018 + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_3018] = 4
                mem[64] = ceil32(t)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3018 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3018 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _3018 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3018 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3018 + 32]) >> 248) - 48
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
                _4222 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _4261 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4261
                require _4222 + _4261 + 32 <= return_data.size
                u = 0
                while u < _4261:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4222 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4261) <= _4261:
                    if _4261 < 8:
                        revert with 0, 17
                    _4760 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4760 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4760] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4760 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4760 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4760 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4760 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4760 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _4261 + 32] = 0
                    if _4261 < 8:
                        revert with 0, 17
                    _4776 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4776 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4776] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4776 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4776 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4776 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4776 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4776 + 32]) >> 248) - 48
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
        if var49001 < 1:
            revert with 0, 17
        if var53002 >= var53001:
            _4661 = mem[64]
            mem[mem[64]] = 64
            _4669 = mem[var53004]
            mem[mem[64] + 64] = mem[var53004]
            mem[mem[64] + 96 len 32 * _4669] = mem[var53004 + 32 len 32 * _4669]
            mem[mem[64] + 32] = (32 * _4669) + 96
            _5149 = mem[var53003]
            mem[_4661 + (32 * _4669) + 96] = mem[var53003]
            idx = 0
            s = _4661 + (32 * _4669) + 128
            t = var53003 + 32
            while idx < _5149:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _4661 + (32 * _4669) + (32 * _5149) + -mem[64] + 128
        if var46001 < mem[96]:
            if var57003 >= mem[96]:
                revert with 0, 50
            if var46001 >= mem[96]:
                revert with 0, 50
            if var46001 == -1:
                revert with 0, 17
            var46001 = var46001 + 1
            continue 
        if var57003 == var57003:
            if var57005 == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if var57005 + 1 < mem[96] - 1:
                var46001 = var57005 + 1
                continue 
            _6080 = mem[64]
            mem[mem[64]] = 64
            _6084 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _6135 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_6080 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _6080 + (32 * _6084) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _6135:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _6080 + (32 * _6084) + (32 * _6135) + -mem[64] + 128
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        mem[(32 * var57003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var57003) + (32 * stor204[arg1].field_96) + 172 len 20]
        if var57005 == -1:
            revert with 0, 17
        if mem[96] < 1:
            revert with 0, 17
        if var57005 + 1 < mem[96] - 1:
            var46001 = var57005 + 1
            continue 
        _6108 = mem[64]
        mem[mem[64]] = 64
        _6112 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _6137 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_6108 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _6108 + (32 * _6112) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _6137:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _6108 + (32 * _6112) + (32 * _6137) + -mem[64] + 128
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
            _2369 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2373 = mem[_2369]
            require mem[_2369] <= test266151307()
            require _2369 + return_data.size > _2369 + mem[_2369] + 31
            _2377 = mem[_2369 + mem[_2369]]
            if mem[_2369 + mem[_2369]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_2369 + mem[_2369]])) + 1 < 0 or _2369 + ceil32(return_data.size) + ceil32(ceil32(mem[_2369 + mem[_2369]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2369 + ceil32(return_data.size) + ceil32(ceil32(mem[_2369 + mem[_2369]])) + 1
            mem[_2369 + ceil32(return_data.size)] = _2377
            require _2373 + _2377 + 32 <= return_data.size
            t = 0
            while t < _2377:
                mem[t + _2369 + ceil32(return_data.size) + 32] = mem[t + _2369 + _2373 + 32]
                t = t + 32
                continue 
            if ceil32(_2377) <= _2377:
                if _2377 < 8:
                    revert with 0, 17
                _3007 = mem[64]
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
                    if uint8(mem[u + _3007 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3007 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _3007 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3007 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3007 + 32]) >> 248) - 48
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
                _4265 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4265
                require _4225 + _4265 + 32 <= return_data.size
                u = 0
                while u < _4265:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4225 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4265) <= _4265:
                    if _4265 < 8:
                        revert with 0, 17
                    _4764 = mem[64]
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
                    mem[ceil32(t) + ceil32(return_data.size) + _4265 + 32] = 0
                    if _4265 < 8:
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
            else:
                mem[_2369 + ceil32(return_data.size) + _2377 + 32] = 0
                if _2377 < 8:
                    revert with 0, 17
                _3022 = mem[64]
                u = _2369 + ceil32(return_data.size) + mem[_2369 + ceil32(return_data.size)] - 4
                t = mem[64] + 4
                while t < _3022 + 8:
                    mem[t] = mem[u]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_3022] = 4
                mem[64] = ceil32(t)
                u = 0
                v = 0
                while u < 4:
                    if u >= 4:
                        revert with 0, 50
                    if u >= 4:
                        revert with 0, 50
                    if uint8(mem[u + _3022 + 32]) >> 248 < 48:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = v
                        continue 
                    if uint8(mem[u + _3022 + 32]) >> 248 > 57:
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
                    if uint8(mem[u + _3022 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * v > !((uint8(mem[u + _3022 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = (10 * v) + (uint8(mem[u + _3022 + 32]) >> 248) - 48
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
                _4226 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                _4267 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                mem[ceil32(t) + ceil32(return_data.size)] = _4267
                require _4226 + _4267 + 32 <= return_data.size
                u = 0
                while u < _4267:
                    mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4226 + 32]
                    u = u + 32
                    continue 
                if ceil32(_4267) <= _4267:
                    if _4267 < 8:
                        revert with 0, 17
                    _4765 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4765 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4765] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4765 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4765 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4765 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4765 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4765 + 32]) >> 248) - 48
                        continue 
                else:
                    mem[ceil32(t) + ceil32(return_data.size) + _4267 + 32] = 0
                    if _4267 < 8:
                        revert with 0, 17
                    _4779 = mem[64]
                    w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                    u = mem[64] + 4
                    while u < _4779 + 8:
                        mem[u] = mem[w]
                        w = w + 32
                        u = u + 32
                        continue 
                    mem[_4779] = 4
                    mem[64] = ceil32(u)
                    t = 0
                    w = 0
                    while t < 4:
                        if t >= 4:
                            revert with 0, 50
                        if t >= 4:
                            revert with 0, 50
                        if uint8(mem[t + _4779 + 32]) >> 248 < 48:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = w
                            continue 
                        if uint8(mem[t + _4779 + 32]) >> 248 > 57:
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
                        if uint8(mem[t + _4779 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * w > !((uint8(mem[t + _4779 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = (10 * w) + (uint8(mem[t + _4779 + 32]) >> 248) - 48
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
        if var49001 < 1:
            revert with 0, 17
        if var53002 >= var53001:
            _4663 = mem[64]
            mem[mem[64]] = 64
            _4671 = mem[var53004]
            mem[mem[64] + 64] = mem[var53004]
            mem[mem[64] + 96 len 32 * _4671] = mem[var53004 + 32 len 32 * _4671]
            mem[mem[64] + 32] = (32 * _4671) + 96
            _5155 = mem[var53003]
            mem[_4663 + (32 * _4671) + 96] = mem[var53003]
            idx = 0
            s = _4663 + (32 * _4671) + 128
            t = var53003 + 32
            while idx < _5155:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _4663 + (32 * _4671) + (32 * _5155) + -mem[64] + 128
        if var46001 < mem[96]:
            if var57003 >= mem[96]:
                revert with 0, 50
            if var46001 >= mem[96]:
                revert with 0, 50
            if var46001 == -1:
                revert with 0, 17
            var46001 = var46001 + 1
            continue 
        if var57003 == var57003:
            if var57005 == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if var57005 + 1 < mem[96] - 1:
                var46001 = var57005 + 1
                continue 
            _6081 = mem[64]
            mem[mem[64]] = 64
            _6085 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _6139 = mem[(32 * stor204[arg1].field_96) + 128]
            mem[_6081 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
            idx = 0
            s = _6081 + (32 * _6085) + 128
            t = (32 * stor204[arg1].field_96) + 160
            while idx < _6139:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _6081 + (32 * _6085) + (32 * _6139) + -mem[64] + 128
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        if var57003 >= mem[96]:
            revert with 0, 50
        if var57003 >= mem[(32 * stor204[arg1].field_96) + 128]:
            revert with 0, 50
        mem[(32 * var57003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var57003) + (32 * stor204[arg1].field_96) + 172 len 20]
        if var57005 == -1:
            revert with 0, 17
        if mem[96] < 1:
            revert with 0, 17
        if var57005 + 1 < mem[96] - 1:
            var46001 = var57005 + 1
            continue 
        _6109 = mem[64]
        mem[mem[64]] = 64
        _6113 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _6141 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_6109 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _6109 + (32 * _6113) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _6141:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _6109 + (32 * _6113) + (32 * _6141) + -mem[64] + 128
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
        _2370 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2374 = mem[_2370]
        require mem[_2370] <= test266151307()
        require _2370 + return_data.size > _2370 + mem[_2370] + 31
        _2378 = mem[_2370 + mem[_2370]]
        if mem[_2370 + mem[_2370]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_2370 + mem[_2370]])) + 1 < 0 or _2370 + ceil32(return_data.size) + ceil32(ceil32(mem[_2370 + mem[_2370]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2370 + ceil32(return_data.size) + ceil32(ceil32(mem[_2370 + mem[_2370]])) + 1
        mem[_2370 + ceil32(return_data.size)] = _2378
        require _2374 + _2378 + 32 <= return_data.size
        t = 0
        while t < _2378:
            mem[t + _2370 + ceil32(return_data.size) + 32] = mem[t + _2370 + _2374 + 32]
            t = t + 32
            continue 
        if ceil32(_2378) <= _2378:
            if _2378 < 8:
                revert with 0, 17
            _3010 = mem[64]
            u = _2370 + ceil32(return_data.size) + mem[_2370 + ceil32(return_data.size)] - 4
            t = mem[64] + 4
            while t < _3010 + 8:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_3010] = 4
            mem[64] = ceil32(t)
            u = 0
            v = 0
            while u < 4:
                if u >= 4:
                    revert with 0, 50
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _3010 + 32]) >> 248 < 48:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if uint8(mem[u + _3010 + 32]) >> 248 > 57:
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
                if uint8(mem[u + _3010 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * v > !((uint8(mem[u + _3010 + 32]) >> 248) - 48):
                    revert with 0, 17
                if u == -1:
                    revert with 0, 17
                u = u + 1
                v = (10 * v) + (uint8(mem[u + _3010 + 32]) >> 248) - 48
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
            _4271 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
            if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
            mem[ceil32(t) + ceil32(return_data.size)] = _4271
            require _4229 + _4271 + 32 <= return_data.size
            u = 0
            while u < _4271:
                mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4229 + 32]
                u = u + 32
                continue 
            if ceil32(_4271) <= _4271:
                if _4271 < 8:
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
                mem[ceil32(t) + ceil32(return_data.size) + _4271 + 32] = 0
                if _4271 < 8:
                    revert with 0, 17
                _4781 = mem[64]
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
        else:
            mem[_2370 + ceil32(return_data.size) + _2378 + 32] = 0
            if _2378 < 8:
                revert with 0, 17
            _3026 = mem[64]
            u = _2370 + ceil32(return_data.size) + mem[_2370 + ceil32(return_data.size)] - 4
            t = mem[64] + 4
            while t < _3026 + 8:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_3026] = 4
            mem[64] = ceil32(t)
            u = 0
            v = 0
            while u < 4:
                if u >= 4:
                    revert with 0, 50
                if u >= 4:
                    revert with 0, 50
                if uint8(mem[u + _3026 + 32]) >> 248 < 48:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    v = v
                    continue 
                if uint8(mem[u + _3026 + 32]) >> 248 > 57:
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
                if uint8(mem[u + _3026 + 32]) >> 248 < 48:
                    revert with 0, 17
                if 10 * v > !((uint8(mem[u + _3026 + 32]) >> 248) - 48):
                    revert with 0, 17
                if u == -1:
                    revert with 0, 17
                u = u + 1
                v = (10 * v) + (uint8(mem[u + _3026 + 32]) >> 248) - 48
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
            _4230 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
            require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
            require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
            _4273 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
            if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
            mem[ceil32(t) + ceil32(return_data.size)] = _4273
            require _4230 + _4273 + 32 <= return_data.size
            u = 0
            while u < _4273:
                mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4230 + 32]
                u = u + 32
                continue 
            if ceil32(_4273) <= _4273:
                if _4273 < 8:
                    revert with 0, 17
                _4770 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4770 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4770] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4770 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4770 + 32]) >> 248 > 57:
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
                    if uint8(mem[t + _4770 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4770 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4770 + 32]) >> 248) - 48
                    continue 
            else:
                mem[ceil32(t) + ceil32(return_data.size) + _4273 + 32] = 0
                if _4273 < 8:
                    revert with 0, 17
                _4782 = mem[64]
                w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                u = mem[64] + 4
                while u < _4782 + 8:
                    mem[u] = mem[w]
                    w = w + 32
                    u = u + 32
                    continue 
                mem[_4782] = 4
                mem[64] = ceil32(u)
                t = 0
                w = 0
                while t < 4:
                    if t >= 4:
                        revert with 0, 50
                    if t >= 4:
                        revert with 0, 50
                    if uint8(mem[t + _4782 + 32]) >> 248 < 48:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        w = w
                        continue 
                    if uint8(mem[t + _4782 + 32]) >> 248 > 57:
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
                    if uint8(mem[t + _4782 + 32]) >> 248 < 48:
                        revert with 0, 17
                    if 10 * w > !((uint8(mem[t + _4782 + 32]) >> 248) - 48):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    w = (10 * w) + (uint8(mem[t + _4782 + 32]) >> 248) - 48
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
    if var50001 < 1:
        revert with 0, 17
    if var54002 >= var54001:
        _4665 = mem[64]
        mem[mem[64]] = 64
        _4673 = mem[var54004]
        mem[mem[64] + 64] = mem[var54004]
        mem[mem[64] + 96 len 32 * _4673] = mem[var54004 + 32 len 32 * _4673]
        mem[mem[64] + 32] = (32 * _4673) + 96
        _5161 = mem[var54003]
        mem[_4665 + (32 * _4673) + 96] = mem[var54003]
        idx = 0
        s = _4665 + (32 * _4673) + 128
        t = var54003 + 32
        while idx < _5161:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _4665 + (32 * _4673) + (32 * _5161) + -mem[64] + 128
    if var47001 < mem[96]:
        if var58003 >= mem[96]:
            revert with 0, 50
        if var47001 >= mem[96]:
            revert with 0, 50
        if var47001 == -1:
            revert with 0, 17
        var47001 = var47001 + 1
        continue 
    if var58003 == var58003:
        if var58005 == -1:
            revert with 0, 17
        if mem[96] < 1:
            revert with 0, 17
        if var58005 + 1 < mem[96] - 1:
            var47001 = var58005 + 1
            continue 
        _6082 = mem[64]
        mem[mem[64]] = 64
        _6086 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _6143 = mem[(32 * stor204[arg1].field_96) + 128]
        mem[_6082 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
        idx = 0
        s = _6082 + (32 * _6086) + 128
        t = (32 * stor204[arg1].field_96) + 160
        while idx < _6143:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _6082 + (32 * _6086) + (32 * _6143) + -mem[64] + 128
    if var58003 >= mem[96]:
        revert with 0, 50
    if var58003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    if var58003 >= mem[96]:
        revert with 0, 50
    if var58003 >= mem[96]:
        revert with 0, 50
    if var58003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    if var58003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    if var58003 >= mem[96]:
        revert with 0, 50
    if var58003 >= mem[(32 * stor204[arg1].field_96) + 128]:
        revert with 0, 50
    mem[(32 * var58003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var58003) + (32 * stor204[arg1].field_96) + 172 len 20]
    if var58005 == -1:
        revert with 0, 17
    if mem[96] < 1:
        revert with 0, 17
    if var58005 + 1 < mem[96] - 1:
        var47001 = var58005 + 1
        continue 
    _6110 = mem[64]
    mem[mem[64]] = 64
    _6114 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _6145 = mem[(32 * stor204[arg1].field_96) + 128]
    mem[_6110 + (32 * mem[96]) + 96] = mem[(32 * stor204[arg1].field_96) + 128]
    idx = 0
    s = _6110 + (32 * _6114) + 128
    t = (32 * stor204[arg1].field_96) + 160
    while idx < _6145:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _6110 + (32 * _6114) + (32 * _6145) + -mem[64] + 128
}

function sub_27f1c3d1(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor204[arg1].field_48:
        revert with 0, 'X'
    if 60 > -stor204[arg1].field_48 + test266151307():
        revert with 0, 17
    if block.timestamp < stor204[arg1].field_48 + 60 % 281474976710656:
        revert with 0, 'Y'
    mem[0] = arg1
    mem[32] = 204
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
                _2463 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2467 = mem[_2463]
                require mem[_2463] <= test266151307()
                require _2463 + return_data.size > _2463 + mem[_2463] + 31
                _2472 = mem[_2463 + mem[_2463]]
                if mem[_2463 + mem[_2463]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2463 + mem[_2463]])) + 1 < 0 or _2463 + ceil32(return_data.size) + ceil32(ceil32(mem[_2463 + mem[_2463]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2463 + ceil32(return_data.size) + ceil32(ceil32(mem[_2463 + mem[_2463]])) + 1
                mem[_2463 + ceil32(return_data.size)] = _2472
                require _2467 + _2472 + 32 <= return_data.size
                t = 0
                while t < _2472:
                    mem[t + _2463 + ceil32(return_data.size) + 32] = mem[t + _2463 + _2467 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2472) <= _2472:
                    if _2472 < 8:
                        revert with 0, 17
                    _3098 = mem[64]
                    u = _2463 + ceil32(return_data.size) + mem[_2463 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3098 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3098] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3098 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3098 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3098 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3098 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3098 + 32]) >> 248) - 48
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
                    _4378 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4421 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4421
                    require _4378 + _4421 + 32 <= return_data.size
                    u = 0
                    while u < _4421:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4378 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4421) <= _4421:
                        if _4421 < 8:
                            revert with 0, 17
                        _4955 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4955 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4955] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4955 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4955 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4955 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4955 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4955 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4421 + 32] = 0
                        if _4421 < 8:
                            revert with 0, 17
                        _4978 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4978 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4978] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4978 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4978 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4978 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4978 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4978 + 32]) >> 248) - 48
                            continue 
                else:
                    mem[_2463 + ceil32(return_data.size) + _2472 + 32] = 0
                    if _2472 < 8:
                        revert with 0, 17
                    _3115 = mem[64]
                    u = _2463 + ceil32(return_data.size) + mem[_2463 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3115 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3115] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3115 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3115 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3115 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3115 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3115 + 32]) >> 248) - 48
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
                    _4379 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4423 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4423
                    require _4379 + _4423 + 32 <= return_data.size
                    u = 0
                    while u < _4423:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4379 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4423) <= _4423:
                        if _4423 < 8:
                            revert with 0, 17
                        _4956 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4956 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4956] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4956 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4956 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4956 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4956 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4956 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4423 + 32] = 0
                        if _4423 < 8:
                            revert with 0, 17
                        _4979 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4979 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4979] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4979 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4979 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4979 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4979 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4979 + 32]) >> 248) - 48
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
            if var51001 < 1:
                revert with 0, 17
            if var55002 >= var55001:
                if 0 >= mem[var55003]:
                    revert with 0, 50
                if address(arg2) != mem[var55003 + 44 len 20]:
                    if 1 >= mem[var55003]:
                        revert with 0, 50
                    if address(arg2) != mem[var55003 + 76 len 20]:
                        if 2 >= mem[var55003]:
                            revert with 0, 50
                        if address(arg2) != mem[var55003 + 108 len 20]:
                            return 0
            else:
                if var48001 < mem[96]:
                    if var59003 >= mem[96]:
                        revert with 0, 50
                    if var48001 >= mem[96]:
                        revert with 0, 50
                    if var48001 == -1:
                        revert with 0, 17
                    var48001 = var48001 + 1
                    continue 
                if var59003 != var59003:
                    if var59003 >= mem[96]:
                        revert with 0, 50
                    if var59003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var59003 >= mem[96]:
                        revert with 0, 50
                    if var59003 >= mem[96]:
                        revert with 0, 50
                    if var59003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var59003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var59003 >= mem[96]:
                        revert with 0, 50
                    if var59003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    mem[(32 * var59003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var59003) + (32 * stor204[arg1].field_96) + 172 len 20]
                if var59005 == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if var59005 + 1 < mem[96] - 1:
                    var48001 = var59005 + 1
                    continue 
                if 0 >= mem[(32 * stor204[arg1].field_96) + 128]:
                    revert with 0, 50
                if address(arg2) != mem[(32 * stor204[arg1].field_96) + 172 len 20]:
                    if 1 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if address(arg2) != mem[(32 * stor204[arg1].field_96) + 204 len 20]:
                        if 2 >= mem[(32 * stor204[arg1].field_96) + 128]:
                            revert with 0, 50
                        if address(arg2) != mem[(32 * stor204[arg1].field_96) + 236 len 20]:
                            return 0
        else:
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
                _2464 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2468 = mem[_2464]
                require mem[_2464] <= test266151307()
                require _2464 + return_data.size > _2464 + mem[_2464] + 31
                _2474 = mem[_2464 + mem[_2464]]
                if mem[_2464 + mem[_2464]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2464 + mem[_2464]])) + 1 < 0 or _2464 + ceil32(return_data.size) + ceil32(ceil32(mem[_2464 + mem[_2464]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2464 + ceil32(return_data.size) + ceil32(ceil32(mem[_2464 + mem[_2464]])) + 1
                mem[_2464 + ceil32(return_data.size)] = _2474
                require _2468 + _2474 + 32 <= return_data.size
                t = 0
                while t < _2474:
                    mem[t + _2464 + ceil32(return_data.size) + 32] = mem[t + _2464 + _2468 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2474) <= _2474:
                    if _2474 < 8:
                        revert with 0, 17
                    _3102 = mem[64]
                    u = _2464 + ceil32(return_data.size) + mem[_2464 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3102 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3102] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3102 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3102 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3102 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3102 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3102 + 32]) >> 248) - 48
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
                    _4383 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4427 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4427
                    require _4383 + _4427 + 32 <= return_data.size
                    u = 0
                    while u < _4427:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4383 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4427) <= _4427:
                        if _4427 < 8:
                            revert with 0, 17
                        _4961 = mem[64]
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
                            if uint8(mem[t + _4961 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4961 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4961 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4961 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4961 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4427 + 32] = 0
                        if _4427 < 8:
                            revert with 0, 17
                        _4983 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4983 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4983] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4983 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4983 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4983 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4983 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4983 + 32]) >> 248) - 48
                            continue 
                else:
                    mem[_2464 + ceil32(return_data.size) + _2474 + 32] = 0
                    if _2474 < 8:
                        revert with 0, 17
                    _3120 = mem[64]
                    u = _2464 + ceil32(return_data.size) + mem[_2464 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3120 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3120] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3120 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3120 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3120 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3120 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3120 + 32]) >> 248) - 48
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
                    _4384 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4429 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4429
                    require _4384 + _4429 + 32 <= return_data.size
                    u = 0
                    while u < _4429:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4384 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4429) <= _4429:
                        if _4429 < 8:
                            revert with 0, 17
                        _4962 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4962 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4962] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4962 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4962 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4962 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4962 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4962 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4429 + 32] = 0
                        if _4429 < 8:
                            revert with 0, 17
                        _4984 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4984 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4984] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4984 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4984 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4984 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4984 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4984 + 32]) >> 248) - 48
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
            if var52001 < 1:
                revert with 0, 17
            if var56002 >= var56001:
                if 0 >= mem[var56003]:
                    revert with 0, 50
                if address(arg2) != mem[var56003 + 44 len 20]:
                    if 1 >= mem[var56003]:
                        revert with 0, 50
                    if address(arg2) != mem[var56003 + 76 len 20]:
                        if 2 >= mem[var56003]:
                            revert with 0, 50
                        if address(arg2) != mem[var56003 + 108 len 20]:
                            return 0
            else:
                if var49001 < mem[96]:
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var49001 >= mem[96]:
                        revert with 0, 50
                    if var49001 == -1:
                        revert with 0, 17
                    var49001 = var49001 + 1
                    continue 
                if var60003 != var60003:
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    mem[(32 * var60003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var60003) + (32 * stor204[arg1].field_96) + 172 len 20]
                if var60005 == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if var60005 + 1 < mem[96] - 1:
                    var49001 = var60005 + 1
                    continue 
                if 0 >= mem[(32 * stor204[arg1].field_96) + 128]:
                    revert with 0, 50
                if address(arg2) != mem[(32 * stor204[arg1].field_96) + 172 len 20]:
                    if 1 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if address(arg2) != mem[(32 * stor204[arg1].field_96) + 204 len 20]:
                        if 2 >= mem[(32 * stor204[arg1].field_96) + 128]:
                            revert with 0, 50
                        if address(arg2) != mem[(32 * stor204[arg1].field_96) + 236 len 20]:
                            return 0
    else:
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
                _2465 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2469 = mem[_2465]
                require mem[_2465] <= test266151307()
                require _2465 + return_data.size > _2465 + mem[_2465] + 31
                _2476 = mem[_2465 + mem[_2465]]
                if mem[_2465 + mem[_2465]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2465 + mem[_2465]])) + 1 < 0 or _2465 + ceil32(return_data.size) + ceil32(ceil32(mem[_2465 + mem[_2465]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2465 + ceil32(return_data.size) + ceil32(ceil32(mem[_2465 + mem[_2465]])) + 1
                mem[_2465 + ceil32(return_data.size)] = _2476
                require _2469 + _2476 + 32 <= return_data.size
                t = 0
                while t < _2476:
                    mem[t + _2465 + ceil32(return_data.size) + 32] = mem[t + _2465 + _2469 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2476) <= _2476:
                    if _2476 < 8:
                        revert with 0, 17
                    _3106 = mem[64]
                    u = _2465 + ceil32(return_data.size) + mem[_2465 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3106 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3106] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3106 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3106 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3106 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3106 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3106 + 32]) >> 248) - 48
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
                    _4388 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4433 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4433
                    require _4388 + _4433 + 32 <= return_data.size
                    u = 0
                    while u < _4433:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4388 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4433) <= _4433:
                        if _4433 < 8:
                            revert with 0, 17
                        _4967 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4967 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4967] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4967 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4967 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4967 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4967 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4967 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4433 + 32] = 0
                        if _4433 < 8:
                            revert with 0, 17
                        _4988 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4988 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4988] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4988 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4988 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4988 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4988 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4988 + 32]) >> 248) - 48
                            continue 
                else:
                    mem[_2465 + ceil32(return_data.size) + _2476 + 32] = 0
                    if _2476 < 8:
                        revert with 0, 17
                    _3125 = mem[64]
                    u = _2465 + ceil32(return_data.size) + mem[_2465 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3125 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3125] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3125 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3125 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3125 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3125 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3125 + 32]) >> 248) - 48
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
                    _4389 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4435 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4435
                    require _4389 + _4435 + 32 <= return_data.size
                    u = 0
                    while u < _4435:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4389 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4435) <= _4435:
                        if _4435 < 8:
                            revert with 0, 17
                        _4968 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4968 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4968] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4968 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4968 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4968 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4968 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4968 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4435 + 32] = 0
                        if _4435 < 8:
                            revert with 0, 17
                        _4989 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4989 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4989] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4989 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4989 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4989 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4989 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4989 + 32]) >> 248) - 48
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
            if var52001 < 1:
                revert with 0, 17
            if var56002 >= var56001:
                if 0 >= mem[var56003]:
                    revert with 0, 50
                if address(arg2) != mem[var56003 + 44 len 20]:
                    if 1 >= mem[var56003]:
                        revert with 0, 50
                    if address(arg2) != mem[var56003 + 76 len 20]:
                        if 2 >= mem[var56003]:
                            revert with 0, 50
                        if address(arg2) != mem[var56003 + 108 len 20]:
                            return 0
            else:
                if var49001 < mem[96]:
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var49001 >= mem[96]:
                        revert with 0, 50
                    if var49001 == -1:
                        revert with 0, 17
                    var49001 = var49001 + 1
                    continue 
                if var60003 != var60003:
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var60003 >= mem[96]:
                        revert with 0, 50
                    if var60003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    mem[(32 * var60003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var60003) + (32 * stor204[arg1].field_96) + 172 len 20]
                if var60005 == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if var60005 + 1 < mem[96] - 1:
                    var49001 = var60005 + 1
                    continue 
                if 0 >= mem[(32 * stor204[arg1].field_96) + 128]:
                    revert with 0, 50
                if address(arg2) != mem[(32 * stor204[arg1].field_96) + 172 len 20]:
                    if 1 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if address(arg2) != mem[(32 * stor204[arg1].field_96) + 204 len 20]:
                        if 2 >= mem[(32 * stor204[arg1].field_96) + 128]:
                            revert with 0, 50
                        if address(arg2) != mem[(32 * stor204[arg1].field_96) + 236 len 20]:
                            return 0
        else:
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
                _2466 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2470 = mem[_2466]
                require mem[_2466] <= test266151307()
                require _2466 + return_data.size > _2466 + mem[_2466] + 31
                _2478 = mem[_2466 + mem[_2466]]
                if mem[_2466 + mem[_2466]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_2466 + mem[_2466]])) + 1 < 0 or _2466 + ceil32(return_data.size) + ceil32(ceil32(mem[_2466 + mem[_2466]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2466 + ceil32(return_data.size) + ceil32(ceil32(mem[_2466 + mem[_2466]])) + 1
                mem[_2466 + ceil32(return_data.size)] = _2478
                require _2470 + _2478 + 32 <= return_data.size
                t = 0
                while t < _2478:
                    mem[t + _2466 + ceil32(return_data.size) + 32] = mem[t + _2466 + _2470 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2478) <= _2478:
                    if _2478 < 8:
                        revert with 0, 17
                    _3110 = mem[64]
                    u = _2466 + ceil32(return_data.size) + mem[_2466 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3110 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3110] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3110 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3110 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3110 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3110 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3110 + 32]) >> 248) - 48
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
                    _4393 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4439 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4439
                    require _4393 + _4439 + 32 <= return_data.size
                    u = 0
                    while u < _4439:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4393 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4439) <= _4439:
                        if _4439 < 8:
                            revert with 0, 17
                        _4973 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4973 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4973] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4973 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4973 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4973 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4973 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4973 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4439 + 32] = 0
                        if _4439 < 8:
                            revert with 0, 17
                        _4993 = mem[64]
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
                            if uint8(mem[t + _4993 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4993 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4993 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4993 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4993 + 32]) >> 248) - 48
                            continue 
                else:
                    mem[_2466 + ceil32(return_data.size) + _2478 + 32] = 0
                    if _2478 < 8:
                        revert with 0, 17
                    _3130 = mem[64]
                    u = _2466 + ceil32(return_data.size) + mem[_2466 + ceil32(return_data.size)] - 4
                    t = mem[64] + 4
                    while t < _3130 + 8:
                        mem[t] = mem[u]
                        u = u + 32
                        t = t + 32
                        continue 
                    mem[_3130] = 4
                    mem[64] = ceil32(t)
                    u = 0
                    v = 0
                    while u < 4:
                        if u >= 4:
                            revert with 0, 50
                        if u >= 4:
                            revert with 0, 50
                        if uint8(mem[u + _3130 + 32]) >> 248 < 48:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            v = v
                            continue 
                        if uint8(mem[u + _3130 + 32]) >> 248 > 57:
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
                        if uint8(mem[u + _3130 + 32]) >> 248 < 48:
                            revert with 0, 17
                        if 10 * v > !((uint8(mem[u + _3130 + 32]) >> 248) - 48):
                            revert with 0, 17
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        v = (10 * v) + (uint8(mem[u + _3130 + 32]) >> 248) - 48
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
                    _4394 = mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32
                    require mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 <= test266151307()
                    require ceil32(t) + return_data.size > ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32 + 31
                    _4441 = mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32]
                    if mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 < 0 or ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(t) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(t) + mem[ceil32(t) len 4], stor204[arg1][3][s << 208][1].field_32])) + 1
                    mem[ceil32(t) + ceil32(return_data.size)] = _4441
                    require _4394 + _4441 + 32 <= return_data.size
                    u = 0
                    while u < _4441:
                        mem[u + ceil32(t) + ceil32(return_data.size) + 32] = mem[u + ceil32(t) + _4394 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_4441) <= _4441:
                        if _4441 < 8:
                            revert with 0, 17
                        _4974 = mem[64]
                        w = ceil32(t) + ceil32(return_data.size) + mem[ceil32(t) + ceil32(return_data.size)] - 4
                        u = mem[64] + 4
                        while u < _4974 + 8:
                            mem[u] = mem[w]
                            w = w + 32
                            u = u + 32
                            continue 
                        mem[_4974] = 4
                        mem[64] = ceil32(u)
                        t = 0
                        w = 0
                        while t < 4:
                            if t >= 4:
                                revert with 0, 50
                            if t >= 4:
                                revert with 0, 50
                            if uint8(mem[t + _4974 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4974 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4974 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4974 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4974 + 32]) >> 248) - 48
                            continue 
                    else:
                        mem[ceil32(t) + ceil32(return_data.size) + _4441 + 32] = 0
                        if _4441 < 8:
                            revert with 0, 17
                        _4994 = mem[64]
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
                            if uint8(mem[t + _4994 + 32]) >> 248 < 48:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                w = w
                                continue 
                            if uint8(mem[t + _4994 + 32]) >> 248 > 57:
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
                            if uint8(mem[t + _4994 + 32]) >> 248 < 48:
                                revert with 0, 17
                            if 10 * w > !((uint8(mem[t + _4994 + 32]) >> 248) - 48):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            w = (10 * w) + (uint8(mem[t + _4994 + 32]) >> 248) - 48
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
            if var53001 < 1:
                revert with 0, 17
            if var57002 >= var57001:
                if 0 >= mem[var57003]:
                    revert with 0, 50
                if address(arg2) != mem[var57003 + 44 len 20]:
                    if 1 >= mem[var57003]:
                        revert with 0, 50
                    if address(arg2) != mem[var57003 + 76 len 20]:
                        if 2 >= mem[var57003]:
                            revert with 0, 50
                        if address(arg2) != mem[var57003 + 108 len 20]:
                            return 0
            else:
                if var50001 < mem[96]:
                    if var61003 >= mem[96]:
                        revert with 0, 50
                    if var50001 >= mem[96]:
                        revert with 0, 50
                    if var50001 == -1:
                        revert with 0, 17
                    var50001 = var50001 + 1
                    continue 
                if var61003 != var61003:
                    if var61003 >= mem[96]:
                        revert with 0, 50
                    if var61003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var61003 >= mem[96]:
                        revert with 0, 50
                    if var61003 >= mem[96]:
                        revert with 0, 50
                    if var61003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var61003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if var61003 >= mem[96]:
                        revert with 0, 50
                    if var61003 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    mem[(32 * var61003) + (32 * stor204[arg1].field_96) + 160] = mem[(32 * var61003) + (32 * stor204[arg1].field_96) + 172 len 20]
                if var61005 == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if var61005 + 1 < mem[96] - 1:
                    var50001 = var61005 + 1
                    continue 
                if 0 >= mem[(32 * stor204[arg1].field_96) + 128]:
                    revert with 0, 50
                if address(arg2) != mem[(32 * stor204[arg1].field_96) + 172 len 20]:
                    if 1 >= mem[(32 * stor204[arg1].field_96) + 128]:
                        revert with 0, 50
                    if address(arg2) != mem[(32 * stor204[arg1].field_96) + 204 len 20]:
                        if 2 >= mem[(32 * stor204[arg1].field_96) + 128]:
                            revert with 0, 50
                        if address(arg2) != mem[(32 * stor204[arg1].field_96) + 236 len 20]:
                            return 0
    return 1
}



}
