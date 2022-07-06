contract main {




// =====================  Runtime code  =====================


#
#  - sub_033aa4c8(?)
#  - revokeRole(bytes32 arg1, address arg2)
#
const getDate = block.timestamp

const DEFAULT_ADMIN_ROLE = 0

const OWNER_ROLE = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021

const PAUSER_ROLE = 0x4e65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86

const UPGRADER_ROLE = 0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address sub_e8fda042Address; offset 16
address poolRewardsAddress;
address oracleAddress;
address randomAddress;
address sub_e3f3a4a9Address;
mapping of uint256 sub_5fb1707f;
mapping of struct users;
mapping of struct planets;
mapping of uint8 stor8;
address tokenAddress;
uint256 sub_ab42c9c5;
uint256 sub_d26c5fb5;
uint256 sub_2c4fe146;
uint256 sub_a70fe340;
uint256 sub_b2c3c94c;
uint256 PERCENT_DIVIDER;
uint256 sub_452b4b34;
uint256 sub_e0d0a31f;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 sub_57d7601c;
uint256 sub_abdce79f;
uint256 sub_05ae2872;
uint256 sub_0c0f53b3;
array of uint256 stor25;
array of uint256 sub_400d221f;
array of uint256 stor30;
array of uint256 sub_5936690b;
array of uint256 stor35;
array of uint256 sub_8a473959;
array of uint256 stor40;
array of uint256 sub_b58deb19;
array of uint256 sub_32906cad;
uint256 stor47;
uint256 stor48;
uint256 stor49;
array of uint256 sub_152cae17;
uint256 stor52;
uint256 stor53;
uint256 stor54;
uint8 sub_6438dc46;
uint8 paused; offset 8
mapping of struct roleAdmin;
uint256 sub_31990c97;

function sub_05ae2872(?) payable {
    return sub_05ae2872
}

function sub_0c0f53b3(?) payable {
    return sub_0c0f53b3
}

function sub_152cae17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_152cae17[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function planets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(planets[arg1].field_0), 
           uint256(planets[arg1].field_256),
           uint256(planets[arg1].field_512),
           uint256(planets[arg1].field_768)
}

function PERCENT_DIVIDER() payable {
    return PERCENT_DIVIDER
}

function sub_2c4fe146(?) payable {
    return sub_2c4fe146
}

function sub_31990c97(?) payable {
    return sub_31990c97
}

function sub_32906cad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_32906cad[arg1]
}

function sub_400d221f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_400d221f[arg1]
}

function sub_452b4b34(?) payable {
    return sub_452b4b34
}

function sub_57d7601c(?) payable {
    return sub_57d7601c
}

function sub_5936690b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_5936690b[arg1]
}

function paused() payable {
    return bool(paused)
}

function random() payable {
    return randomAddress
}

function sub_5fb1707f(?) payable {
    require calldata.size - 4 >= 32
    return sub_5fb1707f[arg1]
}

function sub_6438dc46(?) payable {
    return bool(sub_6438dc46)
}

function oracle() payable {
    return oracleAddress
}

function sub_8a473959(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_8a473959[arg1]
}

function poolRewards() payable {
    return poolRewardsAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_a70fe340(?) payable {
    return sub_a70fe340
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(users[arg1].field_0), 
           uint256(users[arg1].field_256),
           uint256(users[arg1].field_512),
           uint256(users[arg1].field_768),
           uint256(users[arg1].field_1024)
}

function sub_ab42c9c5(?) payable {
    return sub_ab42c9c5
}

function sub_abdce79f(?) payable {
    return sub_abdce79f
}

function sub_b2c3c94c(?) payable {
    return sub_b2c3c94c
}

function sub_b58deb19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_b58deb19[arg1]
}

function sub_cfbfbaed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function sub_d26c5fb5(?) payable {
    return sub_d26c5fb5
}

function sub_e0d0a31f(?) payable {
    return sub_e0d0a31f
}

function sub_e3f3a4a9(?) payable {
    return sub_e3f3a4a9Address
}

function sub_e8fda042(?) payable {
    return sub_e8fda042Address
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_24e373d5(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < arg1:
        revert with 0, 17
    return (block.timestamp - arg1)
}

function pauseWithdraw() payable {
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_6438dc46 = 1
}

function sub_8471dd62(?) payable {
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_6438dc46 = 0
}

function sub_2aefd937(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_abdce79f = arg1
}

function sub_c53c6aa9(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_05ae2872 = arg1
}

function sub_fb7625a9(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_a70fe340 = arg1
}

function sub_a790d9c2(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_452b4b34 = arg1
    stor20 = arg2
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    tokenAddress = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    oracleAddress = arg1
}

function pause() payable {
    if not uint8(roleAdmin[0x4e65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        revert with 0, 'Only pauser'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setRandom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    randomAddress = arg1
}

function unpause() payable {
    if not uint8(roleAdmin[0x4e65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        revert with 0, 'Only pauser'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_e8a2e34c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    poolRewardsAddress = address(arg1)
}

function sub_983dfb62(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_e3f3a4a9Address = address(arg1)
}

function sub_e561019c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    sub_e8fda042Address = address(arg1)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_c556105c(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if arg1 > PERCENT_DIVIDER:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee must be less than PERCENT_DIVIDER'
    sub_57d7601c = arg1
}

function canWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(users[msg.sender].field_1024):
        return 0
    if stor8[msg.sender]:
        if block.timestamp < uint256(users[address(arg1)].field_256):
            revert with 0, 17
        if block.timestamp - uint256(users[address(arg1)].field_256) < sub_d26c5fb5:
            return 0
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_a4751d00(?) payable {
    require calldata.size - 4 >= 128
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    uint256(planets[stor17].field_0) = arg1
    uint256(planets[stor17].field_256) = arg2
    uint256(planets[stor17].field_512) = arg3
    uint256(planets[stor17].field_768) = arg4
    if sub_e0d0a31f == -1:
        revert with 0, 17
    sub_e0d0a31f++
}

function sub_cfdc3ba9(?) payable {
    require calldata.size - 4 >= 160
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    require arg1 < sub_e0d0a31f
    if arg5 > arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ownerReward must be less than reward'
    uint256(planets[arg1].field_0) = arg4
    uint256(planets[arg1].field_256) = arg3
    uint256(planets[arg1].field_512) = arg2
    uint256(planets[arg1].field_768) = arg5
}

function sub_f1f8380c(?) payable {
    require calldata.size - 4 >= 128
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if arg4 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ownerReward must be less than reward'
    uint256(planets[stor17].field_0) = arg3
    uint256(planets[stor17].field_256) = arg2
    uint256(planets[stor17].field_512) = arg1
    uint256(planets[stor17].field_768) = arg4
    if sub_e0d0a31f == -1:
        revert with 0, 17
    sub_e0d0a31f++
}

function sub_dcda1557(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0x987e5848 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function sub_9b13815e(?) payable {
    require calldata.size - 4 >= 160
    require 35 < calldata.size
    require 164 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 5:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 1
    s = mem[96]
    while idx < 5:
        if not s:
            return 0
        if idx >= 5:
            revert with 0, 50
        if s <= mem[(32 * idx) + 96]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= 5:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * idx) + 96]
        continue 
    if s <= stor20:
        if sub_452b4b34 and s > -1 / sub_452b4b34:
            revert with 0, 17
        return (sub_452b4b34 * s)
    if sub_452b4b34 and stor20 > -1 / sub_452b4b34:
        revert with 0, 17
    return (sub_452b4b34 * stor20)
}

function sub_4de5b596(?) payable {
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
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_2c4fe146 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    sub_b2c3c94c = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    sub_ab42c9c5 = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    sub_d26c5fb5 = mem[224]
}

function sub_6da2c5d0(?) payable {
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
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    if mem[128] > 0:
        if 0 >= ('cd', 4).length:
            revert with 0, 50
        sub_0c0f53b3 = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    if mem[160] > 0:
        if 1 >= ('cd', 4).length:
            revert with 0, 50
        sub_31990c97 = mem[160]
}

function sub_03e4827a(?) payable {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 164 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 5:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if cd[164] != stor19:
        s = 31
        idx = 96
        while 256 > idx:
            uint256(stor[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 36
        while 36 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 26
        idx = 96
        while 256 > idx:
            uint256(stor[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 31
        while 31 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_3fbeb6fc(?) payable {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 164 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 5:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if cd[164] != stor19:
        s = 41
        idx = 96
        while 256 > idx:
            uint256(stor[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 46
        while 46 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 36
        idx = 96
        while 256 > idx:
            uint256(stor[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 41
        while 41 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_f1bffc55(?) payable {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 164 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 5:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if cd[164] != stor19:
        s = 51
        idx = 96
        while 256 > idx:
            uint256(stor[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 56
        while 56 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 46
        idx = 96
        while 256 > idx:
            uint256(stor[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 51
        while 51 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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

function sub_28a18089(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _27 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _27
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31 + 12 len 20]
        if mem[_31 + 12 len 20] != address(cd[4]):
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_d026994d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (('cd', 4).length << 7) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _19 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_19] = cd[s]
        mem[_19 + 32] = cd[(s + 32)]
        mem[_19 + 64] = cd[(s + 64)]
        mem[_19 + 96] = cd[(s + 96)]
        mem[t] = _19
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021, 57)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = sub_e0d0a31f
        mem[32] = 7
        uint256(planets[stor17].field_0) = mem[mem[(32 * idx) + 128]]
        uint256(planets[stor17].field_256) = mem[mem[(32 * idx) + 128] + 32]
        uint256(planets[stor17].field_512) = mem[mem[(32 * idx) + 128] + 64]
        uint256(planets[stor17].field_768) = mem[mem[(32 * idx) + 128] + 96]
        if sub_e0d0a31f == -1:
            revert with 0, 17
        sub_e0d0a31f++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_92342ab5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _35 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _35
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_39] == mem[_39 + 12 len 20]
        if mem[_39 + 12 len 20] != address(cd[4]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _42 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0x17b58e8c with:
                gas gas_remaining wei
               args _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_45]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_45]
        continue 
    return s
}

function sub_13a47e66(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xdd1d130c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if ext_call.return_data[0] - 1 >= 5:
        revert with 0, 50
    if ext_call.return_data[0] != stor19:
        if not stor40[ext_call.return_data[0]]:
            return 0
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xcb641de1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 17
        if block.timestamp - ext_call.return_data[0] <= stor40[ext_call.return_data[0]]:
            return 0
    else:
        if not stor35[ext_call.return_data[0]]:
            return 0
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xcb641de1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 17
        if block.timestamp - ext_call.return_data[0] <= stor35[ext_call.return_data[0]]:
            return 0
    return 1
}

function sub_a2b5e255(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _51 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _51
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == mem[_55 + 12 len 20]
        if mem[_55 + 12 len 20] != address(cd[4]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _58 = mem[(32 * idx) + 128]
        _59 = mem[64]
        mem[64] = mem[64] + 192
        mem[_59] = 0
        mem[_59 + 32] = 0
        mem[_59 + 64] = 0
        mem[_59 + 96] = 0
        mem[_59 + 128] = 0
        mem[_59 + 160] = 0
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0x987e5848 with:
                gas gas_remaining wei
               args _58
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _63 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 192
        mem[_63] = mem[_62]
        mem[_63 + 32] = mem[_62 + 32]
        mem[_63 + 64] = mem[_62 + 64]
        mem[_63 + 96] = mem[_62 + 96]
        mem[_63 + 128] = mem[_62 + 128]
        mem[_63 + 160] = mem[_62 + 160]
        if s > !mem[_63 + 32]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_63 + 32]
        continue 
    return s
}

function sub_79abcff6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xdd1d130c with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 17
        if ext_call.return_data[0] - 1 >= 5:
            revert with 0, 50
        if ext_call.return_data[0] != stor19:
            if not stor40[ext_call.return_data[0]]:
                return 0
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xcb641de1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < ext_call.return_data[0]:
                revert with 0, 17
            if block.timestamp - ext_call.return_data[0] <= stor40[ext_call.return_data[0]]:
                return 0
        else:
            if not stor35[ext_call.return_data[0]]:
                return 0
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xcb641de1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < ext_call.return_data[0]:
                revert with 0, 17
            if block.timestamp - ext_call.return_data[0] <= stor35[ext_call.return_data[0]]:
                return 0
    return 1
}

function withDraw() payable {
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.blackListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'You are blackListed'
    if sub_6438dc46:
        revert with 0, 'Whitdraw is paused'
    if block.timestamp < uint256(users[msg.sender].field_256):
        revert with 0, 17
    if not uint256(users[msg.sender].field_1024):
        revert with 0, 'You have no rewards to withdraw'
    if block.timestamp - uint256(users[msg.sender].field_256) < sub_d26c5fb5:
        revert with 0, 'You can withdraw your rewards after 7 days'
    if not stor8[msg.sender]:
        stor8[msg.sender] = 1
    if block.timestamp - uint256(users[msg.sender].field_256) < sub_ab42c9c5:
        if uint256(users[msg.sender].field_1024) and sub_b2c3c94c > -1 / uint256(users[msg.sender].field_1024):
            revert with 0, 17
        if not PERCENT_DIVIDER:
            revert with 0, 18
        if uint256(users[msg.sender].field_1024) * sub_b2c3c94c / PERCENT_DIVIDER:
            if uint256(users[msg.sender].field_1024) < uint256(users[msg.sender].field_1024) * sub_b2c3c94c / PERCENT_DIVIDER:
                revert with 0, 17
            uint256(users[msg.sender].field_1024) -= uint256(users[msg.sender].field_1024) * sub_b2c3c94c / PERCENT_DIVIDER
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xf88e1202 with:
            gas gas_remaining wei
           args tokenAddress, uint256(users[msg.sender].field_1024)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolRewardsAddress != poolRewardsAddress:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args poolRewardsAddress, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if msg.sender == msg.sender:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args poolRewardsAddress, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint256(users[msg.sender].field_1024) = 0
    uint256(users[msg.sender].field_256) = block.timestamp
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Only owner'
    if stor25.length == -1:
        revert with 0, 17
    stor25.length++
    require ext_code.size(randomAddress)
    staticcall randomAddress.0xc191ade1 with:
            gas gas_remaining wei
           args stor25.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not PERCENT_DIVIDER:
        revert with 0, 18
    if ext_call.return_data[0] % PERCENT_DIVIDER > -2:
        revert with 0, 17
    require ext_code.size(sub_e8fda042Address)
    if arg1:
        if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < sub_152cae17.length:
            call sub_e8fda042Address.0x360254fa with:
                 gas gas_remaining wei
                args msg.sender, 1
        else:
            if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor52:
                call sub_e8fda042Address.0x360254fa with:
                     gas gas_remaining wei
                    args msg.sender, 2
            else:
                if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor53:
                    call sub_e8fda042Address.0x360254fa with:
                         gas gas_remaining wei
                        args msg.sender, 3
                else:
                    if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 >= stor54:
                        call sub_e8fda042Address.0x360254fa with:
                             gas gas_remaining wei
                            args msg.sender, 5
                    else:
                        call sub_e8fda042Address.0x360254fa with:
                             gas gas_remaining wei
                            args msg.sender, 4
    else:
        call sub_e8fda042Address.0xd15a48f6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
        if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
            revert with 0, 65
        require 160 <= return_data.size
        require ext_code.size(sub_e8fda042Address)
        if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < sub_32906cad.length:
            call sub_e8fda042Address.0xe63edb5d with:
                 gas gas_remaining wei
                args msg.sender, 1, ext_call.return_data[0]
        else:
            if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor47:
                call sub_e8fda042Address.0xe63edb5d with:
                     gas gas_remaining wei
                    args msg.sender, 2, ext_call.return_data[32]
            else:
                if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor48:
                    call sub_e8fda042Address.0xe63edb5d with:
                         gas gas_remaining wei
                        args msg.sender, 3, ext_call.return_data[64]
                else:
                    if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 >= stor49:
                        call sub_e8fda042Address.0xe63edb5d with:
                             gas gas_remaining wei
                            args msg.sender, 5, ext_call.return_data[128]
                    else:
                        call sub_e8fda042Address.0xe63edb5d with:
                             gas gas_remaining wei
                            args msg.sender, 4, ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    sub_ab42c9c5 = 360 * 24 * 3600
    sub_d26c5fb5 = 168 * 24 * 3600
    sub_2c4fe146 = 24 * 3600
    sub_a70fe340 = 24 * 3600
    sub_b2c3c94c = 300
    PERCENT_DIVIDER = 1000
    sub_452b4b34 = 35
    stor18 = 1
    stor19 = 0
    stor20 = 11
    sub_57d7601c = 100
    sub_abdce79f = 20 * 10^18
    sub_05ae2872 = 20 * 10^18
    mem[96] = 6 * 10^18
    mem[128] = 14 * 10^18
    mem[160] = 5 * 10^15 * 3600
    mem[192] = 22 * 10^18
    mem[224] = 28 * 10^18
    s = 26
    idx = 96
    while 256 > idx:
        Mask(72, 0, stor[s].field_0) = mem[idx + 23 len 9]
        Mask(184, 0, stor[s].field_72) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 31
    while 31 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[256] = 6 * 10^18
    mem[288] = 8 * 10^18
    mem[320] = 12 * 10^18
    mem[352] = 20 * 10^18
    mem[384] = 0
    s = 31
    idx = 256
    while 416 > idx:
        Mask(72, 0, stor[s].field_0) = mem[idx + 23 len 9]
        Mask(184, 0, stor[s].field_72) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 36
    while 36 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[416] = 720 * 24 * 3600
    mem[448] = 720 * 24 * 3600
    mem[480] = 720 * 24 * 3600
    mem[512] = 360 * 24 * 3600
    mem[544] = 360 * 24 * 3600
    s = 36
    idx = 416
    while 576 > idx:
        stor[s].field_0 % 16777216 = mem[idx + 29 len 3]
        Mask(232, 0, stor[s].field_24) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 41
    while 41 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[576] = 720 * 24 * 3600
    mem[608] = 720 * 24 * 3600
    mem[640] = 720 * 24 * 3600
    mem[672] = 360 * 24 * 3600
    mem[704] = 360 * 24 * 3600
    s = 41
    idx = 576
    while 736 > idx:
        stor[s].field_0 % 16777216 = mem[idx + 29 len 3]
        Mask(232, 0, stor[s].field_24) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 46
    while 46 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[736] = 660
    mem[768] = 878
    mem[800] = 960
    mem[832] = 995
    mem[864] = 1000
    s = 46
    idx = 736
    while 896 > idx:
        uint16(stor[s].field_0) = mem[idx + 30 len 2]
        Mask(240, 0, stor[s].field_16) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 51
    while 51 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[896] = 660
    mem[928] = 878
    mem[960] = 960
    mem[992] = 995
    mem[1024] = 1000
    s = 51
    idx = 896
    while 1056 > idx:
        uint16(stor[s].field_0) = mem[idx + 30 len 2]
        Mask(240, 0, stor[s].field_16) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 56
    while 56 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    sub_0c0f53b3 = 30 * 10^18
    sub_e8fda042Address = arg1
    poolRewardsAddress = arg2
    oracleAddress = arg4
    randomAddress = arg5
    sub_e3f3a4a9Address = arg6
    tokenAddress = arg3
    sub_e0d0a31f = 1
    if not uint8(roleAdmin[0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3][address(msg.sender)].field_0):
        uint8(roleAdmin[0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3][address(msg.sender)].field_0) = 1
        emit RoleGranted(0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3, msg.sender, msg.sender);
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0) = 1
        emit RoleGranted(0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021, msg.sender, msg.sender);
    if not uint8(roleAdmin[0x4e65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        uint8(roleAdmin[0x4e65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0) = 1
        emit RoleGranted(0x4e65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86, msg.sender, msg.sender);
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(roleAdmin[0][address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_46000ea6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xdd1d130c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] != stor19:
        if ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xdd1d130c with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 17
        if ext_call.return_data[0] - 1 >= 5:
            revert with 0, 50
        if ext_call.return_data[0] != stor19:
            if not stor40[ext_call.return_data[0]]:
                return 0
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xcb641de1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < ext_call.return_data[0]:
                revert with 0, 17
            if block.timestamp - ext_call.return_data[0] <= stor40[ext_call.return_data[0]]:
                return 0
        else:
            if not stor35[ext_call.return_data[0]]:
                return 0
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xcb641de1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < ext_call.return_data[0]:
                revert with 0, 17
            if block.timestamp - ext_call.return_data[0] <= stor35[ext_call.return_data[0]]:
                return 0
    else:
        if not ext_call.return_data[0]:
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                return 0
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                revert with 0, 17
            if ext_call.return_data[0] - 1 >= 5:
                revert with 0, 50
            if ext_call.return_data[0] != stor19:
                if not stor40[ext_call.return_data[0]]:
                    return 0
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xcb641de1 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < ext_call.return_data[0]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[0] <= stor40[ext_call.return_data[0]]:
                    return 0
            else:
                if not stor35[ext_call.return_data[0]]:
                    return 0
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xcb641de1 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < ext_call.return_data[0]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[0] <= stor35[ext_call.return_data[0]]:
                    return 0
    return 1
}

function sub_4728788b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xd1b4581b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = stor18
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xd1b4581b with:
            gas gas_remaining wei
           args address(arg1), stor18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _130 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_134] == bool(mem[_134])
        if mem[_134]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _140 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0x17b58e8c with:
                    gas gas_remaining wei
                   args _140
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_146]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_146]
            continue 
        mem[mem[64] + 4] = _130
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xdd1d130c with:
                gas gas_remaining wei
               args _130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _138 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = _130
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                gas gas_remaining wei
               args _130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_138] != stor19:
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _152 = mem[_150]
            if mem[_150] < 1:
                revert with 0, 17
            if mem[_150] - 1 >= 5:
                revert with 0, 50
            if not stor40[mem[_150]]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _162 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0x17b58e8c with:
                        gas gas_remaining wei
                       args _162
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_170]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_170]
                continue 
            mem[mem[64] + 4] = _130
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xcb641de1 with:
                    gas gas_remaining wei
                   args _130
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp < mem[_158]:
                revert with 0, 17
            if block.timestamp - mem[_158] > stor40[_152]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _176 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0x17b58e8c with:
                    gas gas_remaining wei
                   args _176
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_182]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_182]
            continue 
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_151]
        if mem[_151] < 1:
            revert with 0, 17
        if mem[_151] - 1 >= 5:
            revert with 0, 50
        if not stor35[mem[_151]]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _164 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0x17b58e8c with:
                    gas gas_remaining wei
                   args _164
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_171]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_171]
            continue 
        mem[mem[64] + 4] = _130
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xcb641de1 with:
                gas gas_remaining wei
               args _130
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp < mem[_160]:
            revert with 0, 17
        if block.timestamp - mem[_160] > stor35[_153]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _178 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0x17b58e8c with:
                gas gas_remaining wei
               args _178
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_183]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_183]
        continue 
    return s
}

function buyNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(oracleAddress)
    if arg1:
        staticcall oracleAddress.0xf88e1202 with:
                gas gas_remaining wei
               args tokenAddress, sub_05ae2872
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if poolRewardsAddress != msg.sender:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if msg.sender == poolRewardsAddress:
                require ext_code.size(poolRewardsAddress)
                call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args tokenAddress, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, poolRewardsAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor25.length == -1:
            revert with 0, 17
        stor25.length++
        require ext_code.size(randomAddress)
        staticcall randomAddress.0xc191ade1 with:
                gas gas_remaining wei
               args stor25.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not PERCENT_DIVIDER:
            revert with 0, 18
        if ext_call.return_data[0] % PERCENT_DIVIDER > -2:
            revert with 0, 17
        require ext_code.size(sub_e8fda042Address)
        if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < sub_152cae17.length:
            call sub_e8fda042Address.0x360254fa with:
                 gas gas_remaining wei
                args msg.sender, 1
        else:
            if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor52:
                call sub_e8fda042Address.0x360254fa with:
                     gas gas_remaining wei
                    args msg.sender, 2
            else:
                if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor53:
                    call sub_e8fda042Address.0x360254fa with:
                         gas gas_remaining wei
                        args msg.sender, 3
                else:
                    if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 >= stor54:
                        call sub_e8fda042Address.0x360254fa with:
                             gas gas_remaining wei
                            args msg.sender, 5
                    else:
                        call sub_e8fda042Address.0x360254fa with:
                             gas gas_remaining wei
                            args msg.sender, 4
    else:
        staticcall oracleAddress.0xf88e1202 with:
                gas gas_remaining wei
               args tokenAddress, sub_abdce79f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if poolRewardsAddress != msg.sender:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor25.length == -1:
                revert with 0, 17
            stor25.length++
            require ext_code.size(randomAddress)
            staticcall randomAddress.0xc191ade1 with:
                    gas gas_remaining wei
                   args stor25.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not PERCENT_DIVIDER:
                revert with 0, 18
            if ext_call.return_data[0] % PERCENT_DIVIDER > -2:
                revert with 0, 17
            require ext_code.size(sub_e8fda042Address)
            call sub_e8fda042Address.0xd15a48f6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require (4 * ceil32(return_data.size)) + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            if not bool((6 * ceil32(return_data.size)) + 256 <= test266151307()):
                revert with 0, 65
        else:
            if msg.sender == poolRewardsAddress:
                require ext_code.size(poolRewardsAddress)
                call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args tokenAddress, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor25.length == -1:
                    revert with 0, 17
                stor25.length++
                require ext_code.size(randomAddress)
                staticcall randomAddress.0xc191ade1 with:
                        gas gas_remaining wei
                       args stor25.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not PERCENT_DIVIDER:
                    revert with 0, 18
                if ext_call.return_data[0] % PERCENT_DIVIDER > -2:
                    revert with 0, 17
                require ext_code.size(sub_e8fda042Address)
                call sub_e8fda042Address.0xd15a48f6 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require (2 * ceil32(return_data.size)) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                if not bool((4 * ceil32(return_data.size)) + 256 <= test266151307()):
                    revert with 0, 65
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, poolRewardsAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stor25.length == -1:
                    revert with 0, 17
                stor25.length++
                require ext_code.size(randomAddress)
                staticcall randomAddress.0xc191ade1 with:
                        gas gas_remaining wei
                       args stor25.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not PERCENT_DIVIDER:
                    revert with 0, 18
                if ext_call.return_data[0] % PERCENT_DIVIDER > -2:
                    revert with 0, 17
                require ext_code.size(sub_e8fda042Address)
                call sub_e8fda042Address.0xd15a48f6 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require (4 * ceil32(return_data.size)) + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                if not bool((6 * ceil32(return_data.size)) + 256 <= test266151307()):
                    revert with 0, 65
        require 160 <= return_data.size
        require ext_code.size(sub_e8fda042Address)
        if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < sub_32906cad.length:
            call sub_e8fda042Address.0xe63edb5d with:
                 gas gas_remaining wei
                args msg.sender, 1, ext_call.return_data[0]
        else:
            if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor47:
                call sub_e8fda042Address.0xe63edb5d with:
                     gas gas_remaining wei
                    args msg.sender, 2, ext_call.return_data[32]
            else:
                if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 < stor48:
                    call sub_e8fda042Address.0xe63edb5d with:
                         gas gas_remaining wei
                        args msg.sender, 3, ext_call.return_data[64]
                else:
                    if (ext_call.return_data[0] % PERCENT_DIVIDER) + 1 >= stor49:
                        call sub_e8fda042Address.0xe63edb5d with:
                             gas gas_remaining wei
                            args msg.sender, 5, ext_call.return_data[128]
                    else:
                        call sub_e8fda042Address.0xe63edb5d with:
                             gas gas_remaining wei
                            args msg.sender, 4, ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8b12a865(?) payable {
    require calldata.size - 4 >= 32
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
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _163 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                    gas gas_remaining wei
                   args _163
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_170] == bool(mem[_170])
            if not mem[_170]:
                mem[mem[64] + 4] = _163
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xdd1d130c with:
                        gas gas_remaining wei
                       args _163
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = _163
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                        gas gas_remaining wei
                       args _163
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_186] != stor19:
                    _198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _202 = mem[_198]
                    if mem[_198] < 1:
                        revert with 0, 17
                    if mem[_198] - 1 >= 5:
                        revert with 0, 50
                    if stor40[mem[_198]]:
                        mem[mem[64] + 4] = _163
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _163
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_214]:
                            revert with 0, 17
                        if block.timestamp - mem[_214] > stor40[_202]:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 128]
                else:
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _203 = mem[_199]
                    if mem[_199] < 1:
                        revert with 0, 17
                    if mem[_199] - 1 >= 5:
                        revert with 0, 50
                    if stor35[mem[_199]]:
                        mem[mem[64] + 4] = _163
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _163
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _215 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_215]:
                            revert with 0, 17
                        if block.timestamp - mem[_215] > stor35[_203]:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _162 = mem[64]
        mem[64] = mem[64] + 32
        mem[_162 + 32] = 32
        mem[_162 + 64] = mem[_162]
        mem[_162 + 96 len 32 * mem[_162]] = mem[_162 + 32 len 32 * mem[_162]]
        return memory
          from mem[64]
           len _162 + (32 * mem[_162]) + -mem[64] + 96
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _165 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _165
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_171] == bool(mem[_171])
        if not mem[_171]:
            mem[mem[64] + 4] = _165
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _165
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _165
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _165
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_187] != stor19:
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _204 = mem[_200]
                if mem[_200] < 1:
                    revert with 0, 17
                if mem[_200] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_200]]:
                    mem[mem[64] + 4] = _165
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _165
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_216]:
                        revert with 0, 17
                    if block.timestamp - mem[_216] > stor40[_204]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 128]
            else:
                _201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _205 = mem[_201]
                if mem[_201] < 1:
                    revert with 0, 17
                if mem[_201] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_201]]:
                    mem[mem[64] + 4] = _165
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _165
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _217 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_217]:
                        revert with 0, 17
                    if block.timestamp - mem[_217] > stor35[_205]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _164 = mem[64]
    mem[64] = mem[64] + 32
    mem[_164 + 32] = 32
    mem[_164 + 64] = mem[_164]
    mem[_164 + 96 len 32 * mem[_164]] = mem[_164 + 32 len 32 * mem[_164]]
    return memory
      from mem[64]
       len _164 + (32 * mem[_164]) + -mem[64] + 96
}

function sub_268fcdc5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xd1b4581b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = stor19
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xd1b4581b with:
            gas gas_remaining wei
           args address(arg1), stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _138 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _138
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_142] == bool(mem[_142])
        if not mem[_142]:
            mem[mem[64] + 4] = _138
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                    gas gas_remaining wei
                   args _138
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_146] == bool(mem[_146])
            if mem[_146]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _153 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getExp(uint256 arg1) with:
                        gas gas_remaining wei
                       args _153
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 > !mem[_160]:
                    revert with 0, 17
            else:
                mem[mem[64] + 4] = _138
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xdd1d130c with:
                        gas gas_remaining wei
                       args _138
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = _138
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                        gas gas_remaining wei
                       args _138
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_150] != stor19:
                    _161 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _164 = mem[_161]
                    if mem[_161] < 1:
                        revert with 0, 17
                    if mem[_161] - 1 >= 5:
                        revert with 0, 50
                    if not stor40[mem[_161]]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _176 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.getExp(uint256 arg1) with:
                                gas gas_remaining wei
                               args _176
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > !mem[_182]:
                            revert with 0, 17
                    else:
                        mem[mem[64] + 4] = _138
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _138
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _170 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_170]:
                            revert with 0, 17
                        if block.timestamp - mem[_170] <= stor40[_164]:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _188 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getExp(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _188
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > !mem[_194]:
                                revert with 0, 17
                else:
                    _162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _165 = mem[_162]
                    if mem[_162] < 1:
                        revert with 0, 17
                    if mem[_162] - 1 >= 5:
                        revert with 0, 50
                    if not stor35[mem[_162]]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _178 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.getExp(uint256 arg1) with:
                                gas gas_remaining wei
                               args _178
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 0 > !mem[_183]:
                            revert with 0, 17
                    else:
                        mem[mem[64] + 4] = _138
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _138
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_171]:
                            revert with 0, 17
                        if block.timestamp - mem[_171] <= stor35[_165]:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _190 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getExp(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _190
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 0 > !mem[_195]:
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_4c1f90ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xd381a2800000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.tokensByOwner(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    if _5 > test266151307():
        revert with 0, 65
    _88 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _170 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                    gas gas_remaining wei
                   args _170
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_177] == bool(mem[_177])
            if not mem[_177]:
                mem[mem[64] + 4] = _170
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xdd1d130c with:
                        gas gas_remaining wei
                       args _170
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = _170
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                        gas gas_remaining wei
                       args _170
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_193] != stor19:
                    _205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _209 = mem[_205]
                    if mem[_205] < 1:
                        revert with 0, 17
                    if mem[_205] - 1 >= 5:
                        revert with 0, 50
                    if stor40[mem[_205]]:
                        mem[mem[64] + 4] = _170
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_221]:
                            revert with 0, 17
                        if block.timestamp - mem[_221] > stor40[_209]:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            if 0 >= mem[_88]:
                                revert with 0, 50
                            mem[_88 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                else:
                    _206 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _210 = mem[_206]
                    if mem[_206] < 1:
                        revert with 0, 17
                    if mem[_206] - 1 >= 5:
                        revert with 0, 50
                    if stor35[mem[_206]]:
                        mem[mem[64] + 4] = _170
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_222]:
                            revert with 0, 17
                        if block.timestamp - mem[_222] > stor35[_210]:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            if 0 >= mem[_88]:
                                revert with 0, 50
                            mem[_88 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _169 = mem[64]
        mem[64] = mem[64] + 32
        mem[_169 + 32] = 32
        mem[_169 + 64] = mem[_169]
        mem[_169 + 96 len 32 * mem[_169]] = mem[_169 + 32 len 32 * mem[_169]]
        return memory
          from mem[64]
           len _169 + (32 * mem[_169]) + -mem[64] + 96
    mem[_88 + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _172 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _172
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_178] == bool(mem[_178])
        if not mem[_178]:
            mem[mem[64] + 4] = _172
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _172
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _172
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _172
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_194] != stor19:
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _211 = mem[_207]
                if mem[_207] < 1:
                    revert with 0, 17
                if mem[_207] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_207]]:
                    mem[mem[64] + 4] = _172
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _172
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_223]:
                        revert with 0, 17
                    if block.timestamp - mem[_223] > stor40[_211]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if 0 >= mem[_88]:
                            revert with 0, 50
                        mem[_88 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            else:
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _212 = mem[_208]
                if mem[_208] < 1:
                    revert with 0, 17
                if mem[_208] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_208]]:
                    mem[mem[64] + 4] = _172
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _172
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_224]:
                        revert with 0, 17
                    if block.timestamp - mem[_224] > stor35[_212]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if 0 >= mem[_88]:
                            revert with 0, 50
                        mem[_88 + 32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _171 = mem[64]
    mem[64] = mem[64] + 32
    mem[_171 + 32] = 32
    mem[_171 + 64] = mem[_171]
    mem[_171 + 96 len 32 * mem[_171]] = mem[_171 + 32 len 32 * mem[_171]]
    return memory
      from mem[64]
       len _171 + (32 * mem[_171]) + -mem[64] + 96
}

function sub_a176cf9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xd1b4581b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = stor18
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xd1b4581b with:
            gas gas_remaining wei
           args address(arg1), stor18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    s = 0
    t = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _190 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _190
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_194] == bool(mem[_194])
        if mem[_194]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _200 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0x17b58e8c with:
                    gas gas_remaining wei
                   args _200
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_206]
            if t > !mem[_206]:
                revert with 0, 17
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _215 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _215
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_218] != 4:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t + _209
                continue 
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            t = t + _209
            continue 
        mem[mem[64] + 4] = _190
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xdd1d130c with:
                gas gas_remaining wei
               args _190
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = _190
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                gas gas_remaining wei
               args _190
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_198] != stor19:
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _212 = mem[_210]
            if mem[_210] < 1:
                revert with 0, 17
            if mem[_210] - 1 >= 5:
                revert with 0, 50
            if not stor40[mem[_210]]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _228 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0x17b58e8c with:
                        gas gas_remaining wei
                       args _228
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _238 = mem[_236]
                if t > !mem[_236]:
                    revert with 0, 17
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _243 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                        gas gas_remaining wei
                       args _243
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_256] != 4:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    t = t + _238
                    continue 
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                t = t + _238
                continue 
            mem[mem[64] + 4] = _190
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xcb641de1 with:
                    gas gas_remaining wei
                   args _190
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp < mem[_224]:
                revert with 0, 17
            if block.timestamp - mem[_224] > stor40[_212]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _248 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0x17b58e8c with:
                    gas gas_remaining wei
                   args _248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_258]
            if t > !mem[_258]:
                revert with 0, 17
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _266 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _266
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_272] != 4:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t + _262
                continue 
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            t = t + _262
            continue 
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _213 = mem[_211]
        if mem[_211] < 1:
            revert with 0, 17
        if mem[_211] - 1 >= 5:
            revert with 0, 50
        if not stor35[mem[_211]]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _230 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0x17b58e8c with:
                    gas gas_remaining wei
                   args _230
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _239 = mem[_237]
            if t > !mem[_237]:
                revert with 0, 17
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _246 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _246
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_257] != 4:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t + _239
                continue 
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            t = t + _239
            continue 
        mem[mem[64] + 4] = _190
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xcb641de1 with:
                gas gas_remaining wei
               args _190
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp < mem[_226]:
            revert with 0, 17
        if block.timestamp - mem[_226] > stor35[_213]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _251 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0x17b58e8c with:
                gas gas_remaining wei
               args _251
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _263 = mem[_259]
        if t > !mem[_259]:
            revert with 0, 17
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _268 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                gas gas_remaining wei
               args _268
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_273] != 4:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t + _263
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        t = t + _263
        continue 
    return t, s
}

function sub_89f4ecaa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _190 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _190
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_195] == bool(mem[_195])
        if not mem[_195]:
            mem[mem[64] + 4] = _190
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _190
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _190
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _190
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_203] != stor19:
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _219 = mem[_217]
                if mem[_217] < 1:
                    revert with 0, 17
                if mem[_217] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_217]]:
                    mem[mem[64] + 4] = _190
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _190
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_225]:
                        revert with 0, 17
                    if block.timestamp - mem[_225] > stor40[_219]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _231 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _231
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[_237] != stor19:
                            _245 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _245
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_257] < 1:
                                revert with 0, 17
                            if mem[_257] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_257]]:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            _269 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _269
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _269, block.timestamp
                        else:
                            _247 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _247
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_258] < 1:
                                revert with 0, 17
                            if mem[_258] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_258]]:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            _271 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _271
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _271, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _220 = mem[_218]
                if mem[_218] < 1:
                    revert with 0, 17
                if mem[_218] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_218]]:
                    mem[mem[64] + 4] = _190
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _190
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_226]:
                        revert with 0, 17
                    if block.timestamp - mem[_226] > stor35[_220]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _233 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _233
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _238 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[_238] != stor19:
                            _249 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _249
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_259] < 1:
                                revert with 0, 17
                            if mem[_259] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_259]]:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            _273 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _273
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _273, block.timestamp
                        else:
                            _251 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _251
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _260 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_260] < 1:
                                revert with 0, 17
                            if mem[_260] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_260]]:
                                revert with 0, 17
                            if idx >= mem[96]:
                                revert with 0, 50
                            _275 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _275
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _275, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = tokenAddress
    mem[mem[64] + 36] = 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xf88e1202 with:
            gas gas_remaining wei
           args tokenAddress, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _196 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _198 = mem[_196]
    if poolRewardsAddress != msg.sender:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = poolRewardsAddress
        mem[mem[64] + 68] = _198
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, poolRewardsAddress, _198
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_208] == bool(mem[_208])
    else:
        if msg.sender == poolRewardsAddress:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, msg.sender, mem[_196]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = poolRewardsAddress
            mem[mem[64] + 68] = _198
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, _198
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_210] == bool(mem[_210])
}

function sub_05846617(?) payable {
    mem[96] = 0xd381a2800000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.tokensByOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _197 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _197
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if not mem[_202]:
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_210] != stor19:
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_224]
                if mem[_224] < 1:
                    revert with 0, 17
                if mem[_224] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_224]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_232]:
                        revert with 0, 17
                    if block.timestamp - mem[_232] > stor40[_226]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _238 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _238
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_244] != stor19:
                            _252 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _252
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_264] < 1:
                                revert with 0, 17
                            if mem[_264] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_264]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _276 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _276
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _276, block.timestamp
                        else:
                            _254 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _254
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_265] < 1:
                                revert with 0, 17
                            if mem[_265] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_265]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _278 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _278
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _278, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _227 = mem[_225]
                if mem[_225] < 1:
                    revert with 0, 17
                if mem[_225] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_225]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _233 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_233]:
                        revert with 0, 17
                    if block.timestamp - mem[_233] > stor35[_227]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _240 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _240
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_245] != stor19:
                            _256 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_266] < 1:
                                revert with 0, 17
                            if mem[_266] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_266]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _280 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _280
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _280, block.timestamp
                        else:
                            _258 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _258
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_267] < 1:
                                revert with 0, 17
                            if mem[_267] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_267]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _282 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _282
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _282, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = tokenAddress
    mem[mem[64] + 36] = 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xf88e1202 with:
            gas gas_remaining wei
           args tokenAddress, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_203]
    if poolRewardsAddress != msg.sender:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = poolRewardsAddress
        mem[mem[64] + 68] = _205
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, poolRewardsAddress, _205
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_215] == bool(mem[_215])
    else:
        if msg.sender == poolRewardsAddress:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, msg.sender, mem[_203]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = poolRewardsAddress
            mem[mem[64] + 68] = _205
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, _205
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == bool(mem[_217])
}

function sub_2bfd9af2(?) payable {
    mem[96] = 0xd1b4581b00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = stor19
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xd1b4581b with:
            gas gas_remaining wei
           args msg.sender, stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _197 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _197
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if not mem[_202]:
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_210] != stor19:
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_224]
                if mem[_224] < 1:
                    revert with 0, 17
                if mem[_224] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_224]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_232]:
                        revert with 0, 17
                    if block.timestamp - mem[_232] > stor40[_226]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _238 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _238
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_244] != stor19:
                            _252 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _252
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_264] < 1:
                                revert with 0, 17
                            if mem[_264] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_264]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _276 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _276
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _276, block.timestamp
                        else:
                            _254 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _254
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_265] < 1:
                                revert with 0, 17
                            if mem[_265] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_265]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _278 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _278
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _278, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _227 = mem[_225]
                if mem[_225] < 1:
                    revert with 0, 17
                if mem[_225] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_225]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _233 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_233]:
                        revert with 0, 17
                    if block.timestamp - mem[_233] > stor35[_227]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _240 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _240
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_245] != stor19:
                            _256 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_266] < 1:
                                revert with 0, 17
                            if mem[_266] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_266]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _280 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _280
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _280, block.timestamp
                        else:
                            _258 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _258
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_267] < 1:
                                revert with 0, 17
                            if mem[_267] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_267]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _282 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _282
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _282, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = tokenAddress
    mem[mem[64] + 36] = 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xf88e1202 with:
            gas gas_remaining wei
           args tokenAddress, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_203]
    if poolRewardsAddress != msg.sender:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = poolRewardsAddress
        mem[mem[64] + 68] = _205
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, poolRewardsAddress, _205
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_215] == bool(mem[_215])
    else:
        if msg.sender == poolRewardsAddress:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, msg.sender, mem[_203]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = poolRewardsAddress
            mem[mem[64] + 68] = _205
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, _205
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == bool(mem[_217])
}

function sub_53a2b643(?) payable {
    mem[96] = 0xd1b4581b00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = stor18
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xd1b4581b with:
            gas gas_remaining wei
           args msg.sender, stor18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _197 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _197
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if not mem[_202]:
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_210] != stor19:
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_224]
                if mem[_224] < 1:
                    revert with 0, 17
                if mem[_224] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_224]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_232]:
                        revert with 0, 17
                    if block.timestamp - mem[_232] > stor40[_226]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _238 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _238
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_244] != stor19:
                            _252 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _252
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_264] < 1:
                                revert with 0, 17
                            if mem[_264] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_264]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _276 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _276
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _276, block.timestamp
                        else:
                            _254 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _254
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_265] < 1:
                                revert with 0, 17
                            if mem[_265] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_265]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _278 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _278
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _278, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _227 = mem[_225]
                if mem[_225] < 1:
                    revert with 0, 17
                if mem[_225] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_225]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _233 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_233]:
                        revert with 0, 17
                    if block.timestamp - mem[_233] > stor35[_227]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _240 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _240
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_245] != stor19:
                            _256 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_266] < 1:
                                revert with 0, 17
                            if mem[_266] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_266]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _280 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _280
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _280, block.timestamp
                        else:
                            _258 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _258
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_267] < 1:
                                revert with 0, 17
                            if mem[_267] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_267]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _282 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _282
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _282, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = tokenAddress
    mem[mem[64] + 36] = 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xf88e1202 with:
            gas gas_remaining wei
           args tokenAddress, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_203]
    if poolRewardsAddress != msg.sender:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = poolRewardsAddress
        mem[mem[64] + 68] = _205
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, poolRewardsAddress, _205
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_215] == bool(mem[_215])
    else:
        if msg.sender == poolRewardsAddress:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, msg.sender, mem[_203]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = poolRewardsAddress
            mem[mem[64] + 68] = _205
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, _205
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == bool(mem[_217])
}

function sub_40b8948d(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xd1b4581b00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(sub_e8fda042Address)
    staticcall sub_e8fda042Address.0xd1b4581b with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _197 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _197
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if not mem[_202]:
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _197
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_210] != stor19:
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_224]
                if mem[_224] < 1:
                    revert with 0, 17
                if mem[_224] - 1 >= 5:
                    revert with 0, 50
                if stor40[mem[_224]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_232]:
                        revert with 0, 17
                    if block.timestamp - mem[_232] > stor40[_226]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _238 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _238
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_244] != stor19:
                            _252 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _252
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_264] < 1:
                                revert with 0, 17
                            if mem[_264] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_264]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _276 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _276
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _276, block.timestamp
                        else:
                            _254 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _254
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _265 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_265] < 1:
                                revert with 0, 17
                            if mem[_265] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_265]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _278 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _278
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _278, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _227 = mem[_225]
                if mem[_225] < 1:
                    revert with 0, 17
                if mem[_225] - 1 >= 5:
                    revert with 0, 50
                if stor35[mem[_225]]:
                    mem[mem[64] + 4] = _197
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _197
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _233 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_233]:
                        revert with 0, 17
                    if block.timestamp - mem[_233] > stor35[_227]:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _240 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xdd1d130c with:
                                gas gas_remaining wei
                               args _240
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[_245] != stor19:
                            _256 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_266] < 1:
                                revert with 0, 17
                            if mem[_266] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor30[mem[_266]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _280 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _280
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _280, block.timestamp
                        else:
                            _258 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require ext_code.size(sub_e8fda042Address)
                            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _258
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_267] < 1:
                                revert with 0, 17
                            if mem[_267] - 1 >= 5:
                                revert with 0, 50
                            if 0 > !stor25[mem[_267]]:
                                revert with 0, 17
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _282 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x2cbc91cf00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _282
                            mem[mem[64] + 36] = block.timestamp
                            require ext_code.size(sub_e8fda042Address)
                            call sub_e8fda042Address.0x2cbc91cf with:
                                 gas gas_remaining wei
                                args _282, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = tokenAddress
    mem[mem[64] + 36] = 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xf88e1202 with:
            gas gas_remaining wei
           args tokenAddress, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_203]
    if poolRewardsAddress != msg.sender:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = poolRewardsAddress
        mem[mem[64] + 68] = _205
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, poolRewardsAddress, _205
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_215] == bool(mem[_215])
    else:
        if msg.sender == poolRewardsAddress:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args tokenAddress, msg.sender, mem[_203]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = poolRewardsAddress
            mem[mem[64] + 68] = _205
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, poolRewardsAddress, _205
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == bool(mem[_217])
}

function sub_4dd392c6(?) payable {
    require calldata.size - 4 >= 32
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
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _327 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _327
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                    gas gas_remaining wei
                   args _327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_335] != stor19:
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == bool(mem[_374])
                if mem[_374]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = _327
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xdd1d130c with:
                        gas gas_remaining wei
                       args _327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = _327
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                        gas gas_remaining wei
                       args _327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_390] != stor19:
                    _416 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _422 = mem[_416]
                    if mem[_416] < 1:
                        revert with 0, 17
                    if mem[_416] - 1 >= 5:
                        revert with 0, 50
                    if not stor40[mem[_416]]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = _327
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_452]:
                        revert with 0, 17
                    if block.timestamp - mem[_452] <= stor40[_422]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _423 = mem[_417]
                    if mem[_417] < 1:
                        revert with 0, 17
                    if mem[_417] - 1 >= 5:
                        revert with 0, 50
                    if not stor35[mem[_417]]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = _327
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_453]:
                        revert with 0, 17
                    if block.timestamp - mem[_453] <= stor35[_423]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
            else:
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_375] == bool(mem[_375])
                if not mem[_375]:
                    mem[mem[64] + 4] = _327
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                            gas gas_remaining wei
                           args _327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _392 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_392] == bool(mem[_392])
                    if mem[_392]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = _327
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xdd1d130c with:
                            gas gas_remaining wei
                           args _327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = _327
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                            gas gas_remaining wei
                           args _327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_420] != stor19:
                        _436 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _440 = mem[_436]
                        if mem[_436] < 1:
                            revert with 0, 17
                        if mem[_436] - 1 >= 5:
                            revert with 0, 50
                        if not stor40[mem[_436]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[mem[64] + 4] = _327
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _327
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_468]:
                            revert with 0, 17
                        if block.timestamp - mem[_468] <= stor40[_440]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        _437 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _441 = mem[_437]
                        if mem[_437] < 1:
                            revert with 0, 17
                        if mem[_437] - 1 >= 5:
                            revert with 0, 50
                        if not stor35[mem[_437]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[mem[64] + 4] = _327
                        require ext_code.size(sub_e8fda042Address)
                        staticcall sub_e8fda042Address.0xcb641de1 with:
                                gas gas_remaining wei
                               args _327
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp < mem[_469]:
                            revert with 0, 17
                        if block.timestamp - mem[_469] <= stor35[_441]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
            if idx >= mem[96]:
                revert with 0, 50
            if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 128]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _326 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                if t >= mem[_326]:
                    revert with 0, 50
                mem[(32 * t) + _326 + 32] = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            mem[mem[64]] = 32
            _516 = mem[_326]
            mem[mem[64] + 32] = mem[_326]
            mem[mem[64] + 64 len 32 * _516] = mem[_326 + 32 len 32 * _516]
            t = _516
            return 32, mem[mem[64] + 32 len (32 * _516) + 32]
        mem[_326 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
        t = 0
        while t < s:
            if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if t >= mem[_326]:
                revert with 0, 50
            mem[(32 * t) + _326 + 32] = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        mem[mem[64]] = 32
        _517 = mem[_326]
        mem[mem[64] + 32] = mem[_326]
        mem[mem[64] + 64 len 32 * _517] = mem[_326 + 32 len 32 * _517]
        t = _517
        return 32, mem[mem[64] + 32 len (32 * _517) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _329 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.0xdd1d130c with:
                gas gas_remaining wei
               args _329
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = _329
        require ext_code.size(sub_e8fda042Address)
        staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                gas gas_remaining wei
               args _329
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_337] != stor19:
            _376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_376] == bool(mem[_376])
            if mem[_376]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = _329
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.0xdd1d130c with:
                    gas gas_remaining wei
                   args _329
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = _329
            require ext_code.size(sub_e8fda042Address)
            staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                    gas gas_remaining wei
                   args _329
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_391] != stor19:
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _424 = mem[_418]
                if mem[_418] < 1:
                    revert with 0, 17
                if mem[_418] - 1 >= 5:
                    revert with 0, 50
                if not stor40[mem[_418]]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = _329
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xcb641de1 with:
                        gas gas_remaining wei
                       args _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp < mem[_454]:
                    revert with 0, 17
                if block.timestamp - mem[_454] <= stor40[_424]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            else:
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _425 = mem[_419]
                if mem[_419] < 1:
                    revert with 0, 17
                if mem[_419] - 1 >= 5:
                    revert with 0, 50
                if not stor35[mem[_419]]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = _329
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xcb641de1 with:
                        gas gas_remaining wei
                       args _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp < mem[_455]:
                    revert with 0, 17
                if block.timestamp - mem[_455] <= stor35[_425]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
        else:
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_377] == bool(mem[_377])
            if not mem[_377]:
                mem[mem[64] + 4] = _329
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.isDead(uint256 arg1) with:
                        gas gas_remaining wei
                       args _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_394] == bool(mem[_394])
                if mem[_394]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = _329
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.0xdd1d130c with:
                        gas gas_remaining wei
                       args _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = _329
                require ext_code.size(sub_e8fda042Address)
                staticcall sub_e8fda042Address.getLevel(uint256 arg1) with:
                        gas gas_remaining wei
                       args _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_421] != stor19:
                    _438 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _442 = mem[_438]
                    if mem[_438] < 1:
                        revert with 0, 17
                    if mem[_438] - 1 >= 5:
                        revert with 0, 50
                    if not stor40[mem[_438]]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = _329
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _329
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_470]:
                        revert with 0, 17
                    if block.timestamp - mem[_470] <= stor40[_442]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    _439 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _443 = mem[_439]
                    if mem[_439] < 1:
                        revert with 0, 17
                    if mem[_439] - 1 >= 5:
                        revert with 0, 50
                    if not stor35[mem[_439]]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64] + 4] = _329
                    require ext_code.size(sub_e8fda042Address)
                    staticcall sub_e8fda042Address.0xcb641de1 with:
                            gas gas_remaining wei
                           args _329
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_471]:
                        revert with 0, 17
                    if block.timestamp - mem[_471] <= stor35[_443]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
        if idx >= mem[96]:
            revert with 0, 50
        if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129] = mem[(32 * idx) + 128]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _328 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if t >= mem[_328]:
                revert with 0, 50
            mem[(32 * t) + _328 + 32] = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        mem[mem[64]] = 32
        _518 = mem[_328]
        mem[mem[64] + 32] = mem[_328]
        mem[mem[64] + 64 len 32 * _518] = mem[_328 + 32 len 32 * _518]
        t = _518
        return 32, mem[mem[64] + 32 len (32 * _518) + 32]
    mem[_328 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if t >= mem[_328]:
            revert with 0, 50
        mem[(32 * t) + _328 + 32] = mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    mem[mem[64]] = 32
    _519 = mem[_328]
    mem[mem[64] + 32] = mem[_328]
    mem[mem[64] + 64 len 32 * _519] = mem[_328 + 32 len 32 * _519]
    t = _519
    return 32, mem[mem[64] + 32 len (32 * _519) + 32]
}



}
